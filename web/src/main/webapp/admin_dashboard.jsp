<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Dashboard</title>
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
    <link href="css/nucleo-icons.css" rel="stylesheet" />
    <link href="css/nucleo-svg.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <link id="pagestyle" href="css/material-dashboard.css?v=3.1.0" rel="stylesheet" />

</head>
<body>
<%--<%--%>
<%--    if (session.getAttribute("login") == null) {--%>
<%--        response.sendRedirect("admin_login.jsp");--%>
<%--    }--%>
<%--%>--%>

<div id="container">
    <div class="logo">
        <span>Welcome to Admin Dashboard</span>
    </div>
    <div class="banner" style="background-image: url(images/Banner.png); background-size: cover;">
        <span class="bannerText">Leading Logistics solutions provider</span>
    </div>
    <div class="col-12">
        <div class="card my-4">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                    <h6 class="text-white text-capitalize ps-3">Order Details</h6>
                </div>
            </div>
            <div class="card-body px-0 pb-2">
                <div class="table-responsive p-0">
                    <table class="table align-items-center justify-content-center mb-0">
                        <thead>
                        <tr>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Orders</th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                Price
                            </th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                Status
                            </th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7 ps-2">
                                User
                            </th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <div class="d-flex px-2">
                                    <div class="my-auto">
                                        <h6 class="mb-0 text-sm">Asana</h6>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p class="text-sm font-weight-bold mb-0">$2,500</p>
                            </td>
                            <td>
                                <span class="text-xs font-weight-bold">working</span>
                            </td>
                            <td>
                                <span class="text-xs font-weight-bold">Poorna</span>
                            </td>

                            <td class="align-middle">
                                <button class="btn btn-link text-secondary mb-0">
                                    <i class="fa fa-ellipsis-v text-xs"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex px-2">
                                    <div class="my-auto">
                                        <h6 class="mb-0 text-sm">Github</h6>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p class="text-sm font-weight-bold mb-0">$5,000</p>
                            </td>
                            <td>
                                <span class="text-xs font-weight-bold">done</span>
                            </td>
                            <td>
                                <span class="text-xs font-weight-bold">Kasun</span>
                            </td>
                            <td class="align-middle">
                                <button class="btn btn-link text-secondary mb-0" aria-haspopup="true"
                                        aria-expanded="false">
                                    <i class="fa fa-ellipsis-v text-xs"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex px-2">
                                    <div class="my-auto">
                                        <h6 class="mb-0 text-sm">Atlassian</h6>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p class="text-sm font-weight-bold mb-0">$3,400</p>
                            </td>
                            <td>
                                <span class="text-xs font-weight-bold">canceled</span>
                            </td>
                            <td>
                                <span class="text-xs font-weight-bold">Kasun</span>
                            </td>
                            <td class="align-middle">
                                <button class="btn btn-link text-secondary mb-0" aria-haspopup="true"
                                        aria-expanded="false">
                                    <i class="fa fa-ellipsis-v text-xs"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex px-2">
                                    <div class="my-auto">
                                        <h6 class="mb-0 text-sm">Bootstrap</h6>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p class="text-sm font-weight-bold mb-0">$14,000</p>
                            </td>
                            <td>
                                <span class="text-xs font-weight-bold">working</span>
                            </td>
                            <td>
                                <span class="text-xs font-weight-bold">Kasun</span>
                            </td>
                            <td class="align-middle">
                                <button class="btn btn-link text-secondary mb-0" aria-haspopup="true"
                                        aria-expanded="false">
                                    <i class="fa fa-ellipsis-v text-xs"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex px-2">
                                    <div class="my-auto">
                                        <h6 class="mb-0 text-sm">Slack</h6>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p class="text-sm font-weight-bold mb-0">$1,000</p>
                            </td>
                            <td>
                                <span class="text-xs font-weight-bold">canceled</span>
                            </td>
                            <td>
                                <span class="text-xs font-weight-bold">Kasun</span>
                            </td>
                            <td class="align-middle">
                                <button class="btn btn-link text-secondary mb-0" aria-haspopup="true"
                                        aria-expanded="false">
                                    <i class="fa fa-ellipsis-v text-xs"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex px-2">
                                    <div class="my-auto">
                                        <h6 class="mb-0 text-sm">Devto</h6>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p class="text-sm font-weight-bold mb-0">$2,300</p>
                            </td>
                            <td>
                                <span class="text-xs font-weight-bold">done</span>
                            </td>
                            <td>
                                <span class="text-xs font-weight-bold">Kasun</span>
                            </td>
                            <td class="align-middle">
                                <button class="btn btn-link text-secondary mb-0" aria-haspopup="true"
                                        aria-expanded="false">
                                    <i class="fa fa-ellipsis-v text-xs"></i>
                                </button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>