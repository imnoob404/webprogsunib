<%@include file="Connect/connect.jsp"%>

<%
    int qty = Integer.parseInt(request.getParameter("quantity"));
    String i = request.getParameter("ID");
    ResultSet rs = null;
    String query = String.format("SELECT * FROM produk WHERE ID = %s", i);


    rs = st.executeQuery(query);
    rs.next();


    String nama = rs.getString("Nama");
    Integer harga = rs.getInt("Harga");
    Integer total = harga*qty;

    
    query = String.format("INSERT INTO cart (Nama, Kuantitas, Harga) VALUES ('%s', %d, %d)", nama, qty, total);
    st.executeUpdate(query);

    response.sendRedirect("Product.jsp");
%>