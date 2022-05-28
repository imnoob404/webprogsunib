<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/Payment.css">

    <title>Payment</title>
</head>
<body>

    <div class="option_pick" onclick="dropdown()">
        <h1>COD</h1>
    </div>


    <div class="dropdown_menu" id="dropdown_menu">
        <textarea id="address" rows="5" cols="35"></textarea>
        <br>
        <input type="submit" value="OK">
    </div>


    <div class="option_pick">
        <h1>M-Banking / COMING SOON</h1>
    </div>

    
    
    <div class="option_pick">
        <h1>Transfer ATM / COMING SOON</h1>
    </div>
    
   


    <script>
        function dropdown() {
            document.getElementById("dropdown_menu").classList.toggle("show");
        }
      
        // Close the dropdown menu if the user clicks outside of it
        window.onclick = function(event) {
            if (!event.target.matches('.option_pick')) {

                var dropdowns = document.getElementsByClassName("dropdown-dropdown_menu");
                var i;

                for (i = 0; i < dropdowns.length; i++) {
                    
                    var openDropdown = dropdowns[i];
                    
                    if (openDropdown.classList.contains('show')) {
                        openDropdown.classList.remove('show');
                    }
                }
            }
        }
    </script>
    

      

</body>
</html>