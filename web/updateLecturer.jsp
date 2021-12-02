<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Register Lecturer</title>
    <link rel="stylesheet" type = "text/css" href="styles/registerLecturer.css">

</head>

<body>

<div class="container">
    <div class="content">
        <div class="sidebar">
            <ul class="side-nav">

                <li class="side-nav__item">
                    <a href="Landing.jsp" class="side-nav__link">
                        <i class="car icon side-nav__icon"></i>
                        <div class="side-nav__text">Home</div>
                    </a>
                </li>

                <li class="side-nav__item">
                    <a href="registerLecturer.jsp" class="side-nav__link">
                        <i class="search icon side-nav__icon"></i>
                        <div class="side-nav__text">Add Lecturer</div>
                    </a>
                </li>

                <li class="side-nav__item">
                    <a href="viewLecturer.jsp" class="side-nav__link">
                        <i class="tasks icon side-nav__icon"></i>
                        <div class="side-nav__text">Lecturers Details</div>
                    </a>
                </li>

                <li class="side-nav__item side-nav__item--active">
                    <a href="#" class="side-nav__link">
                        <i class="tasks icon side-nav__icon"></i>
                        <div class="side-nav__text">Update Details</div>
                    </a>
                </li>

            </ul>

            <div class="legal">
                Copyright &copy; 2021 SLIIT. All Rights Reserved.
            </div>
        </div>

        <div class="main-content">
            <div class = "regform"><h2>Update Lecturer Details</h2></div>
            <div class = "main">

                <form id="form" method = "post" action = "<%=request.getContextPath()%>/LecturerEditServlet">

                    <div class="form-control">

                        <input type="hidden" name="userId" value="<%=request.getParameter("userId")%>" required>
                        <h2 class ="name">Staff Id</h2>
                        <input class ="ID "type="text" name="staffId" value="<%=request.getParameter("staffId")%>" required>

                        <h2 class ="name"> N.I.C</h2>
                        <input class="NIC" type="text" name="NIC" value="<%=request.getParameter("NIC")%>" required>

                        <h2 class ="name">Name</h2>
                        <input class ="FullName" type ="text" name="name" value="<%=request.getParameter("name")%>" required>

                        <h2 class="name">Section</h2>
                        <input class="Section" type="text" name="section" value="<%=request.getParameter("section")%>" required>

                        <h2 class="name">E-Mail </h2>
                        <input class="Email" type="text" name="email" value="<%=request.getParameter("email")%>" required>

                        <h2 class="name"> Username</h2>
                        <input class ="Username" type="text" name="username" value="<%=request.getParameter("username")%>" required>

                        <h2 class="name">Password</h2>
                        <input class ="Password" type="password" name="password" value="<%=request.getParameter("password")%>" required><br>

                        <center>
                            <button type ="submit">Update</button>
                        </center>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
