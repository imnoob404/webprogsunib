<%@include file="../Connect/connect.jsp" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    String query = String.format("SELECT * FROM account WHERE username = '%s' AND password = '%s' ", username, password);
    ResultSet rs = st.executeQuery(query);

    if(rs.next()){
        session.setAttribute("user_id", rs.getInt("id"));
        session.setAttribute("user_username", rs.getString("username"));
        session.setAttribute("user_email",rs.getString("email"));
        session.setAttribute("user_phone",rs.getString("phone"));
        session.setAttribute("user_dob",rs.getString("dob"));
    }
    
    
    response.sendRedirect("../index.jsp");
%>