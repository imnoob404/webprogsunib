<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/profile.css">
    <title>Profile</title>
</head>
<body>
    <div class="profile">

        <div class="img_avatar">
            <img src="Assets/Profile_Pic/cat_avatar.jpg" id="getImage">
            <br>
            <input type="button" onclick="change_image()" value="Change Image">
        </div>

        <div class="profile_user">
            <label for="username"><b>Username</b></label>
            <p>asd</p>
            <label for="phone"><b>Phone Number</b></label>
            <p>asd</p>
            <label for="email"><b>Email</b></label>
            <p>asd</p>
            <label for="dob"><b>Date of Birth</b></label>
            <p>asd</p>
        </div>
    </div>
</body>

<script>
    function change_image() {
        var Image_Id = document.getElementById('getImage');
        if (Image_Id.src.match("Assets/Profile_Pic/cat_avatar.jpg")) {
            Image_Id.src = "Assets/Profile_Pic/dog_avatar.jpg";
        }
        else if (Image_Id.src.match("Assets/Profile_Pic/dog_avatar.jpg")) {
            Image_Id.src = "Assets/Profile_Pic/pipel.jpg"
        }
        else {
            Image_Id.src = "Assets/Profile_Pic/cat_avatar.jpg";
        }
    }
</script>


</html>