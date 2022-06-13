<%@include file="Connect/connect.jsp" %>

<%
    String name = request.getParameter("Name");
    String category = request.getParameter("Category");
    String desc = request.getParameter("Description");
    Integer price = Integer.parseInt(request.getParameter("Price"));
    

    String query = String.format("INSERT INTO product (name, category, description, price) VALUES ('%s', '%s', '%s', %d)", name, category, desc, price);
    st.executeUpdate(query);

    response.sendRedirect("Product.jsp");
%>