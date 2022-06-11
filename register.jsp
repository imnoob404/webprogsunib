<%@include file="Connect/connect.jsp" %>
<%@ include file="header.jsp" %>

    <link rel="stylesheet" property="stylesheet" href="CSS/register.css">
    <div class="container">
        <div class="register">

            <h1 class="welcome">Welcome to Fantasy Pet</h1>
    
            <div class="logo">
                <img src="Assets/Logo.png" class="img_logo">
            </div>
        
            <div class="form">
                <div class="form_register">    
                    <p>Register</p>
                    <form method="post" action="login.jsp">
                        <input type="text" name="username" placeholder="Username" required> <br>
                        <br>
                        <input type="password" name="password" placeholder="Password" required> <br>
                        <br>
                        <input type="email" name="email" placeholder="Email" required> <br>
                        <br>
                        <input type="number" name="phone" placeholder="Phone" required> <br>
                        <br>
                        <input type="date" name="dob" placeholder="DOB" required> <br>
                        <br>
                        <input type="submit" name="simpan" value="Register">
            
                    </form>
                </div>
                
            </div>
    
        </div>
    </div>

    <script>
        let username = document.getElementsByName("username");
        let password = document.getElementsByName("password");
        let email = document.getElementsByName("email");
        let phone = document.getElementsByName("phone");
        let date = document.getElementsByName("dob");
    </script>

    <% 
        //String query = String.format("INSERT INTO user (Username, Password, Phone, Email, DOB) VALUES (%s, %s, %s, %s, %s)", username, password, email, phone, date);
        //st.executeUpdate(query);
    %>

</body>
</html>