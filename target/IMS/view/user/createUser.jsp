<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/4/2024
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Offer</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Premium Bootstrap 4 Landing Page Template"/>
    <meta name="keywords" content="Appointment, Booking, System, Dashboard, Health"/>
    <meta name="author" content="Shreethemes"/>
    <meta name="email" content="support@shreethemes.in"/>

    <meta name="Version" content="v1.2.0"/>
    <!-- favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico.png">
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!-- simplebar -->
    <link href="assets/css/simplebar.css" rel="stylesheet" type="text/css"/>
    <!-- Select2 -->
    <link href="assets/css/select2.min.css" rel="stylesheet"/>
    <!-- Date picker -->
    <link rel="stylesheet" href="assets/css/flatpickr.min.css">
    <link href="assets/css/jquery.timepicker.min.css" rel="stylesheet" type="text/css"/>
    <!-- Icons -->
    <link href="assets/css/materialdesignicons.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/remixicon.css" rel="stylesheet" type="text/css"/>
    <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css" rel="stylesheet">
    <!-- Css -->
    <link href="assets/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt"/>


</head>
<body>
<!-- Loader -->
<div id="preloader">
    <div id="status">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>
</div>
<!-- Loader -->

<div class="page-wrapper doctris-theme toggled">
    <nav id="sidebar" class="sidebar-wrapper">
        <div class="sidebar-content" data-simplebar style="height: calc(100% - 60px);">
            <div class="sidebar-brand">
                <a href="CandidateServlet">
                    <h2>IMS</h2>
                </a>
            </div>
        </div>
        <!-- sidebar-content  -->
        <%@include file="/view/sidebar.jsp" %>

    </nav>
    <!-- sidebar-wrapper  -->


    <!-- Start Page Content -->
    <main class="page-content bg-light">
        <%@include file="/view/headersidebar.jsp" %>


        <div class="container-fluid">
            <div class="layout-specing">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <h3 class="mb-0">Offer</h3>
                        <nav aria-label="breadcrumb" class="d-inline-block mt-2">
                            <ul class="breadcrumb breadcrumb-muted bg-transparent rounded mb-0 p-0">
                                <li class="breadcrumb-item active" aria-current="page"><a
                                        href="InterviewServlet">List User</a></li>
                                <li class="breadcrumb-item active" aria-current="page"><a
                                        href="CreateInterviewServlet">Create User</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>

                <div class="row" style="margin-top: 40px">
                    <div class="col-12">
                        <form class="cancel" action="${pageContext.request.contextPath}/UserServlet" method="get">
                            <div class="row">


                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label">Full name</label>
                                        <input name="name" type="text" class="form-control "
                                               placeholder="Type a name">
                                    </div>
                                </div><!--end col-->



                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label">Email</label>
                                        <input name="email" type="text" class="form-control "
                                               placeholder="Type an email">
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6 col-md-6">
                                    <div class="mb-6">
                                        <label class="form-label">D.O.B<span
                                                class="text-danger">*</span></label>
                                        <input name="dob" type="text"
                                               class="flatpickr flatpickr-input form-control"
                                               id="checkin-date">
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label">Address</label>
                                        <input name="address" type="text" class="form-control "
                                               placeholder="Type an address">
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label">Phone number</label>
                                        <input name="phone" type="text" class="form-control "
                                               placeholder="Type a number">
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6 col-md-6">
                                    <div class="mb-6">
                                        <label class="form-label">Gender<span
                                                class="text-danger">*</span></label>
                                        <select class="form-select form-control" id="inputGroupSelect01">
                                            <option>Select a gender</option>
                                            <option>1</option>
                                            <option>2</option>
                                        </select>
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label">Roles<span
                                                class="text-danger">*</span></label>
                                        <select class="form-select form-control" id="inputGroupSelect01"
                                                name="role">
                                            <option>Select a position..ex. Backend developer,..</option>
                                            <option>Frontend developer</option>
                                            <option>Full stack</option>
                                        </select>
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6 col-md-6">
                                    <div class="mb-6">
                                        <label class="form-label">Department<span
                                                class="text-danger">*</span></label>
                                        <select class="form-select form-control" id="inputGroupSelect01">
                                            <option>Select a department</option>
                                            <option>1</option>
                                            <option>2</option>
                                        </select>
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6 col-md-6">
                                    <div class="mb-6">
                                        <label class="form-label" style="margin-top: 10px">Status<span
                                                class="text-danger">*</span></label>
                                        <select class="form-select form-control" id="inputGroupSelect01">
                                            <option>Select a status</option>
                                            <option>Active</option>
                                            <option>Inactive</option>
                                        </select>
                                    </div>
                                </div><!--end col-->



                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label" style="margin-top: 10px">Notes</label>
                                        <textarea name="note" class="form-control" rows="5" placeholder="N/A"></textarea>
                                    </div>
                                </div><!--end col-->


                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="d-flex justify-content-center">
                                            <div class="d-grid me-2" style="margin-top: 10px;margin-left:-200px">
                                                <button type="submit" value="search" class="btn btn-primary">Submit</button>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- end row -->
                            </div><!--end row-->
                        </form>

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="d-flex justify-content-center">

                                    <form class="cancel" onsubmit="history.back(); return false;">
                                        <div class="d-grid" style="margin-top: -40px;margin-left: 200px">
                                            <button type="submit" class="btn btn-primary">Cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div><!-- end row -->


                    </div>
                </div><!--end row-->
            </div>
        </div><!--end container-->
    </main>
    <!--End page-content" -->
</div>
<!-- page-wrapper -->

<!-- javascript -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<!-- simplebar -->
<script src="assets/js/simplebar.min.js"></script>
<!-- Select2 -->
<script src="assets/js/select2.min.js"></script>
<script src="assets/js/select2.init.js"></script>
<!-- Datepicker -->
<script src="assets/js/flatpickr.min.js"></script>
<script src="assets/js/flatpickr.init.js"></script>
<!-- Datepicker -->
<script src="assets/js/jquery.timepicker.min.js"></script>
<script src="assets/js/timepicker.init.js"></script>
<!-- Icons -->
<script src="assets/js/feather.min.js"></script>
<!-- Main Js -->
<script src="assets/js/app.js"></script>


</body>


</html>


