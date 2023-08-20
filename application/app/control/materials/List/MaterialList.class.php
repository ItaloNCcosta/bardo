<?php

use Adianti\Base\TStandardList;
use Adianti\Control\TAction;
use Adianti\Database\TTransaction;
use Adianti\Registry\TSession;
use Adianti\Widget\Base\TScript;
use Adianti\Widget\Container\TPanelGroup;
use Adianti\Widget\Container\TVBox;
use Adianti\Widget\Datagrid\TDataGrid;
use Adianti\Widget\Datagrid\TDataGridAction;
use Adianti\Widget\Datagrid\TDataGridColumn;
use Adianti\Widget\Datagrid\TPageNavigation;
use Adianti\Widget\Form\TLabel;
use Adianti\Widget\Util\TXMLBreadCrumb;
use Adianti\Widget\Wrapper\TDBCombo;
use Adianti\Wrapper\BootstrapDatagridWrapper;
use Adianti\Wrapper\BootstrapFormBuilder;

class MaterialList extends TStandardList
{

  protected $form;     // FORMULÁRIO DE REGISTRO
  protected $subform;     // FORMULÁRIO DE REGISTRO
  protected $datagrid; //  LISTAGEM
  protected $pageNavigation;
  protected $formgrid;
  protected $deleteButton;
  protected $transformCallback;
  private static $formName = 'form_search';
  
  public function __construct()
  {
    TStandardList::include_css('app/resources/styles.css');
    parent::__construct();

    parent::setDatabase('database');            // DEFINE O BANCO DE DADOS
    parent::setActiveRecord('Materials');   // DEFINE O REGISTRO ATIVO
    parent::setDefaultOrder('id', 'desc');         //  DEFINE A ORDEM PADRÃO
    parent::addFilterField('description', '=', 'description'); // CAMPO DE FILTRO, OPERADOR, CAMPO DE FORMULÁRIO

    // CRIA O FORMULÁRIO

    $this->form = new BootstrapFormBuilder('form_search');
    $this->form->setFormTitle('Materiais');
    
    $this->subform = new BootstrapFormBuilder('form_search');
    TTransaction::open('database');
    $userSession = TSession::getValue('userid');
    $isAdmin = SystemUserGroup::where('system_group_id', '=', 1)->load();
    TTransaction::close();

    // CRIE OS CAMPOS DO FORMULÁRIO
    $description = new TDBCombo('description', 'database', 'Materials', 'description', 'description');
    $description->enableSearch();
    $description->setSize('50%');
    $description->setTip('Digite a descrição do item desejado');

    // ADICIONE OS CAMPOS

    $this->form->addFields([new TLabel('Descrição')], [$description]);

    // MANTENHA O FORMULÁRIO PREENCHIDO DURANTE A NAVEGAÇÃO COM OS DADOS DA SESSÃO
    $this->form->setData(TSession::getValue('cadastro_filter_data'));

    // ADICIONE AS AÇÕES DO FORMULÁRIO DE PESQUISA
    $btn = $this->form->addAction('Buscar', new TAction(array($this, 'onSearch')), 'fa:search white');
    $btn->style = 'background-color:#2c7097; color:white; border-radius: 0.5rem;';
    if ($userSession == $isAdmin[0]->system_user_id) {
      $btn = $this->form->addAction("Cadastrar material", new TAction(["MaterialRecordForm", "onEdit"]), "fa:plus-circle white");
      $btn->style = 'background-color:#218231; color:white; border-radius: 0.5rem;';
    } else {
    }

    // CRIA UMA GRADE DE DADOS
    $this->datagrid = new BootstrapDatagridWrapper(new TDataGrid);
    $this->datagrid->datatable = 'true';
    $this->datagrid->style = 'width: 100%';
    $this->datagrid->setHeight(320);

    // CRIA AS COLUNAS DA GRADE DE DADOS
    $column_id = new TDataGridColumn('id', 'Codigo do item', 'center', 50);
    $column_description = new TDataGridColumn('description', 'Descrição', 'left');
    $column_value = new TDataGridColumn('value', 'quantidade', 'left');
    $column_created = new TDataGridColumn('created_at', 'Data do cadastro', 'left');

    // ADICIONE AS COLUNAS À GRADE DE DADOS
    $this->datagrid->addColumn($column_id);
    $this->datagrid->addColumn($column_description);
    $this->datagrid->addColumn($column_value);
    $this->datagrid->addColumn($column_created);

    $column_created->setTransformer(array('helpers', 'formatDate'));

    // CRIA AS AÇÕES DA COLUNA DA GRADE DE DADOS
    $order_id = new TAction(array($this, 'onReload'));
    $order_id->setParameter('order', 'id');
    $column_id->setAction($order_id);

    $order_description = new TAction(array($this, 'onReload'));
    $order_description->setParameter('order', 'description');
    $column_description->setAction($order_description);

    $order_value  = new TAction(array($this, 'onReload'));
    $order_value->setParameter('order', 'value');
    $column_value->setAction($order_value);

    $order_update_at  = new TAction(array($this, 'onReload'));
    $order_update_at->setParameter('order', 'updated_at');
    $column_created->setAction($order_update_at);

    // CRIAR AÇÃO EDITAR
    $action_edit = new TDataGridAction(array('MaterialRecordForm', 'onEdit'));
    $action_edit->setButtonClass('btn btn-default');
    $action_edit->setLabel(_t('Edit'));
    $action_edit->setImage('far:edit blue');
    $action_edit->setField('id');
    $this->datagrid->addAction($action_edit);

    $this->form->addHeaderActionLink('Filtros de busca', new TAction(array($this, 'toggleSearch')), 'fa:filter green fa-fw');
    TScript::create('$(\'#' . self::$formName . '\').collapse(\'toggle\');');
    // CRIAR O MODELO DE GRADE DE DADOS
    $this->datagrid->createModel();

    // CRIAR A NAVEGAÇÃO DA PÁGINA
    $this->pageNavigation = new TPageNavigation;
    $this->pageNavigation->enableCounters();
    $this->pageNavigation->setAction(new TAction(array($this, 'onReload')));
    $this->pageNavigation->setWidth($this->datagrid->getWidth());

    $panel = new TPanelGroup();
    $panel->add($this->datagrid);
    $panel->addFooter($this->pageNavigation);

    // recipiente de caixa vertical
    $container = new TVBox;
    $container->style = 'width: 100%';
    $container->add(new TXMLBreadCrumb('menu.xml', __CLASS__));
    $container->add($this->form);
    $container->add($panel);


    parent::add($container);
  }
  /**
   * Funçao para ocultar o campo de busca
   */
  static function toggleSearch()
  {
    // também pode apagar esses blocos if/else se não quiser usar a "memória" de estado do form
    if (TSession::getValue('toggleSearch_' . self::$formName) == 1) {
      TSession::setValue('toggleSearch_' . self::$formName, 0);
    } else {
      TSession::setValue('toggleSearch_' . self::$formName, 1);
    }

    // esta linha é a responsável por abrir/fechar o form
    TScript::create('$(\'#' . self::$formName . '\').collapse(\'toggle\');');
    // caso retire a função de "memória", copie a linha acima para dentro do onSearch,
    // para que o form "permaneça aberto" (reabra automaticamente) ao realizar buscas
  }
}
