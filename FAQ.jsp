<%@ include file="header.jsp" %>
    <div class="container containermain">
    <link rel="stylesheet" property="stylesheet" href="CSS/faq.css">
    <div class="about_us">
        <h1>About Us</h1>
        <br>
        <p class="about_us_text">
            Toko beroperasi pukul 19:00-23:59 WIB. Pesanan yang lewat pukul 23:59 akan diproses saat toko beroperasi kembali.
        </p>

    </div>
    <div class="contact">
        <h1>Contact Us</h1>
        <div class="column">
            <h2>Email</h2>
            <p>fantasy.pet@gmail.com</p>
        </div>

        <div class="column">
            <h2>Phone Number</h2>
            <p>0898-9090-896</p>
        </div>

        <div class="column">
            <h2>Address</h2>
            <p>Jl. Komp. Dpr II No.7, RT.3/RW.13, Kemanggisan, Kec. Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480</p>
        </div>
    </div>

    <div class="faq">
        <h1>FAQ</h1>
        <div class="option_pick" onclick="dropdown()">
            <p>Q1: Kenapa Kelvin masuk IT-Mat?</p>
        </div>
    
        <div class="dropdown_menu" id="dropdown_menu">
            <p>Karna dikira enak bisa dapat 2 gelar</p>
        </div>
    
        <div class="option_pick" onclick="dropdown2()">
            <p>Q2: Kenapa Kelvin makan bubur pakai tangan? </p>
        </div>

        <div class="dropdown_menu" id="dropdown_menu2">
            <p>Karna malas dan anaknya jorok</p>
        </div>
    
        <div class="option_pick" onclick="dropdown3()">
            <p>Q3: Kenapa Kelvin suka lagu dangdut?</p>
        </div>

        <div class="dropdown_menu" id="dropdown_menu3">
            <p>Karna waktu dalam kandungan didengarkan lagu dangdut melulu</p>
        </div>

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

        function dropdown2() {
            document.getElementById("dropdown_menu2").classList.toggle("show");
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

        function dropdown3() {
            document.getElementById("dropdown_menu3").classList.toggle("show");
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
</div>
<%@ include file="footer.jsp" %>