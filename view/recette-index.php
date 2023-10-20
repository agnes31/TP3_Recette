{{ include('header.php', {title: 'Liste de recette'})}}
    <h2>Liste de recette</h2>
    {% if session.privilege == 1 %} 
        <a href="{{path}}recette/create" class="bouton1">Ajouter une recette</a> 
     {% endif %}
    <table class="styled-table">
        <tr>
            <th>Nom</th>
            <th>Description</th>    
            <th>Temps de préparation</th>
            <th>Temps de cuisson</th>
            <th>Image</th>
            <th>Catégorie</th>    
        </tr>
      
        {% for recette in recettes %}
            <tr>
                <td><a href='{{path}}recette/show/{{recette.id}}'>{{ recette.nom }}</a></td>
                <td>{{ recette.description }}</td>
                <td>{{ recette.temps_preparation }}</td>
                <td>{{ recette.temps_cuisson }}</td>
                <td><img src="assets/image-recette/{{recette.image}}" alt="" width="50"></td>
                <td>{{ recette.categorie}}</td>            
            </tr>

        {% endfor %}

    </table>
</body>
</html>