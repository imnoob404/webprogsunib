<%@ include file="header.jsp" %>
<%@include file="Connect/connect.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/DetailProduct.css">

    <title>Nama Produk</title>

</head>
<body>
    <div class="Detail_Product">
        

        <form action="CartHandler.jsp" name="cart">

            <%
                String i = request.getParameter("ID");
                ResultSet rs = null;

                String query = String.format("SELECT * FROM product WHERE ID = %s", i);
                rs = st.executeQuery(query);
                rs.next();
                
            %>

            <img src="Assets/Product/<%= rs.getInt("id")%>.jpg"
                width="250"
                height="250"
                class="Detail_Image">

            <div class="Text_Product">
                <h1> <%= rs.getString("name") %> </h1>
                <h2> Rp. <%= rs.getString("price") %>  </h2>
                <button type="button" onclick="minus()">-</button>
                
                <input type="hidden" name="ID" value="<%= Integer.parseInt(request.getParameter("ID")) %>" >

                <input type="number" min="1" value="1" id="quantity" name="quantity">
                <button type="button" onclick="plus()">+</button>
                <br><br><br>

                <input type="submit" value="Add To Cart">

                

            </div>

        </form>


        <div class="Description">
            <p><%= rs.getString("description") %>
            </p>
            
        </div>  

    </div>

    <script>
        function minus() {
            document.getElementById('quantity').stepDown();
        }

        function plus() {
            document.getElementById('quantity').stepUp();
        }

    </script>

    <%@ include file="footer.jsp" %>

    
    

</body>
</html>