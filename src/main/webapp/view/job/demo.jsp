<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>
    <link rel="stylesheet" href="resources/css/ListEmployee.css">
    <meta name="viewport" content="width-device-width, initial-scale=1.0" />
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<div class="header">

    <div>
        <i class="fa-solid fa-people-group"></i>
    </div>
    <div>
        <h3>Employee</h3>
    </div>
    <span class="account">Hello </span>



</div>
<div class="split">
    <div class="left">
        <div class="header">
            <div>
                <i class="fa-solid fa-chart-column"></i>
            </div>
            <div>
                <h3 onclick="toggleMenu()">Employee Manager</h3>
            </div>
        </div>


        <section id="menu" class="hidden">
            <div class="header">
                <div>
                    <i class="fa-solid fa-list"></i>
                </div>


                <div>
                    <a href="list">Employee List</a>
                </div>
            </div>
            <div class="header">
                <div>
                    <i class="fa-solid fa-plus"></i>
                </div>

                <div>
                    <a href="add">Add Employee</a>
                </div>
            </div>
        </section>
    </div>

    <div class="right">

        <h2>Employee List</h2>

        <div class="button-bar"></div>
        <form class="search-by"
              action="${pageContext.request.contextPath}/list" method="post">
            <div class="search">
                <div class="s1">
                    <input type="text" placeholder="User Search" name="userSearch">
                </div>
                <div class="s2">
                    <label>Filter By</label> <select name="attribute" id="choose">
                    <option value="first_name">Name</option>
                    <option value="address">Address</option>
                    <option value="phone">Phone</option>
                    <option value="department_name">Department</option>
                </select>
                </div>
                <div>
                    <input type="submit" value="Search" class="btn-search">
                </div>
            </div>

        </form>


        <form class="list-employee">
            <table class="employee-table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Date of birth</th>
                    <th>Address</th>
                    <th>Phone number</th>
                    <th>Department</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="emp" items="${listEmployee}">
                    <tr>
                        <td>${emp.employee_id}</td>
                        <td>${emp.firstName}</td>
                        <td>${emp.dob}</td>
                        <td>${emp.address}</td>
                        <td>${emp.phone}</td>
                        <td>${emp.department}</td>
                        <td>
                            <!-- Thêm nút hoặc liên kết hành động ở đây -->
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </form>

    </div>
</div>

<script src="resources/js/ListEmployee.js"></script>

</body>
</html>