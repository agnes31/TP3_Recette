<?php
require_once('Crud.php');

class Recette extends Crud {

    public $table = 'Recette';
    public $primaryKey = 'id';

    public $fillable = [
        'id',
        'nom',
        'description',
        'temps_preparation',
        'temps_cuisson',
        'image',
        'Categorie_id',
    ];

    public function selectInnerJoin(){

        $sql = "SELECT Recette.id, Recette.nom, Recette.description, Recette.temps_preparation, Recette.temps_cuisson, Recette.image, Categorie.categorie
                FROM Recette
                INNER JOIN Categorie ON Recette.Categorie_id = Categorie.id";

        $stmt = $this->query($sql);
        return $stmt->fetchAll();   
    }
}


?>