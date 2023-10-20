{{ include('header.php', {title: 'Welcome'})}}
{# comments #}
    <main>
        <header>
            <div>
                <h1 class="titre-principale">Bienvenue dans votre site de recette de Cuisine</h1>
                <p>Savourez les meilleurs plats dans le respect total de la nature.</p>
                <a href="{{path}}recette" class="bouton1">Liste des recettes</a>
                {% if session.privilege == 1 %} 
                <a href="{{path}}recette/create" class="bouton1">Ajouter une recette</a> 
                {% endif %}
            </div>
        </header>
    </main>
</body>
</html>