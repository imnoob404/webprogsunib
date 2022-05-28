<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/Product.css">
    
    <title>Product</title>
    
</head>
<body>
    <div class="product">

        <% for(int y = 0 ; y<4 ; y++){ %>

            <div class="row">
                <% for(int i = 0 ; i<4 ; i++){ %>

                    <div class="item">
                        <a href="DetailProduct.jsp?id=">
                            <img src="Assets/Tokopedia - Fantasy Pet/Toy/Ball toy/WechatIMG388.jpeg"
                                width="250"
                                height="250">
                            <p>Nama</p>
                            <p>Harga</p>
                        </a>
                
                    </div>

                <% } %>   
            </div>

        <% } %>   
    </div>
    
    

</body>
</html>