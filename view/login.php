{{ include('header.php', {title: 'Login'})}}


{% if errors is defined %}
    <span class="error">{{ errors|raw }}</span>
{% endif %}
<div class="container">
    <div class="box form-box">
    <header>Login</header>  
    <form action="{{path}}login/auth" method="post">
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
            <input type="submit" class="btn" value="Login">
        </div>
        <div class="links">
            Don't have account? <a href={{path}}user/create>Sign Up Now</a>
        </div>
        </form>
</body>
</html>