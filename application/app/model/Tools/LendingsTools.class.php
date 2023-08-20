<?php

use Adianti\Database\TRecord;

class LendingsTools extends TRecord
{
    const TABLENAME = 'lendings_tools';
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
        parent::addAttribute('user_id');
        parent::addAttribute('admin_id');
        parent::addAttribute('status');
        parent::addAttribute('created_at');
    }
    /**
     * Capturar usuario
     */
    public function get_User()
    {
        // loads the associated object
        if (empty($this->idUser))
            $this->idUser = new SystemUser($this->user_id);

        // returns the associated object
        return $this->idUser;
    }
}
