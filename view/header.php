<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ title }}</title>
    <link rel="stylesheet" href="{{path}}css/style.css">
</head>

<body>
    <header>    
        <nav role="menubar" id="navigation">
        {% if guest %}    
            <a href="{{path}}login" role="menuitem">Connexion</a> 
        {% else %}
            <a href="{{path}}home" role="menuitem">Accueil</a> 
            <a href="{{path}}recette" role="menuitem">Recettes</a>  
            <a href="{{path}}home-index" class="logo" role="menuitem"><img class="medaillon" src="{{path}}images/vegan-vector-logo-round-eco-green-food-sign-leaves-tag-cafe-restaurants-packagingdesign-155180007.jpg" alt="vedge_logo"></a>
            <a href="{{path}}login/logout">Déconnexion</a>
            <span class="username">Bienvenue {{ session.user_nom }}</span>
        {% endif %}
        </nav>
    </header>
   

    
