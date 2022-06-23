<%@include file="../Connect/connect.jsp" %>

<%
    String name = request.getParameter("name");
    String pass = request.getParameter("newpass");

    String query = String.format("UPDATE account SET password = '%s' WHERE username = '%s'", pass, name);
    st.executeUpdate(query);

    response.sendRedirect("../profile.jsp");
%>