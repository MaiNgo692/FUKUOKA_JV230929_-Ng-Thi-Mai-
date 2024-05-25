<%--
  Created by IntelliJ IDEA.
  User: NGO MAI
  Date: 5/25/2024
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Thêm mới sinh viên</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container center" >
    <h2 class="center">Thêm mới sinh viên</h2>
    <f:form action="/create" modelAttribute="student" method="post" enctype="multipart/form-data">
        <h4 class="text-success">${success}</h4>
        <h4 class="text-danger">${fail}</h4>
        <div class="container flex-box ">
            <div class="mb-3">
                <label class="form-label">Họ và tên</label>
                <input name="studentName" type="text" class="form-control"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Địa chỉ</label>
                <input name="address" type="text" class="form-control"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Ngày sinh</label>
                <input name="birthday" type="date" pattern="dd/MM/yyyy" class="form-control"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Ảnh</label>
                <input name="imageUrl" type="file" class="form-control"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Số điện thoại</label>
                <input name="phoneNumber" type="text" class="form-control"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Giới tính</label>
                <div class="form-check">
                    <input name="sex" type="radio" value="true" class="form-check-input" checked/>
                    <label class="form-check-label">Nam</label>
                </div>
                <div class="form-check">
                    <input name="sex" type="radio" value="false" class="form-check-input"/>
                    <label class="form-check-label">Nữ</label>
                </div>
            </div>
            <div class="btn-group-justified m-3">
                <button class=" btn btn-primary" type="submit">Thêm</button>
                <button class="btn btn-info"><a href="index" class="btn-link">Trang chủ</a></button>
            </div>

        </div>

    </f:form>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
