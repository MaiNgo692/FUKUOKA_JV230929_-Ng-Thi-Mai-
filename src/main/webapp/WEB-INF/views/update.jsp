<%--
  Created by IntelliJ IDEA.
  User: NGO MAI
  Date: 5/25/2024
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Cập nhật thông tin sinh viên</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container center" >
    <h2 class="center">Cập nhật thông tin sinh viên</h2>
    <f:form action="/update" modelAttribute="student" method="post" enctype="multipart/form-data">
        <h4 class="text-success">${success}</h4>
        <h4 class="text-danger">${fail}</h4>
        <input path="idStudent" type="hidden">
        <div class="container flex-box ">
            <div class="mb-3">
                <label class="form-label">Họ và tên</label>
                <f:input path="studentName" type="text" class="form-control"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Địa chỉ</label>
                <f:input path="address" type="text" class="form-control"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Ngày sinh</label>
                <f:input path="birthday" type="date" pattern="dd/MM/yyyy" class="form-control"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Ảnh</label>
                <img src="${student.imageUrl}" alt="${student.studentName}" width="100px">
                <f:input path="imageUrl" type="file" class="form-control"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Số điện thoại</label>
                <f:input path="phoneNumber" type="text" class="form-control"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Giới tính</label>
                <div class="form-check">
                    <input name="sex" type="radio" value="true" class="form-check-input" <c:if test="${student.sex}">checked</c:if>/>
                    <label class="form-check-label">Nam</label>
                </div>
                <div class="form-check">
                    <input name="sex" type="radio" value="false" class="form-check-input"<c:if test="${!student.sex}">checked</c:if>/>
                    <label class="form-check-label">Nữ</label>
                </div>
            </div>
            <div class="btn-group-justified m-3">
                <button class=" btn btn-primary" type="submit">Lưu</button>
                <button class="btn btn-info"><a href="index" class="btn-link">Trang chủ</a></button>
            </div>

        </div>

    </f:form>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
