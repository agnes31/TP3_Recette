<?php
require_once('Crud.php');

class Log extends Crud {

    public $table = 'Log';
    public $primaryKey = 'id';
    
    public $fillable = [
        'id',
        'ip_address',
        'date_accessed',
        'page_visited',
        'username',
    ];
}

?>