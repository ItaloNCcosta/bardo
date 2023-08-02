<?php

namespace App\Control\Materials\Form;

use Adianti\Base\TStandardForm;
use Adianti\Control\TAction;
use Adianti\Control\TPage;
use Adianti\Core\AdiantiApplicationConfig;
use Adianti\Database\TTransaction;
use Adianti\Registry\TSession;
use Adianti\Validator\TRequiredValidator;
use Adianti\Widget\Dialog\TMessage;
use Adianti\Widget\Form\TEntry;
use Adianti\Widget\Form\THidden;
use Adianti\Widget\Form\TLabel;
use Adianti\Wrapper\BootstrapFormBuilder;

class MaterialRecordForm extends TPage
{
  protected $form; //  FORMULÁRIO

  function __construct()
  {
    TStandardForm::include_css('app/resources/styles.css'); 
    parent::__construct();

    $ini  = AdiantiApplicationConfig::get();

    // CRIA O FORMULÁRIO
    $this->form = new BootstrapFormBuilder('form_material');
    $this->form->setFormTitle('<b>CADASTRO ITENS DEPOSITO</b>');

    // CRIE OS CAMPOS DO FORMULÁRIO
    $id           = new THidden('id');
    $user         = new THidden('user_id');
    $description  = new TEntry('description');
    $value        = new TEntry('value');

    $this->form->addFields(
      [new TLabel(
        '<b>Campos com asterisco (<font color="red">*</font>) são considerados campos obrigatórios</b>'
      )],
    );

    // ADICIONE OS CAMPOS

    $this->form->addFields(
      [new TLabel('Descrição <font color="red">*</font>')],
      [$description],
      [new TLabel('Quantidade <font color="red">*</font>')],
      [$value],
    );

    $this->form->addFields(
      [new TLabel('')],
      [$id],
      [new TLabel('')],
      [$user],
    );

    $description->addValidation(
      'Descrição <font color="red">*</font>',
      new TRequiredValidator
    );
    $description->id = "input-form";

    $value->addValidation(
      'Quantidade <font color="red">*</font>',
      new TRequiredValidator
    );
    $value->id = "input-form";


    $description->setTip('Digite a descrição do item desejado');
    $description->setSize('70%');
    $description->placeholder = 'Descrição do Item';

    $value->setTip('Digite a quantidade do item desejado');
    $value->setSize('70%');
    $value->placeholder = 'Descrição do Item';
    $value->setMask('99999');
    $value->placeholder = '00000';

    // CRIE AS AÇÕES DO FORMULÁRIO
    $btnBack = $this->form->addActionLink(
      _t('Back'),
      new TAction(array('MaterialList', 'onReload')),
      'far:arrow-alt-circle-left white'
    );
    $btnBack->style = 'background-color:gray; color:white; border-radius: 0.5rem;';

    $btnClear = $this->form->addActionLink(
      _t('Clear'),
      new TAction(array($this, 'onEdit')),
      'fa:eraser white'
    );
    $btnClear->style = 'background-color:#c73927; color:white; border-radius: 0.5rem;';

    $btnSave = $this->form->addAction(_t('Save'), new TAction(array($this, 'onSave')), 'far:save');
    $btnSave->style = 'background-color:#218231; color:white; border-radius: 0.5rem;';

    parent::add($this->form);
  }

  public function onEdit($param)
  {
    try {
      if (isset($param['key'])) {
        TTransaction::open('database');
        $material = Materials::find($param['key']);

        $obj = new stdClass();
        $obj->description = $material->description;
        $obj->value = $material->value;

        $this->form->setData($material);
        TTransaction::close();
      }
    } catch (Exception $e) {
      $action = new TAction(array('MaterialList', 'onReload'));
      new TMessage('error', $e->getMessage(), $action);
    }
  }

  public function onSave()
  {
    try {
      $data = $this->form->getData();

      TTransaction::open('database');

      if (isset($data->id)) {
        $material = Materials::find($data->id);
      } else {
        $material = new Materials();
      }

      $material->description = $data->description;
      $material->value = $data->value;
      $material->user_id = TSession::getValue('userid');

      $material->save();

      TTransaction::close();

      $action = new TAction(array('MaterialList', 'onReload'));
      new TMessage('info', 'Salvo com sucesso', $action);
    } catch (Exception $e) {
      new TMessage('error', $e->getMessage());
      TTransaction::rollbackAll();
    }
  }

  public function onClear()
  {
  }
}
