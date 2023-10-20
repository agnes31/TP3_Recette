{{ include('header.php', {title: 'Ajouter un utilisateur'})}}


{% if errors is defined %}
    <span class="error">{{ errors|raw }}</span>
{% endif %}
<div class="container">
    <div class="box form-box">
        <header>Ajouter un utilisateur</header> 
        <form action="{{path}}user/store" method="post">
            <div class="field input"> 
                <label>Nom
                    <input type="text" name="nom" value="{{data.nom}}">
                </label>
            </div>
            <div class="field input">     
                <label>Username
                    <input type="email" name="username" value="{{data.username}}">
                </label>
            </div>
            <div class="field input"> 
                <label>Password
                    <input type="password" name="password">
                </label>
            </div>
            <div class="field input"> 
                <label>
                    Privilege
                    <select name="privilege_id">
                        <option value=""></option>
                        {% for privilege in privileges %}
                        <option value="{{privilege.id}}" {% if  privilege.id == data.privilege_id %} selected {% endif %}>{{ privilege.privilege}}</option>
                        {% endfor%}
                    </select>             
                </label> 
                </div> 
                <div class="field">   
                    <input type="submit" class="btn" value="Save">
         

                </div>
            </form>
</body>
</html>