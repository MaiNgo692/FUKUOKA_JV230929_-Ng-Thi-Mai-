package com.ra.web.entity;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.Basic;
import javax.persistence.Column;
import java.sql.Date;

public class StudentRequest {
    private String address;
    private Date birthday;
    private MultipartFile imageUrl;
    private String phoneNumber;

    private Boolean sex;
    private String studentName;

    public StudentRequest(String address, Date birthday, MultipartFile imageUrl, String phoneNumber, Boolean sex, String studentName) {
        this.address = address;
        this.birthday = birthday;
        this.imageUrl = imageUrl;
        this.phoneNumber = phoneNumber;
        this.sex = sex;
        this.studentName = studentName;
    }

    public StudentRequest() {
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public MultipartFile getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(MultipartFile imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Boolean getSex() {
        return sex;
    }

    public void setSex(Boolean sex) {
        this.sex = sex;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }
}
