<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 4/16/2024
  Time: 10:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Interview Schedule</title>
    <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../sidebar.jsp"/>
<h2>Interview Schedule</h2>
<form action="searchSchedule">
    <div class="form-row">
        <div class="col-md-3 mb-3">
            <input name="search" type="text" class="form-control" id="validationDefault01" placeholder="Search ...">
        </div>
        <div class="col-md-3 mb-3">
            <input type="text" class="form-control" id="validationDefault02" placeholder="Last name" value="Otto"
                   required>
        </div>
        <div class="col-md-3 mb-3">
            <select class="form-control custom-select my-1 mr-sm-2" name="interviewer">
                <option selected>Interviewer</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
            </select>
        </div>
        <div class="col-md-4 mb-3">
            <select class="form-control custom-select my-1 mr-sm-2" name="status">
                <option selected>Status</option>
                <option value="New">New</option>
                <option value="Interviewed">Interviewed</option>
                <option value="Invited">Invited</option>
                <option value="Canceled">Canceled</option>
            </select>
        </div>
    </div>
</form>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Title</th>
        <th scope="col">Candidate Name</th>
        <th scope="col">Interviewer</th>
        <th scope="col">Schedule</th>
        <th scope="col">Job</th>
        <th scope="col" colspan="2">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${requestScope.interviews}" var="item">
        <tr>
            <th scope="row">${item.title}</th>
            <td>${item.candidate.name}</td>
            <td>${item.interview.name}</td>
            <td>${item.schedule}</td>
            <td>${item.job.title}</td>
            <td><a href="#"><i class="fa fa-eye"></i></a></td>
            <td><a href="#"><i class="fa fa-trash-o"></i></a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div>
    <c:forEach begin="1" end="${requestScope.total}" var="item">
        <a href="#">${item}</a>
    </c:forEach>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>
