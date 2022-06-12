<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        FantasyPet - 
    <%
        String servletPath=request.getServletPath();
        String judul = servletPath.substring(servletPath.lastIndexOf("/") + 1, servletPath.length() - 4);
        out.println(judul);
    %>
    </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link href="CSS/style.css" rel="stylesheet">
    <link href="CSS/boxicons/css/boxicons.min.css" rel="stylesheet">

</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

    <header id="header" class="fixed-top">
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-xl-9 d-flex align-items-center justify-content-lg-between">
              <a href="index.html" class="logo me-auto me-lg-0"><img src="Assets/logo_small.png" alt="" class="img-fluid"></a>
              <nav id="navbar" class="navbar order-last order-lg-0">
                <ul>
                  <li><a class="nav-link scrollto <% if(judul.equals("index")) out.println("active"); %>" href="index.jsp">Home</a></li>
                  <li><a class="nav-link scrollto <% if(judul.equals("Product")) out.println("active"); %></a>" href="Product.jsp">Shop</a></li>
                  <li><a class="nav-link scrollto <% if(judul.equals("Payment")) out.println("active"); %></a>" href="ShoppingCart.jsp">Cart</a></li>
                  <li><a class="nav-link scrollto <% if(judul.equals("FAQ")) out.println("active"); %></a>" href="FAQ.jsp">Contact</a></li>
                </ul>
              </nav>
              <a href="login.jsp" class="get-started-btn scrollto">Login/Register</a>
            </div>
          </div>
        </div>
      </header>
