<%@include file="../Connect/connect.jsp" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String date = request.getParameter("dob");
    String image = "pipel";

    String query = String.format("INSERT INTO account (username, password, email, phone, dob, image) VALUES ('%s','%s','%s','%s','%s', '%s')", username, password, email, phone, date, image);

    st.executeUpdate(query);
    response.sendRedirect("../login.jsp");
%>