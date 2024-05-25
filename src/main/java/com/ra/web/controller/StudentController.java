package com.ra.web.controller;

import com.ra.web.entity.StudentEntity;
import com.ra.web.entity.StudentRequest;
import com.ra.web.service.impl.StudentServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class StudentController {
    private StudentServiceImpl studentService;

    public StudentController(StudentServiceImpl studentService) {
        this.studentService = studentService;
    }

    @GetMapping({"","/index"})
    public String index(Model model){
        List<StudentEntity> studentEntityList = studentService.findAll();
        if(studentEntityList.size()!=0){
            model.addAttribute("data",studentEntityList);
        }
        return "/index";
    }

    @GetMapping("/create")
    public String create(Model model){
        StudentRequest studentRequest = new StudentRequest();
        model.addAttribute("student",studentRequest);
        return "/create";
    }
    @PostMapping("/create")
    public String createStudent(@ModelAttribute("student") StudentRequest studentRequest, BindingResult bindingResult, Model model){
        StudentEntity student = studentService.create(studentRequest);
        if(student!=null){
            model.addAttribute("success","Tạo mới thành công!");
        }else {
            model.addAttribute("fail","Tạo mới thất bại!");
        }
        return "/create";
    }
    @GetMapping("/delete/{id}")
    public String create(@PathVariable Integer id,  Model model){
        StudentEntity student = studentService.findById(id);
        if(student!=null){
            studentService.delete(student);
            model.addAttribute("success","Xóa thành công!");
        }else {
            model.addAttribute("fail","Xóa thất bại!");
        }
        return index(model);
    }
    @GetMapping("/update/{id}")
    public String update(@PathVariable Integer id,@ModelAttribute("student")StudentRequest studentRequest,  Model model){
        StudentEntity student = studentService.findById(id);
        if(student!=null){
            model.addAttribute("student",student);
            return "/update";
        }else {
            model.addAttribute("fail","Id không tồn tại!");
            return index(model);
        }

    }
    @PostMapping("/update/{id}")
    public String updateStudent(@PathVariable Integer id,@ModelAttribute("student")StudentRequest studentRequest,  Model model){
        StudentEntity student = studentService.findById(id);
        if(student!=null){
           studentService.update(studentRequest,student);
                model.addAttribute("success", "Cập nhật thành công!");
        }else {
            model.addAttribute("fail","Id không tồn tại!");
        }
        return index(model);
    }
}
