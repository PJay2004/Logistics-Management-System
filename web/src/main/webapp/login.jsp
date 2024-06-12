<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Customer Login</title>
    <link rel="stylesheet" href="css/style.css">

    <style>
        .error-message {
            color: red;
            font-weight: lighter;
            margin-top: 10px;
        }
    </style>

    <script>
        function validateAndSubmit(event) {

            var username = document.getElementsByName("username")[0].value;
            var password = document.getElementsByName("password")[0].value;

            var errorMessage = "";

            if (!username) {
                errorMessage += "Please enter your Username\n";
            }
            if (!password) {
                errorMessage += "Please enter your Password.\n";
            }

            if (errorMessage) {
                document.getElementById("error-message").innerText = errorMessage.replace(/\n/g, ' ');
                event.preventDefault();
                return false;
            }
        }
    </script>
</head>
<body>

<div id="container">
    <div class="logo">
        <span>Welcome to Logistics Provider</span>
    </div>
    <div class="banner" style="background-image: url(images/Banner.png); background-size: cover;">
        <span class="bannerText">Leading Logistics solutions provider</span>
    </div>
    <div class="formWrapper">
        <h3 class="formHeader noGutter"> Login </h3>
        <form action="login" onsubmit="validateAndSubmit(event)" method="POST">

            <input type="text" class="searchBar" name="username" placeholder="Enter Username"
                   style="margin-bottom: 10px"/> <br>
            <input type="password" class="searchBar" name="password" placeholder="Enter Password"/>

            <input type="submit" class="searchBtn" style="width: 100%" value="Login">
        </form>
        <div id="error-message" class="error-message"></div>
    </div>

    <div class="footer" style="margin-top: 40vh">
        <hr>
    </div>
</div>


</body>
</html>
