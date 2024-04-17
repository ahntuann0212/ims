<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/4/2024
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
</head>
<body>

<!--<div class="page-wrapper doctris-theme toggled">-->
<nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content" data-simplebar style="height: calc(100% - 60px);">
        <div class="sidebar-brand">
            <a href="index.html">
                <h2>IMS</h2>
            </a>
        </div>
        <ul class="sidebar-menu pt-3">
            <li class="sidebar-dropdown">
                <a href="/IMSs_war/view/candidatelist" >
                    <i class="fa-solid fa-house"><div class="bg-primary"></div></i>Menu

                </a>
            </li>
            <li>
                <a href="CandidateServlet">
                    <i class="fa-solid fa-house"><div class="bg-primary"></div></i>Candidate
                </a>

            </li>
            <li>
                <a href="JobServlet">
                    <i class="fa-solid fa-house"><div class="bg-primary"></div></i>Job
                </a>

            </li>
            <li>
                <a href="InterviewServlet">
                    <i class="fa-solid fa-house"><div class="bg-primary"></div></i>Interview
                </a>
            </li>
            <li>
                <a href="OfferServlet">
                    <i class="fa-solid fa-house"><div class="bg-primary"></div></i>Offer
                </a>
            </li>
            <li>
                <a href="UserServlet">
                    <i class="fa-solid fa-house"><div class="bg-primary"></div></i>User
                </a>
            </li>
        </ul>
    </div>
</nav>
</body>
</html>
