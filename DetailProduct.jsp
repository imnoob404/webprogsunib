<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/DetailProduct.css">

    <title>Nama Produk</title>

</head>
<body>
    <div class="Detail">
        <div class="Detail_Product">
            

            <form action="CartHandler.jsp" name="cart">
                <img src="Assets/Tokopedia - Fantasy Pet/Toy/Ball toy/WechatIMG386.jpeg"
                    width="250"
                    height="250"
                    class="Detail_Image">

                <div class="Text_Product">
                    <h1>Nama</h1>
                    <h2>harga</h2>
                    <button type="button" onclick="minus()">-</button>
                    <input type="number" min="1" id="quantity" value="1" name="quantity" class="quantity">
                    <button type="button" onclick="plus()">+</button>
                    <br><br><br>
                    <input type="submit" value="Add To Cart">
    
                </div>

            </form>


            <div class="Description">
                <p>Lorem ipsum test set Lorem ipsum test set Lorem ipsum test set Lorem ipsum test set Lorem ipsum test set Lorem ipsum test set Lorem ipsum test set
                    Lorem ipsum test set Lorem ipsum test set Lorem ipsum test set Lorem ipsum test set Lorem ipsum test set Lorem ipsum test set Lorem ipsum test set
                </p>

            </div>  

        </div>

        <script>
            function minus() {
                document.getElementById('quantity').stepDown();
            }
    
            function plus() {
                document.getElementById('quantity').stepUp();
            }
    
        </script>
        
    </div>

    
    

</body>
</html>