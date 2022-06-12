<%@include file="Connect/connect.jsp"%>

<%
    String name = request.getParameter("name");

    String query = String.format("DELETE FROM cart WHERE name = '%s'", name);
    st.executeUpdate(query);

    query = "ALTER TABLE cart DROP id";
    st.executeUpdate(query);
    
    query = "ALTER TABLE cart ADD id INT PRIMARY KEY AUTO_INCREMENT FIRST";
    st.executeUpdate(query);

    response.sendRedirect("ShoppingCart.jsp");
%>