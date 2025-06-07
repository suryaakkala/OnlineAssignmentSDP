package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService
{
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public String StudentRegistration(Student student) {
		studentRepository.save(student);
		return "Student Registered Successfully";
	}

	@Override
	public Student checkStudentLogin(String email, String password) {
		return studentRepository.checkStudentLogin(email, password);
	}

	@Override
	public String updateStudent(Student student)
	{
		Student s = studentRepository.findById(student.getId()).get();
		s.setGender(student.getGender());
		s.setName(student.getName());
		s.setPassword(student.getPassword());
		s.setDepartment(student.getDepartment());
		
		studentRepository.save(s);
		
		return "Student Updated Successfully";
	}
	
	
	
}
