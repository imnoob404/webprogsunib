<%@ include file="header.jsp" %>
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

        ResultSet rs= null, rs2= null;
        Integer totalData = 0;
        

        if(count.next()){
            totalData = Integer.parseInt(count.getString(1)); 
        }

    %>
   
    <table class="table">
        <tr>
            <th>Produk</th>
            <th>name</th>
            <th>quantity</th>
            <th>Total</th>
            <th>Action</th>
            
        </tr>
        <% 
            Integer total = 0;

            for(int i=1 ; i<=totalData ; i++){ 
                
                query = String.format("SELECT * FROM cart WHERE id = %d", i);
                
                rs = st.executeQuery(query);
                rs.next();

                String name = rs.getString("name");
                String query2 = String.format("SELECT * FROM product WHERE name = '%s'", name);
                rs2 = st.executeQuery(query2);
                rs2.next();
            
        %>

        <form action="CartDeleteHandler.jsp">
            <tr>
                <td>
                    <img src="Assets/Product/<%= rs2.getInt("id")%>.jpg"
                            width="150"
                            height="150">        
                </td>
                <%
                    rs = st.executeQuery(query);
                    rs.next();
                %>
                <td> 
                    <input type="text" name="name" readonly style="border: none;" value="<%= rs.getString("name") %>">
                </td>
                <td> 
                    <input type="number" id="qty<%=i%>" onchange="PriceHandler(<%=i%>)" style="width: 50px;" min="1" value="<%= rs.getInt("quantity") %>">
                    
                </td>

                <td> Rp. 
                    <input type="number" id="price<%=i%>" style="width: 120px; border: none;" readonly value="<%= rs.getInt("price") %>">
                    <input type="hidden" id="baseprice<%=i%>" value="<%= rs.getInt("price") %>">
                </td>
                <td> 
                    
                        <input type="submit" value="Delete" >
                    
                
                </td>

            </tr>
        </form>

        <%      
                total+=rs.getInt("price");
            } 
        %>
        
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>Rp. 
                <input type="number" style="width: 150px; border: none;" id="totalprice" readonly value="<%=total%>">
                
            </td>
            <td> </td>
        </tr>


    </table>

    <form action="Payment.jsp">
        <input type="submit" value="CheckOut" class="button">
    </form>

    <script>
        function PriceHandler(id){
            
            var qty = parseInt(document.getElementById("qty"+id).value)
            var baseprice = parseInt(document.getElementById("baseprice"+id).value)
            var oldprice = parseInt(document.getElementById("price"+id).value)
            var total = parseInt(document.getElementById("totalprice").value)
            
            var newprice = qty*baseprice

            total = total - oldprice + newprice

            document.getElementById("price"+id).value = newprice;
            document.getElementById("totalprice").value = total;
            
        }
        


    </script>

<%@ include file="footer.jsp" %>
</body>
</html>