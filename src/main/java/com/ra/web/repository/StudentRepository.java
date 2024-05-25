package com.ra.web.repository;

import com.ra.web.entity.StudentEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

@Repository
public interface StudentRepository extends JpaRepository<StudentEntity, Integer> {
    List<StudentEntity> findStudentEntitiesByStudentNameContainingIgnoreCase(String name);
}
