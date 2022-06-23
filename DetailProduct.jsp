<%@include file="Connect/connect.jsp"%>
<%@ include file="header.jsp" %>


 <link rel="stylesheet" property="stylesheet" href="CSS/DetailProduct.css">
    <div class="Detail_Product">
        

        <form action="Controller/CartHandler.jsp" name="cart">

            <%
                String i = request.getParameter("ID");
                ResultSet rs = null;

                String query = String.format("SELECT * FROM product WHERE ID = %s", i);
                rs = st.executeQuery(query);
                rs.next();
                
            %>

            <img onerror="this.onerror=null; this.src='Assets/Product/ComingSoon.jpg'" src="Assets/Product/<%= rs.getString("name")%>.jpg"
                width="250"
                height="250"
                class="Detail_Image">

            <div class="Text_Product">
                <h1> <%= rs.getString("name") %> </h1>
                <h2> Rp. <%= rs.getString("price") %>  </h2>

                <%
                    if (session.getAttribute("user_username") != null ){ 
                %>
                    <button type="button" onclick="minus()">-</button>
                    
                    <input type="hidden" name="ID" value="<%= Integer.parseInt(request.getParameter("ID")) %>" >

                    <input type="number" min="1" value="1" id="quantity" name="quantity">
                    <button type="button" onclick="plus()">+</button>
                    <br><br><br>

                    <input type="submit" value="Add To Cart" class="loginreg scrollto">

                <% } %>

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