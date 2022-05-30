<%@include file="Connect/connect.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/Product.css">
    
    <title>Product</title>
    
</head>
<body>

    <div class="product">

        <%
            String query = "SELECT COUNT(*) FROM produk";
            ResultSet count = st.executeQuery(query);

            ResultSet rs= null;
            Integer totalData = 0;

            if(count.next()){
                totalData = Integer.parseInt(count.getString(1)); 
            }
        
        %>
    

        <div class="row">
            <%
                for(int i = 1 ; i<=totalData ; i++){ 

                    query = String.format("SELECT * FROM produk WHERE ID = %d", i);
                    rs = st.executeQuery(query);
                    rs.next();
            %>

                

                <div class="item">
                    <a href="DetailProduct.jsp?ID=<%= rs.getInt("ID") %>">
                        <img src="Assets/<%= i%>.jpg"
                            width="250"
                            height="250">
                        <p>  <%= rs.getString("Nama") %> </p>
                        <p>  Rp. <%= rs.getInt("Harga") %> </p>
                    </a>
            
                </div>

            <% } %>   
        </div>

    </div>
    

</body>
</html>