<%--
  Created by IntelliJ IDEA.
  User: XPS 15
  Date: 4/13/2024
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Interview</title>
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
                        <h5 class="mb-0">Interview</h5>
                        <nav aria-label="breadcrumb" class="d-inline-block mt-2">
                            <ul class="breadcrumb breadcrumb-muted bg-transparent rounded mb-0 p-0">
                                <li class="breadcrumb-item active" aria-current="page">Interview Schedule List</li>
                            </ul>
                        </nav>
                    </div>

                    <div class="col-lg-4 col-md-6 mt-4 mt-md-0">
                        <div class="row">
                            <div class="col-lg-8 col-md-7">
                                <div class="search-bar p-0 d-none d-lg-block ms-2">
                                    <div id="search" class="menu-search mb-0">
                                        <form role="search" method="get" id="searchform" class="searchform">
                                            <div>
                                                <input type="text" class="form-control border rounded-pill" name="s"
                                                       id="s" placeholder="Search">
                                                <input type="submit" id="searchsubmit" value="Search">
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <%--<div class="search-bar p-0 d-none d-lg-block ms-2">
                                    <div id="search" class="menu-search mb-0">
                                        <form role="search" method="get" id="searchform" class="searchform">
                                            <div>
                                                <input type="text" class="form-control border rounded-pill" name="s"
                                                       id="s" placeholder="Search">
                                                <input type="submit" id="searchsubmit" value="Search">
                                            </div>
                                        </form>
                                    </div>
                                </div>--%>
                            </div>

                            <div class="col-lg-4 col-md-5">
                                <div class="justify-content-md-end mt-4 mt-sm-0">
                                    <div class="d-grid">
                                        <a href="CreateInterviewServlet" class="btn btn-primary">Add New</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 mt-4">
                        <div class="table-responsive bg-white shadow rounded">
                            <table class="table mb-0 table-center">
                                <thead>
                                <tr>
                                    <th class="border-bottom p-3" style="min-width: 50px;">Title</th>
                                    <th class="border-bottom p-3" style="min-width: 180px;">Candidate Name</th>
                                    <th class="border-bottom p-3" style="min-width: 150px;">Interview</th>
                                    <th class="border-bottom p-3" style="min-width: 150px;">Schedule</th>
                                    <th class="border-bottom p-3" style="min-width: 150px;">Result</th>
                                    <th class="border-bottom p-3">Status</th>
                                    <th class="border-bottom p-3">Job</th>
                                    <th class="border-bottom p-3" style="min-width: 150px;">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th class="p-3">1</th>
                                    <td class="p-3">Howard Tanner</td>
                                    <td class="p-3">howard@contact.com</td>
                                    <td class="p-3">20th Dec 2020</td>
                                    <td class="p-3">20th Dec 2020</td>
                                    <td class="p-3">Employee ID</td>
                                    <td class="p-3">Active</td>
                                    <td class="text-end p-3">
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-danger"
                                           data-bs-toggle="modal" data-bs-target="#cancelappointment">
                                            <i class="fa-regular fa-eye"></i></a>

                                        <a href="CreateInterviewServlet"
                                           class="btn btn-icon btn-pills btn-soft-success"><i
                                                class="uil uil-pen"></i></a>


                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div><!--end row-->

                <div class="row text-center">
                    <!-- PAGINATION START -->
                    <div class="col-12 mt-4">
                        <div class="d-md-flex align-items-center text-center justify-content-between">
                            <span class="text-muted me-3">Showing 1 - 10 out of 50</span>
                            <ul class="pagination justify-content-center mb-0 mt-3 mt-sm-0">
                                <li class="page-item"><a class="page-link" href="javascript:void(0)"
                                                         aria-label="Previous">Prev</a></li>
                                <li class="page-item active"><a class="page-link" href="javascript:void(0)">1</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0)" aria-label="Next">Next</a>
                                </li>
                            </ul>
                        </div>
                    </div><!--end col-->
                    <!-- PAGINATION END -->
                </div><!--end row-->
            </div>
        </div><!--end container-->
    </main>
    <!--End page-content" -->
</div>
<!-- page-wrapper -->
<!-- Modal start -->
<!-- Cancel Appointment Start -->
<div class="modal fade" id="cancelappointment" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body py-5">
                <div class="text-center">
                    <div class="icon d-flex align-items-center justify-content-center bg-soft-danger rounded-circle mx-auto"
                         style="height: 95px; width:95px;">
                        <i class="uil uil-times-circle h1 mb-0"></i>
                    </div>
                    <div class="mt-4">
                        <h4>Cancel Appointment</h4>
                        <p class="para-desc mx-auto text-muted mb-0">Great doctor if you need your family member to get
                            immediate assistance, emergency treatment.</p>
                        <div class="mt-4">
                            <a href="#" class="btn btn-soft-danger">Cancel</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Cancel Appointment End -->
<!-- Modal end -->

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
