<%@include file="../Connect/connect.jsp" %>

<%
    String name = request.getParameter("name");
    String user_id = session.getAttribute("user_id").toString();

    String query = String.format("DELETE FROM cart WHERE name = '%s' AND User_id = '%s' ", name, user_id);
    st.executeUpdate(query);

    query = "ALTER TABLE cart DROP id";
    st.executeUpdate(query);
    
    query = "ALTER TABLE cart ADD id INT PRIMARY KEY AUTO_INCREMENT FIRST";
    st.executeUpdate(query);

    response.sendRedirect("../ShoppingCart.jsp");
%>