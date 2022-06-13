<%@include file="Connect/connect.jsp" %>

<%
    String oldname = request.getParameter("oldname");
    String name = request.getParameter("Name");
    String category = request.getParameter("Category");
    String desc = request.getParameter("Description");
    Integer price = Integer.parseInt(request.getParameter("Price"));
    

    String query = String.format("UPDATE product SET name = '%s', category = '%s', description = '%s', price = %d WHERE name = '%s'", name, category, desc, price, oldname);
    st.executeUpdate(query);

    response.sendRedirect("Product.jsp");
%>