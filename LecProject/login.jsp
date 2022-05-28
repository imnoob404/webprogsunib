<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/login.css">
    <title>Login</title>
</head>
<body>

    <div class="login">

        <h1 class="welcome">Welcome to Fantasy Pet</h1>

        <div class="logo">
            <img src="asset/Logo.png" class="img_logo">
        </div>
    
        <div class="form">
            <div class="form_login">    
                <p>Login</p>
                <br>
                <br>
                <form method="post">
                    <input type="text" name="username" placeholder="Username" required> <br>
                    <br>
                    <br>
                    <input type="password" name="password" placeholder="Password" required> <br>
                    <br>
                    <br>
                    <input type="submit" name="simpan" value="Login">
                    <br>
                    <br>
                    <br>
                    <a href="register.jsp" class="link_register">Ga punya akun? Register dong</a>
        
                </form>
            </div>
            
        </div>

    </div>

    

</body>
</html>