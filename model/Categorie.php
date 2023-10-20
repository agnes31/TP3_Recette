<?php
require_once('Crud.php');

class Categorie extends Crud{

    public $table = 'Categorie';
    public $primaryKey = 'id';

    public $fillable = [
        'id',
        'categorie',
        'description',
    ];
}

?>