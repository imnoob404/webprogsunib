<%@ include file="header.jsp" %>
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

    <div class="temp">
        <div class="column left">
            <a href="#" class="menu">Foods</a> <br>
            <a href="#" class="menu">Toys</a> <br>
            <a href="#" class="menu">Healthcared</a>
        </div>

    

        <div class="column product">

            <%
                String query = "SELECT COUNT(*) FROM product";
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

                        query = String.format("SELECT * FROM product WHERE ID = %d", i);
                        rs = st.executeQuery(query);
                        rs.next();
                %>

                    

                    <div class="item">
                        <a href="DetailProduct.jsp?ID=<%= rs.getInt("ID") %>">
                            <img src="Assets/Product/<%= i%>.jpg"
                                width="250"
                                height="250">
                            <p>  <%= rs.getString("Name") %> </p>
                            <p>  Rp. <%= rs.getInt("Price") %> </p>
                        </a>
                
                    </div>

                <% } %>   
            </div>

        </div>

    </div>

    <%@ include file="footer.jsp" %>
    

</body>
</html>