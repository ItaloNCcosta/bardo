<?php

use Adianti\Database\TRecord;

class PivotLendingsTools extends TRecord
{
    const TABLENAME = 'pivot_lendings_tools';
    const PRIMARYKEY = 'id';
    const IDPOLICY = 'max'; // {max, serial}

    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('id');
        parent::addAttribute('lendigns_id');
        parent::addAttribute('tools_id');
        parent::addAttribute('value');
        parent::addAttribute('borrowed_value');

    }
}
