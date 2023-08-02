<?php

use Adianti\Database\TRecord;

class tools extends TRecord
{
    const TABLENAME = 'tools';
    const PRIMARYKEY = 'id';
    const IDPOLICY = 'max'; // {max, serial}

    const CREATEDAT = 'created_at';
    const UPDATEDAT = 'updated_at';
    const DELETEDAT = 'deleted_at';

    protected $idUser;
    
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('id');
        parent::addAttribute('name');
        parent::addAttribute('value');
        parent::addAttribute('user_id');
        parent::addAttribute('created_at');
    }
    /**
     * Capturar usuario
     */
    public function get_User()
    {
        // loads the associated object
        if (empty($this->idUser))
            $this->idUser = new SystemUser($this->id_user);

        // returns the associated object
        return $this->idUser;
    }
}
