<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/dashboard.css"/>
    <title>Order Payment</title>
    <style>
        .formHeader {
            display: flex;
            align-self: center;
        }

        .searchBtn {
            width: 100%;
        }

        p.col-item-status {
            font-weight: 600;
        }

        .row-item .col-item:nth-child(1) {
            width: 35%;
        }

        .row-item .col-item:nth-child(2) {
            width: 65%;
        }

    </style>

</head>
<body>

<%
    Object transaction = session.getAttribute("transaction");
    boolean isPaid = (transaction != null);
    String buttonText = isPaid ? "Payment Done" : "Pay";
%>

<div id="container">
    <div class="logo">
        <span>Hello ${sessionScope.username} </span>
    </div>
    <div class="banner" style="background-image: url(images/Banner.png); background-size: cover;">
        <span class="bannerText">Leading Logistics solutions provider</span>
    </div>
    <div class="formWrapper">
        <h3 class="formHeader noGutter"> Order Payment ID: <span
                class="trackingHeader noGutter" style="color: rgb(248, 86, 6);">${sessionScope.orderNo}</span>
        </h3>
        <div class="trackingDetails noGutter">
            <div class="timeline">
                <div class="row-item">
                    <div class="col-item">
                        <p class="col-item-status title">Name:</p>
                    </div>
                    <div class="col-item">
                        <p class="subTitle"> VXE R1 Pro Max </p>
                    </div>
                </div>
                <div class="row-item">
                    <div class="col-item">
                        <p class="col-item-status title">Description:</p>
                    </div>
                    <div class="col-item">
                        <p class="subTitle"> Wireless Gaming Mouse </p>
                    </div>
                </div>
                <div class="row-item">
                    <div class="col-item">
                        <p class="col-item-status title">Price:</p>
                    </div>
                    <div class="col-item">
                        <p class="subTitle"> Rs 12000 </p>
                    </div>
                </div>
                <div class="row-item">
                    <div class="col-item">
                        <p class="col-item-status title">Payment Method:</p>
                    </div>
                    <div class="col-item">
                        <p class="subTitle"> Bank Transfer </p>
                    </div>
                </div>
            </div>
        </div>
        <button class="searchBtn" style="margin-top: -1vh" <%= isPaid ? "disabled" : "" %> onclick="window.location='account.jsp'"><%= buttonText %></button>
    </div>

    <div class="footer" style="margin-top: 40vh">
        <hr>
    </div>
</div>
</body>
</html>