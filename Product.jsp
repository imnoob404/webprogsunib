<%@include file="Connect/connect.jsp"%>
<%@ include file="header.jsp" %>
    <link rel="stylesheet" property="stylesheet" href="CSS/Product.css">
    <div class="prodcontainer">
    <div class="temp">
        <div class="column left">
            <a class="prod" href="Product.jsp?category=Food" class="menu">Foods</a> <br>
            <a class="prod" href="Product.jsp?category=Toy / Utility" class="menu">Toy / Utility</a> <br>
            <a class="prod" href="Product.jsp?category=HealthCare" class="menu">Healthcare</a> <br>
            <a class="prod" href="Product.jsp" class="menu"> All </a>
        </div>

        <input type="hidden" id="category" value="">
    

        <div class="column product">

            <%
                String query;
                String category;
                String currentAcc;
                if(session.getAttribute("user_username")!=null){
                    currentAcc = (String)session.getAttribute("user_username");
                }else{
                    currentAcc = "";
                }
                if(request.getParameter("category") != null){
                    category = request.getParameter("category");
                    query = String.format("SELECT  COUNT(*) FROM product WHERE category = '%s'", category);
                
                }else{
                    query = "SELECT COUNT(*) FROM product";
                }

                
                ResultSet count = st.executeQuery(query);

                ResultSet rs= null;
                Integer totalData = 0;

                if(count.next()){
                    totalData = Integer.parseInt(count.getString(1)); 
                }
            
            %>
        

            <div class="row">
                <%
                    if(request.getParameter("category") != null){
                        category = request.getParameter("category");
                        query = String.format("SELECT * FROM product WHERE category = '%s'", category);
                    
                    }else{
                        query = String.format("SELECT * FROM product");
                    }
                    rs = st.executeQuery(query);
                    for(int i = 1 ; i<=totalData ; i++){ 
 
                        rs.next();
                %>

                    

                    <div class="item">
                        <a class="prod" href="DetailProduct.jsp?ID=<%= rs.getInt("id") %>">
                            <img onerror="this.onerror=null; this.src='Assets/Product/ComingSoon.jpg'" src="Assets/Product/<%= rs.getString("name")%>.jpg"
                                width="250"
                                height="250">
                            <p>  <%= rs.getString("name") %> </p>
                            <p>  Rp. <%= rs.getInt("price") %> </p>
                        </a>
                    <%
                    if(currentAcc.equals("admin")){
                    %>
                        <form action="EditProduct.jsp">
                            <input type="hidden" name="id" value="<%=rs.getInt("id")%>">
                            <input type="submit" value="Edit">
                        </form>
                        <form action="Controller/ProductDeleteHandler.jsp">
                            <input type="hidden" name="id" value="<%=rs.getInt("id")%>">
                            <input type="submit" value="Delete">
                        </form>
                        
                    <%}%>
                    </div>
                    

                <% }
                if(currentAcc.equals("admin")){
                %>   
                
                    <div class="item">
                        <a class="prod" href="AddProduct.jsp">
                            <img onerror="this.onerror=null; this.src='Assets/Product/ComingSoon.jpg'" src="Assets/Product/add.jpg"
                                width="250"
                                height="250">
                            <p> Add New Product </p>
                            <p> Click Me </p>
                        </a>
                        
                    </div>
                <%}%>
            </div>

        </div>

    </div>
    </div>
    <%@ include file="footer.jsp" %>
    