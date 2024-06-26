<%--
  Created by IntelliJ IDEA.
  User: XPS 15
  Date: 4/13/2024
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>Job</title>
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
    <!-- sidebar-wrapper -->


    <!-- Start Page Content -->
    <main class="page-content bg-light">
        <%@include file="/view/headersidebar.jsp" %>


        <div class="container-fluid">
            <div class="layout-specing">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <h5 class="mb-0">Job</h5>
                        <nav aria-label="breadcrumb" class="d-inline-block mt-2">
                            <ul class="breadcrumb breadcrumb-muted bg-transparent rounded mb-0 p-0">
                                <li class="breadcrumb-item active" aria-current="page">Job List</li>
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
                                        <a href="CreateJobServlet" class="btn btn-primary">Add New</a>
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
                                    <th class="border-bottom p-3" style="min-width: 50px;">Job Title</th>
                                    <th class="border-bottom p-3" style="min-width: 180px;">Required Skills</th>
                                    <th class="border-bottom p-3" style="min-width: 150px;">Start Date</th>
                                    <th class="border-bottom p-3" style="min-width: 150px;">End Date</th>
                                    <th class="border-bottom p-3" style="min-width: 150px;">Level</th>
                                    <th class="border-bottom p-3">Status</th>
                                    <th class="border-bottom p-3" style="min-width: 150px;">Action</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach var="job" items="${requestScope.listJob}" varStatus="loop">
                                    <c:if test="${loop.index < 10}">
                                    <tr>
                                        <td>${job.title}</td>
                                        <td>${job.skill}</td>
                                        <td>${job.start_date}</td>
                                        <td>${job.end_date}</td>
                                        <td>${job.level}</td>
                                        <td>${job.status}</td>
                                        <td>
                                            <a href="#" class="btn btn-icon btn-pills btn-soft-danger" data-bs-toggle="modal" data-bs-target="#cancelappointment">
                                                <i class="fa-regular fa-eye"></i>
                                            </a>
                                            <a href="CreateInterviewServlet" class="btn btn-icon btn-pills btn-soft-success">
                                                <i class="uil uil-pen"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    </c:if>
                                </c:forEach>
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