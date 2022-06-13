<%@ include file="header.jsp" %>
<%@include file="Connect/connect.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/EditProduct.css">
    <title>Edit Product</title>
</head>
<body>

    <div class="dummy">
    </div>

    <h1 style="text-align: center; text-decoration: underline;">Edit Product</h1> <br>
    
    <form action="EditHandler.jsp">
    <%
        Integer id = Integer.parseInt(request.getParameter("id"));

        String query = String.format("SELECT * fROM product WHERE id = %d", id);
        ResultSet rs = st.executeQuery(query);
        rs.next();
    %>
        <input type="hidden" name="oldname" value="<%=rs.getString("name")%>">
        <Table class="Table">
            <tr>
                <td>Name</td>
                <td><input type="text" name="Name" Value="<%=rs.getString("name")%>"></td>
            </tr>

            <tr>
                <td>Price</td>
                <td><input type="number" name="Price" Value="<%=rs.getInt("price")%>"></td>
            </tr>
  
            <tr>
                <td>Category</td>
                <td>
                    <select name="Category">
                        <option value="Toy / Utility">Toy / Utility</option>
                        <option value="Food">Food</option>
                        <option value="Healthcare">Healthcare</option>
    
                    </select>
                </td>
            </tr>


            <tr>
                <td>Description</td>
                <td><textarea name="Description" cols="22" rows="8"><%=rs.getString("description")%></textarea></td>
            </tr>

            

            <tr>
                <td style="text-align: center;" colspan="2"><input type="submit" value="Edit Product"></td>
            </tr>

        </Table>
    </form>
            
<%@ include file="footer.jsp" %>
</body>
</html>