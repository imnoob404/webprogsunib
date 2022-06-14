
<%@ include file="header.jsp" %>
<%@include file="Connect/connect.jsp" %>
    <div class="container containermain">
    <div class="login">
        <link rel="stylesheet" property="stylesheet" href="CSS/login.css">
        <h1 class="welcome">Welcome to Fantasy Pet</h1>

        <div class="logo">
            <img src="Assets/Logo.png" class="img_logo">
        </div>
    
        <div class="form">
            <div class="form_login">    
                <p style="font-size: 24px; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Login</p>
                <br>
                <br>
                <form action="Controller/loginController.jsp" method="post">
                    <input type="text" name="username" placeholder="Username" required> <br>
                    <br>
                    <br>
                    <input type="password" name="password" placeholder="Password" required> <br>
                    <br>
                    <input type="submit" name="login" value="Login" class="button">
                    <br>
                    <br>
                    <a href="register.jsp" class="link_register">Ga punya akun? Register dong</a>
        
                </form>
            </div>
            
        </div>

    </div>
    </div>

<%@ include file="footer.jsp" %>