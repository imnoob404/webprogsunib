<%@ include file="header.jsp" %>
<%@include file="Connect/connect.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/ChangePass.css">
    <title>Document</title>
</head>
<body>
    <%
        String name = request.getParameter("name");

        String query = String.format("SELECT * FROM account WHERE username = '%s'", name);
        ResultSet rs = st.executeQuery(query);
        rs.next();

        String password = rs.getString("password");
    %>
    <form action="Controller/ChangePassHandler.jsp" method="post" class="form">
        <Table class="Table">
            <tr>
                <td>Old Password</td>
                <td><input type="password" id="oldpass" placeholder="Old Password" value=""></td>
            </tr>

            <tr>
                <td>New Password</td>
                <td><input type="password" id="newpass" name="newpass" placeholder="New Password" value=""></td>
            </tr>

            <tr>
                <td>Confirm Password</td>
                <td><input type="password" id="confirmpass" placeholder="Confirm Password" value=""></td>
            </tr>
            
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>


            <tr>
                <td style="text-align: center;" colspan="2">
                    <input type="hidden" name="name" value="<%=rs.getString("username")%>">
                    <input type="submit" value="Change Password" onclick="return(pass('<%=password%>'))">
                </td>
            </tr>
        </Table>
        
    </form>

    <script>
        function pass(password){
            var oldpass = document.getElementById("oldpass").value
            var newpass = document.getElementById("newpass").value
            var confirmpass = document.getElementById("confirmpass").value
        

            if(password != oldpass){
                alert("Wrong Password")
                return false
            }
            if(newpass != confirmpass){
                alert("password is not the same")
                return false
            }else{
                alert("password successfully changed")
                return true
            }
        }

    </script>

</body>

<%@ include file="footer.jsp" %>
</html>