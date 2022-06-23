<%@include file="Connect/connect.jsp"%>
<%@ include file="header.jsp" %>

    <link rel="stylesheet" property="stylesheet" href="CSS/Cart.css">
    <%
        String User_id = session.getAttribute("user_id").toString();
        String query = String.format("SELECT COUNT(*) FROM cart WHERE User_id = '%s'", User_id);
        ResultSet count = st.executeQuery(query);

        ResultSet rs= null, rs2= null;
        Integer totalData = 0;
        

        if(count.next()){
            totalData = Integer.parseInt(count.getString(1)); 
        }

    %>
   <div class="container">
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
            query = String.format("SELECT * FROM cart WHERE User_id = '%s'", User_id);
            rs2 = st.executeQuery(query);

            while(rs2.next()){
            
        %>

        <form action="Controller/CartDeleteHandler.jsp">
            <tr>
                <td>
                    <img onerror="this.onerror=null; this.src='Assets/Product/ComingSoon.jpg'" src="Assets/Product/<%= rs2.getString("name")%>.jpg"
                            width="150"
                            height="150">        
                </td>
                <td> 
                    <input type="text" name="name" readonly style="border: none;" value="<%= rs2.getString("name") %>">
                </td>
                <td> 
                    <input type="number" id="qty<%=rs2.getInt("id")%>" onchange="PriceHandler(<%=rs2.getInt("id")%>)" style="width: 50px;" min="1" value="<%= rs2.getInt("quantity") %>">
                    
                </td>

                <td> Rp. 
                    <input type="number" id="price<%=rs2.getInt("id")%>" style="width: 120px; border: none;" readonly value="<%= rs2.getInt("price")* rs2.getInt("quantity")%>">
                    <input type="hidden" id="baseprice<%=rs2.getInt("id")%>" value="<%= rs2.getInt("price") %>">
                </td>
                <td> 
                    
                        <input type="submit" value="Delete" >
                    
                
                </td>

            </tr>
        </form>

        <%      
                total+=rs2.getInt("price");
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
</div>
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