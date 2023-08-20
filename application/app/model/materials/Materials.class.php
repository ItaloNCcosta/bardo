<?php

use Adianti\Database\TRecord;

class Materials extends TRecord
{
    const TABLENAME = 'materials';
    const PRIMARYKEY = 'id';
    const IDPOLICY = 'max'; // {max, serial}
    
    CONST CREATEDAT = 'created_at';
    CONST UPDATEDAT = 'updated_at';
    CONST DELETEDAT = 'deleted_at';

    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('id');
        parent::addAttribute('description');
        parent::addAttribute('value');
        parent::addAttribute('user_id');
        parent::addAttribute('created_at');
    }
    
}
