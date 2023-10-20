{{ include('header.php', {title: 'Recette'})}}

<div class="container">
    <div class="box form-box"> 
        <p><strong>Nom : </strong>{{ recette.nom }}</p>
        <p><strong>Description : </strong>{{ recette.description }}</p>
        <p><strong>Temps_preparation : </strong>{{ recette.temps_preparation }}</p>
        <p><strong>Temps_cuisson : </strong>{{ recette.temps_cuisson }}</p>
        <img src="../../assets/image-recette/{{recette.image}}" alt="">
        <p><strong>Categorie : </strong>{{ categorie.categorie }}</p>
        <a  href="{{path}}recette/edit/{{recette.id}}" class="bouton1">Mise à jour</a>   
    </div>
</div>  
</body>
</html>