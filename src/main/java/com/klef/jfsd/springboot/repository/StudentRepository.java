package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer>
{
	@Query("select s from Student s where s.email=?1 and s.password=?2")
	public Student checkStudentLogin(String email,String password);

}
