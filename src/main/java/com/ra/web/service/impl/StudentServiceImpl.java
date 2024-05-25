package com.ra.web.service.impl;

import com.ra.web.entity.StudentRequest;
import com.ra.web.repository.StudentRepository;
import com.ra.web.entity.StudentEntity;
import com.ra.web.service.StudentService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
    private final StudentRepository studentRepository;
    private final FileServiceImpl fileService;
    public StudentServiceImpl(StudentRepository studentRepository, FileServiceImpl fileService) {
        this.studentRepository = studentRepository;
        this.fileService = fileService;
    }

    @Override
    public List<StudentEntity> findAll() {
        return studentRepository.findAll();
    }

    @Override
    public StudentEntity findById(Integer id) {
        return studentRepository.findById(id).orElse(null);
    }

    @Override
    public StudentEntity create(StudentRequest studentRequest) {
        StudentEntity student = new StudentEntity();
        if(studentRequest.getImageUrl()!=null){
            student.setImageUrl(fileService.upload(studentRequest.getImageUrl()));
        }
        student.setAddress(studentRequest.getAddress());
        student.setBirthday(studentRequest.getBirthday());
        student.setStudentName(studentRequest.getStudentName());
        student.setPhoneNumber(studentRequest.getPhoneNumber());
        student.setSex(studentRequest.getSex());
        return studentRepository.save(student);
    }
    @Override
    public List<StudentEntity> findByName(String name) {
        return studentRepository.findStudentEntitiesByStudentNameContainingIgnoreCase(name);
    }

    @Override
    public StudentEntity update(StudentRequest studentRequest, StudentEntity student) {
        if(studentRequest.getImageUrl()!=null){
            student.setImageUrl(fileService.upload(studentRequest.getImageUrl()));
        }
        student.setAddress(studentRequest.getAddress());
        student.setBirthday(studentRequest.getBirthday());
        student.setStudentName(studentRequest.getStudentName());
        student.setPhoneNumber(studentRequest.getPhoneNumber());
        student.setSex(studentRequest.getSex());
        return studentRepository.save(student);
    }

    @Override
    public void delete(StudentEntity student) {
        studentRepository.delete(student);
    }

}
