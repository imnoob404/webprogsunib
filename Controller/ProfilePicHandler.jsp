<%@include file="../Connect/connect.jsp" %>

<%
    String name = request.getParameter("name");
    ResultSet rs = null;
    String query = String.format("SELECT * FROM account WHERE username = '%s'", name);

    rs = st.executeQuery(query);
    rs.next();


    String image = rs.getString("image");
    

    if(image.equals("cat_avatar")){
        image = "dog_avatar";
    }else if (image.equals("dog_avatar")){
        image = "pipel";
    }else if (image.equals( "pipel")){
        image = "cat_avatar";
    }


    
    query = String.format("UPDATE account SET image = '%s' WHERE username = '%s'", image, name);
    st.executeUpdate(query);

    response.sendRedirect("../profile.jsp");
%>