<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <title>Logistics Management System</title>

    <style>
        .error-message {
            color: red;
            font-weight: lighter;
            margin-top: 10px;
        }
    </style>

    <script>
        function validateAndSubmit(event) {

            var trackingNo = document.getElementsByName("orderNo")[0].value;

            var errorMessage = "";

            if (!trackingNo) {
                errorMessage += "Please enter the Tracking Number.\n";
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
        <span>Hello ${sessionScope.username} </span>
    </div>
    <div class="banner" style="background-image: url(images/Banner.png); background-size: cover;">
        <span class="bannerText">Leading Logistics solutions provider</span>
    </div>
    <div class="formWrapper">
        <h3 class="formHeader noGutter"> Track your Order</h3>
        <form action="orderTrack" onsubmit="validateAndSubmit(event)" class="noGutter" method="POST">
            <input class="searchBar" type="search" name="orderNo" placeholder="Enter Tracking Number/Order Number"/>

            <button class="searchBtn" type="submit">Track</button>
        </form>
        <div id="error-message" class="error-message"></div>
    </div>

    <div class="footer" style="margin-top: 25vh">
        <hr>
        <div class="span_container"><a href="login.jsp"><span>Login</span></a></div>
    </div>
</div>

</body>

</html>