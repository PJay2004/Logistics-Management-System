<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Bank Payment</title>
    <link rel="stylesheet" href="css/style.css">

    <style>
        .error-message {
            color: red;
            font-weight: lighter;
            margin-top: 10px;
        }
    </style>

    <%
        if (session.getAttribute("login") == null) {
            response.sendRedirect("login.jsp");
        }
    %>

    <script>
        function validateAndSubmit(event) {

            var sourceAccountNo = document.getElementsByName("sourceAccountNo")[0].value;
            var destinationAccountNo = document.getElementsByName("destinationAccountNo")[0].value;
            var amount = document.getElementsByName("amount")[0].value;

            var errorMessage = "";

            if (!sourceAccountNo) {
                errorMessage += "Please enter your account number.\n";
            }
            if (!destinationAccountNo) {
                errorMessage += "Please enter the destination account number.\n";
            }
            if (!amount) {
                errorMessage += "Please enter the amount.\n";
            }

            if (errorMessage) {
                document.getElementById("error-message").innerText = errorMessage.replace(/\n/g, '');
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
        <h3 class="formHeader noGutter"> Payment Bank Transfer</h3>
        <span>Deposit Account NO: 100903821</span>
        <form action="transfer" onsubmit="validateAndSubmit(event)" class="noGutter" method="post">

            <input type="text" class="searchBar" name="sourceAccountNo"
                   placeholder="Enter Your Account Number"/>

            <br>

            <input type="text" class="searchBar" style="margin-top: 12px;" name="destinationAccountNo"
                   placeholder="Enter Destination Account Number"/>

            <br>

            <input type="text" class="searchBar" name="amount" style="margin-top: 12px;" placeholder="Enter Amount">

            <button class="searchBtn" style="width: 100%" type="submit">Transfer</button>
        </form>
        <div id="error-message" class="error-message"></div>
    </div>

    <div class="footer" style="margin-top: 40vh">
        <hr>
    </div>
</div>


</body>
</html>