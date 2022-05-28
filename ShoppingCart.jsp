<%@include file="Connect/connect.jsp"%>

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
    <%
        String query = "SELECT COUNT(*) FROM cart";
        ResultSet count = st.executeQuery(query);

        ResultSet rs= null;
        Integer totalData = 0;
        

        if(count.next()){
            totalData = Integer.parseInt(count.getString(1)); 
        }

    %>
    <form action="Payment.jsp">
        <table class="table">
            <tr>
                <th>Produk</th>
                <th>Nama</th>
                <th>Kuantitas</th>
                <th>Total</th>

            </tr>
            <% for(int i=1 ; i<=totalData ; i++){ 
                    query = String.format("SELECT * FROM cart WHERE ID = %s", i);

                    rs = st.executeQuery(query);
                    rs.next();
            %>

            <tr>
                <td>
                    <img src="Assets/Tokopedia - Fantasy Pet/Toy/Ball toy/WechatIMG388.jpeg"
                            width="150"
                            height="150">        
                </td>
                <td> <%= rs.getString("Nama") %> </td>
                <td> <%= rs.getInt("Kuantitas") %> </td>
                <td> Rp. <%= rs.getInt("Harga") %> </td>
            </tr>

            <% 
                Integer total = 0;
                total+=rs.getInt("Harga");
                } 
            %>
            
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td>Rp. <%out.println(total);%> </td>
            </tr>

        </table>

        <input type="submit" value="CheckOut" class="button">
    </form>

</body>
</html>