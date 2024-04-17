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
    <title>Candidate</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Premium Bootstrap 4 Landing Page Template"/>
    <meta name="keywords" content="Appointment, Booking, System, Dashboard, Health"/>
    <meta name="author" content="Shreethemes"/>
    <meta name="email" content="support@shreethemes.in"/>

    <meta name="Version" content="v1.2.0"/>
    <!-- favicon -->
    <link rel="shortcut icon" href="../../assets/images/favicon.ico.png">
    <!-- Bootstrap -->
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!-- simplebar -->
    <link href="../../assets/css/simplebar.css" rel="stylesheet" type="text/css"/>
    <!-- Select2 -->
    <link href="../../assets/css/select2.min.css" rel="stylesheet"/>
    <!-- Date picker -->
    <link rel="stylesheet" href="../../assets/css/flatpickr.min.css">
    <link href="../../assets/css/jquery.timepicker.min.css" rel="stylesheet" type="text/css"/>
    <!-- Icons -->
    <link href="../../assets/css/materialdesignicons.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/css/remixicon.css" rel="stylesheet" type="text/css"/>
    <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css" rel="stylesheet">
    <!-- Css -->
    <link href="../../assets/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt"/>
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
                <a href="index.html">
                    <h2>TEKLABS</h2>
                </a>
            </div>
        </div>
        <!-- sidebar-content  -->
        <%@include file="../sidebar.jsp" %>

    </nav>
    <!-- sidebar-wrapper  -->


    <!-- Start Page Content -->
    <main class="page-content bg-light">
        <%@include file="../headersidebar.jsp" %>


        <div class="container-fluid">
            <div class="layout-specing">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <h3 class="mb-0">Candidate</h3>
                        <nav aria-label="breadcrumb" class="d-inline-block mt-2">
                            <ul class="breadcrumb breadcrumb-muted bg-transparent rounded mb-0 p-0">
                                <li class="breadcrumb-item active" aria-current="page"><a
                                        href="/IMSs_war/view/candidatelist">List Candidate</a></li>
                                <li class="breadcrumb-item active" aria-current="page"><a
                                        href="/IMSs_war/view/createcandidate">Create Candidate</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>

                <div class="row" style="margin-top: 40px">
                    <div class="col-12">
                        <form action="/view/createcandidate" method="post">
                            <div class="row">
                                <h5 class="mb-0">I. Personal Information</h5>
                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label">Full Name<span
                                                class="text-danger">*</span></label>
                                        <input name="Fname" id="code" type="text" class="form-control"
                                               placeholder="Type of name...">
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label">Email <span
                                                class="text-danger">*</span></label>
                                        <input name="email" type="text" class="form-control"
                                               placeholder="Type of email...">
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label">D.O.B </label>
                                        <input name="dob" type="text"
                                               class="flatpickr flatpickr-input form-control"
                                               id="checkin-date">
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6 ">
                                    <div class="mb-3">
                                        <label class="form-label">Address : </label>
                                        <input name="address" type="text" class="form-control"
                                               placeholder="Type of address...">
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6 col-md-6">
                                    <div class="mb-6">
                                        <label class="form-label">Phone number</label>
                                        <input name="phone" type="text" class="form-control"
                                               placeholder="Type of number :">
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6 col-md-6">
                                    <div class="mb-6">
                                        <label class="form-label">Gender</label>
                                        <select class="form-select form-control" id="inputGroupSelect01">
                                            <option>Select a gender</option>
                                            <option>1</option>
                                            <option>2</option>
                                        </select>
                                    </div>
                                </div><!--end col-->
                                <h5 class="mb-0">II. Professional Information</h5>
                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label">CV attechment</label>
                                        <input name="cv" type="file" class="form-control">
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label">Note</label>
                                        <input name="note" type="text" class="form-control"
                                               placeholder="N/A">
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <label class="form-label">Position<span
                                                class="text-danger">*</span></label>
                                        <select class="form-select form-control" id="inputGroupSelect01"
                                                name="position">
                                            <option>Select a position..ex. Backend developer,..</option>
                                            <option>Frontend developer</option>
                                            <option>Full stack</option>
                                        </select>
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6 ">
                                    <div class="mb-3">
                                        <label class="form-label">Status <span
                                                class="text-danger">*</span> </label>
                                        <select class="form-select form-control" id="inputGroupSelect01" name="status">
                                            <option>Select a status</option>
                                            <option>Doing</option>
                                            <option>To-Do</option>
                                            <option>Done</option>
                                        </select>
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6 col-md-6">
                                    <div class="mb-6">
                                        <label class="form-label">Skills<span class="text-danger">*</span></label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="selected-skills-input" placeholder="Selected skills...">
                                            <ul id="selected-skills-list" class="selected-skills-list"></ul>
                                            <button class="btn btn-outline-secondary" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                                Choose Skills
                                            </button>
                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <li><a class="dropdown-item" href="#" data-skill="Java">Java</a></li>
                                                <li><a class="dropdown-item" href="#" data-skill="Node.js">Node.js</a></li>
                                                <li><a class="dropdown-item" href="#" data-skill="System Design">System Design</a></li>
                                                <!-- Thêm các lựa chọn khác tương tự -->
                                            </ul>
                                        </div>
                                    </div>
                                </div><!--end col-->




                                <div class="col-lg-6 col-md-6">
                                    <div class="mb-6">
                                        <label class="form-label">Year of Experience</label>
                                        <input name="YoE" type="number" class="form-control"
                                               placeholder="Type of number">
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6 col-md-6">
                                    <div class="mb-6">
                                        <label class="form-label">Recruiter<span
                                                class="text-danger">*</span></label>
                                        <input name="YoE" type="number" class="form-control"
                                               placeholder="Recruiter name"><a href="#">Assign me</a>
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-6 col-md-6">
                                    <div class="mb-6">
                                        <label class="form-label">Highest level<span
                                                class="text-danger">*</span></label>
                                        <select class="form-select form-control" id="inputGroupSelect01" name="Hlevel">
                                            <option>Select highest level</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                        </select>
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-3">
                                    <div class="d-grid" style="margin-top: 10px">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                    <div class="d-grid" style="margin-top: 10px">
                                        <button type="submit" class="btn btn-primary">Cancel</button>
                                    </div>
                                </div><!--end col-->
                            </div><!--end row-->
                        </form>
                    </div>
                </div><!--end row-->
            </div>
        </div><!--end container-->
    </main>
    <!--End page-content" -->
</div>
<!-- page-wrapper -->

<!-- javascript -->
<script src="../../assets/js/jquery.min.js"></script>
<script src="../../assets/js/bootstrap.bundle.min.js"></script>
<!-- simplebar -->
<script src="../../assets/js/simplebar.min.js"></script>
<!-- Select2 -->
<script src="../../assets/js/select2.min.js"></script>
<script src="../../assets/js/select2.init.js"></script>
<!-- Datepicker -->
<script src="../../assets/js/flatpickr.min.js"></script>
<script src="../../assets/js/flatpickr.init.js"></script>
<!-- Datepicker -->
<script src="../../assets/js/jquery.timepicker.min.js"></script>
<script src="../../assets/js/timepicker.init.js"></script>
<!-- Icons -->
<script src="../../assets/js/feather.min.js"></script>
<!-- Main Js -->
<script src="../../assets/js/app.js"></script>
<script>
    const selectedSkillsInput = document.getElementById('selected-skills-input');
    const selectedSkillsList = document.getElementById('selected-skills-list');
    const dropdownMenuItems = document.querySelectorAll('.dropdown-menu .dropdown-item');

    dropdownMenuItems.forEach(item => {
        item.addEventListener('click', function(event) {
            event.preventDefault(); // Ngăn chặn hành vi mặc định của thẻ <a>
            const skill = this.dataset.skill;
            if (skill) {
                const currentValue = selectedSkillsInput.value;
                const skillsArray = currentValue.split(',').map(skill => skill.trim()); // Chuyển chuỗi thành mảng các kỹ năng

                // Kiểm tra xem kỹ năng đã tồn tại trong danh sách hay chưa
                if (!skillsArray.includes(skill)) {
                    // Thêm kỹ năng vào trường nhập dữ liệu
                    if (currentValue) {
                        selectedSkillsInput.value = currentValue + ', ' + skill;
                    } else {
                        selectedSkillsInput.value = skill;
                    }
                    // Tạo nút x cho kỹ năng vừa được thêm vào
                    const skillElement = document.createElement('li');
                    skillElement.classList.add('selected-skill');
                    skillElement.textContent = skill;
                    const deleteButton = document.createElement('button');
                    deleteButton.textContent = 'x';
                    deleteButton.classList.add('delete-button');
                    deleteButton.addEventListener('click', function() {
                        // Xóa kỹ năng khỏi trường nhập dữ liệu và giao diện khi nhấn nút xóa
                        const skills = selectedSkillsInput.value.split(',').map(skill => skill.trim());
                        const index = skills.indexOf(skill);
                        if (index !== -1) {
                            skills.splice(index, 1);
                            selectedSkillsInput.value = skills.join(', ');
                            skillElement.remove();
                        }
                    });
                    skillElement.appendChild(deleteButton);
                    selectedSkillsList.appendChild(skillElement);
                    // Cập nhật giá trị của input khi có sự thay đổi
                    selectedSkillsInput.dispatchEvent(new Event('change'));
                } else {
                    // Nếu kỹ năng đã tồn tại, bạn có thể hiển thị một thông báo hoặc thực hiện hành động khác tùy ý
                    alert('Kỹ năng đã được chọn trước đó!');
                }
            }
        });
    });
</script>




</body>
</html>
