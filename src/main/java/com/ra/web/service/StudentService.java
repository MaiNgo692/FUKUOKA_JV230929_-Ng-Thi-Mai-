package com.ra.web.service;

import com.ra.web.entity.StudentEntity;
import com.ra.web.entity.StudentRequest;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface StudentService {
    List<StudentEntity> findAll();
    StudentEntity findById(Integer id);
    StudentEntity create(StudentRequest studentRequest);
    List<StudentEntity> findByName(String name);
    StudentEntity update(StudentRequest studentRequest,StudentEntity student);
    void delete(StudentEntity student);
}
