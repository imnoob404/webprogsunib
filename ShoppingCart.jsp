<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/Cart.css">

    <title>Cart</title>
</head>
<body>
    
    <div class="Cart">

        <form action="Payment.jsp" name="Payment">
            <table>
                <tr>
                    <th>Produk</th>
                    <th>Nama</th>
                    <th>Kuantitas</th>
                    <th>Total</th>
    
                </tr>
                <% for(int i=0;i<3;i++){ %>
    
                <tr>
                    <td>test</td>
                    <td>test</td>
                    <td>test</td>
                    <td>5</td>
                </tr>
    
                <% } %>
                
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>5</td>
                </tr>
    
            </table>
    
            <input type="submit" value="CheckOut">
        </form>
    </div>

</body>
</html>