{{ include('header.php', {title: 'Mettre à jour la recette'})}}
<div class="container">
    <div class="box form-box">
        <header>Recette de Cuisine</header>
        <form action="{{path}}recette/update" method="post" entype="multipart/form-data">
        <!-- <form class="form_article" action="{{path}}recette/update" method="post"> -->
            <div class="field input">
                <input type="hidden" name="id" value="{{recette.id}}">
                <label>Nom
                    <input type="text" name="nom" value="{{recette.nom}}">
                </label>
            </div>
            <div class="field input">
                <label>Description</label>
                <textarea name="description">
                    {{recette.description}}
                </textarea>
            </div>
            <div class="field input">
                <label>Temps de préparation
                    <input type="number" name="temps_preparation" value="{{recette.temps_preparation}}">
                </label>
            </div>
            <div class="field input">
                <label>Temps de cuisson
                    <input type="number" name="temps_cuisson" value="{{recette.temps_cuisson}}">
                </label>
            </div>
        
           <div class="field input">
                <label>Image
                    <input type="file" name="image" value="{{recette.image}}">
                </label>
          </div>
        
            <label>Categorie
                <select name="Categorie_id">
                    {% for categorie in categories %}
                    <option value="{{categorie.id}}"  {% if  categorie.id == recette.Categorie_id %} selected {% endif %}>{{ categorie.categorie}}</option>
                    {% endfor%}
                </select>
            </label>
  
            <div class="field input"> 
                <input type="submit" class="btn" value="Modifier">
            </div>
        </form>
        <form action="{{path}}recette/destroy" method="post">
            <div class="field"> 
                <input type="hidden" name="id" value="{{recette.id}}">
                <input type="submit" class="btn" value="Effacer">
            </div>
        </form>
    </body>
</html>
