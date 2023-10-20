<?php

RequirePage::model('Recette');
RequirePage::model('Categorie');

class ControllerRecette extends Controller {

    public function __construct(){
        CheckSession::sessionAuth();
    }

    public function index() {   
        $recette = new Recette;
        $select = $recette->selectInnerJoin();

        Twig::render('recette-index.php', ['recettes'=>$select]);
    }

    public function create() { 
        if($_SESSION['privilege']==1) { 
            $categorie = new Categorie;
            $selectCategorie = $categorie->select();

            Twig::render('recette-create.php', ['categories'=>$selectCategorie]);
        } else {
            RequirePage::redirect('recette');
        }
    }

    public function store(){
        if ($_SERVER["REQUEST_METHOD"] != "POST"){
            RequirePage::redirect('recette/create');
            exit();
        }

        RequirePage::library('Validation');
        extract($_POST);
        $val = new Validation();
        $val->name('nom')->value($nom)->max(30)->min(2)->pattern('alpha');
        $val->name('description')->value($description)->max(500);
        $val->name('temps_preparation')->value($temps_preparation)->max(300);
        $val->name('temps_cuisson')->value($temps_cuisson)->max(120);
        $val->name('image')->value($image)->max(2000)->pattern('file');

        if($val->isSuccess()) {
            $recette = new Recette;
            $insert = $recette->insert($_POST);

            RequirePage::redirect('recette');
        } else {
            $errors = $val->displayErrors();
            echo $errors;

            $categorie = new Categorie;
            $selectCategorie = $categorie->select();
            Twig::render('recette-create.php', ['categories'=>$selectCategorie, 'errors'=>$errors, 'data'=>$_POST]);
        }
    }

    public function show($id) {
        $recette = new Recette;
        $selectId = $recette->selectId($id);
        // $select = $recette->selectInnerJoin();


        $categorie = new Categorie;
        $selectCategorie = $categorie->selectId($selectId['Categorie_id']);

        $categorie= $selectCategorie['categorie'];
        Twig::render('recette-show.php', ['recette' => $selectId, 'categorie' => $selectCategorie]);
    }

    public function edit($id) {
        if($_SESSION['privilege']==1) {
            $recette = new Recette;
            $selectId = $recette->selectId($id);
            $categorie = new Categorie;
            $selectCategorie = $categorie->select();

            Twig::render('recette-edit.php', ['recette' => $selectId, 'categories' => $selectCategorie]);
        } else {
            RequirePage::redirect('recette');
        }
    }

    public function update() {
        $recette = new Recette;
        $update = $recette->update($_POST);

        // var_dump($recette);
        // die();

        if($update) {
            RequirePage::redirect('recette');
        } else {
            print_r($update);
        }
    }

    public function destroy() {
        $recette = new Recette;
        $delete = $recette->delete($_POST['id']);

        if($delete) {
            RequirePage::redirect('recette');
        } else {
            print_r($delete);
        }
    }
}

?>