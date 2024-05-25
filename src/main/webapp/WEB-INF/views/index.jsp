<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: NGO MAI
  Date: 5/25/2024
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Trang chủ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/index">Home</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<div class="container">
    <h2>Danh sách sinh viên</h2>
    <a href="/create">Thêm mới</a>
    <h4 class="text-success">${success}</h4>
    <h4 class="text-danger">${fail}</h4>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Mã sinh viên</th>
            <th scope="col">Ảnh sinh viên</th>
            <th scope="col">Tên Sinh viên</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col">Ngày sinh</th>
            <th scope="col">Số điện thoại</th>
            <th scope="col">Giới tính</th>
            <th scope="col">Thao tác</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="st" items="${data}">
            <tr>
                <th scope="row">${st.idStudent}</th>
                <td>${st.imageUrl}</td>
                <td>${st.studentName}</td>
                <td>${st.address}</td>
                <td>${st.birthday}</td>
                <td>${st.phoneNumber}</td>
                <td>${st.sex? "Nam":"Nữ"}</td>
                <td><a href="/update/${st.idStudent}">Edit</a>
                    <a href="/delete/${st.idStudent}" onclick="confirm('Bạn thực sự muốn xóa?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
        
        </tbody>
    </table>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
