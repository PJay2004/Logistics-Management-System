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
    <link rel="stylesheet" href="css/dashboard.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Track Order</title>

    <style>
        .searchBtn{
            width: 100%;
        }
        .sbtn2{
            background-color: #ff1c39;
        }
    </style>
</head>
<body>

<div id="container">
    <div class="logo">
        <span>Hello ${sessionScope.username} </span>
    </div>
    <div class="banner" style="background-image: url(images/Banner.png); background-size: cover;">
        <span class="bannerText">Leading Logistics solutions provider</span>
    </div>
    <div class="wrapper">
        <h3 class="trackingHeader noGutter">Delivery Update for Tracking ID/Number: <span
                class="trackingHeader noGutter" style="color: rgb(248, 86, 6);">${sessionScope.orderNo}</span>
        </h3>
        <div class="trackingDetails noGutter">
            <div class="timeline">
                <div class="row-item">
                    <div class="col-item">
                        <p class="date">08/05/2024</p>
                        <p class="minute">13:00</p>
                    </div>
                    <div class="col-item">
                        <p class="col-item-status title">Successful Delivery!</p>
                        <p class="subTitle">Your package has been successfully delivered. </p></div>
                </div>
                <div class="row-item">
                    <div class="col-item"><p class="date">07/05/2024</p>
                        <p class="minute">23:11</p></div>
                    <div class="col-item"><p class="col-item-status title">Package Departed from Sorting Center</p>
                        <p class="subTitle">Your package has departed from the sorting center. </p></div>
                </div>
                <div class="row-item">
                    <div class="col-item"><p class="date">07/05/2024</p>
                        <p class="minute">22:00</p></div>
                    <div class="col-item"><p class="col-item-status title">Package Accepted</p>
                        <p class="subTitle">The shipping carrier LK-DEX has accepted your package. [Colombo (1 -
                            15)]</p></div>
                </div>
                <div class="row-item">
                    <div class="col-item"><p class="date">07/05/2024</p>
                        <p class="minute">12:10</p></div>
                    <div class="col-item"><p class="col-item-status title">Package Arrived at Sorting Center</p>
                        <p class="subTitle">Your package has arrived at the sorting center. [Colombo (1 - 15)]</p></div>
                </div>
            </div>
        </div>
        <button class="searchBtn" style="margin-top: -1vh" onclick="window.location='payment.jsp'">Payment</button>
        <button class="searchBtn sbtn2" style="margin-top: -1vh" onclick="window.location='payment.jsp'">Cancel Order</button>
    </div>

    <div class="footer" style="margin-top: 50vh">
        <hr>
    </div>
</div>

</body>
</html>