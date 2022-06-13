<%@ include file="header.jsp" %>
<%@include file="Connect/connect.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/profile.css">
    <title>Profile</title>
</head>
<body>

    <%
        String username = session.getAttribute("user_username");
        String query = String.format("SELECT * FROM account WHERE username = '%s'", username);
        ResultSet rs = st.executeQuery(query);
        rs.next();
    
    %>
    <div class="profile">

        <div class="img_avatar">
            <img src="Assets/Profile_Pic/<%= rs.getString("image")%>.jpg" id="getImage">
            <br>
            <form action="Controller/ProfilePicHandler.jsp?">
                <input type="hidden" name="name" value="<%=rs.getString("username")%>">
                <input type="submit" value="Change Image">
            </form>
            
        </div>

        <div class="profile_user">
            <label for="username"><b>Username</b></label>
            <p><%=rs.getString("username")%></p>
            <label for="phone"><b>Phone Number</b></label>
            <p><%=rs.getString("phone")%></p>
            <label for="email"><b>Email</b></label>
            <p><%=rs.getString("email")%></p>
            <label for="dob"><b>Date of Birth</b></label>
            <p><%=rs.getString("dob")%></p>
        </div>


        <form action="ChangePass.jsp" method="get">
            <input type="hidden" name="name" value="<%=rs.getString("username")%>">
            <input type="submit" value="Change Password">
        </form>


        <a href="logout.jsp">Logout</a>
    </div>
</body>

<%@ include file="footer.jsp" %>
</html>