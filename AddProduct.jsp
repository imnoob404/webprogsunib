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

    <h1 style="text-align: center; text-decoration: underline;">Add New Product</h1> <br>
    <form action="Controller/AddHandler.jsp">
        <Table class="Table">
            <tr>
                <td>Name</td>
                <td><input type="text" name="Name" placeholder="Name"></td>
            </tr>

            <tr>
                <td>Price</td>
                <td><input type="number" name="Price" min="1" placeholder="Price"></td>
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
                <td><textarea name="Description" cols="22" rows="8" placeholder="Description"></textarea></td>
            </tr>

            

            <tr>
                
                    <td style="text-align: center;" colspan="2"><input type="submit" value="Add Product"></td>
                
            </tr>

        </Table>
    </form>   
<%@ include file="footer.jsp" %>
</body>
</html>