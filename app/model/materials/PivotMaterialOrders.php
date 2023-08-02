<?php

use Adianti\Database\TRecord;

class PivotMaterialOrders extends TRecord
{
    const TABLENAME = 'pivot_material_orders';
    const IDPOLICY = 'max'; // {max, serial}

    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('materials_orders_id');
        parent::addAttribute('material_id');
        parent::addAttribute('values');
        parent::addAttribute('borrouweds_values');
    }
}
