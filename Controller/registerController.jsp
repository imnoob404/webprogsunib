<%@include file="/Connect/connect.jsp"%>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String date = request.getParameter("dob");

    String query = String.format("INSERT INTO account (id, username, password, email, phone, dob) VALUES (0,'%s','%s','%s','%s','%s')", username, password, email, phone, date);

    st.executeUpdate(query);
    response.sendRedirect("/webprogsunib/login.jsp");
%>