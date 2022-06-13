<%@include file="/Connect/connect.jsp"%>

<%
    Integer id = Integer.parseInt(request.getParameter("id"));

    String query = String.format("DELETE FROM product WHERE id = %d", id);
    st.executeUpdate(query);

    query = "ALTER TABLE product DROP id";
    st.executeUpdate(query);
    
    query = "ALTER TABLE product ADD id INT PRIMARY KEY AUTO_INCREMENT FIRST";
    st.executeUpdate(query);

    response.sendRedirect("/Product.jsp");
%>