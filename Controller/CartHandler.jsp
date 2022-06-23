<%@include file="../Connect/connect.jsp" %>

<%
    String user_id = session.getAttribute("user_id").toString();
    int qty = Integer.parseInt(request.getParameter("quantity"));
    String i = request.getParameter("ID");
    ResultSet rs = null;
    String query = String.format("SELECT * FROM product WHERE ID = %s", i);


    rs = st.executeQuery(query);
    rs.next();


    String nama = rs.getString("name");
    Integer harga = rs.getInt("price");
    Integer total = harga*qty;

    
    
    query = String.format("INSERT INTO cart (name, quantity, price, User_id) VALUES ('%s', %d, %d, %s)", nama, qty, total, user_id);
    st.executeUpdate(query);

    response.sendRedirect("../Product.jsp");
%>