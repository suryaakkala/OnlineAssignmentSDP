package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Student;

public interface StudentService 
{
	public String StudentRegistration(Student student);
	public Student checkStudentLogin(String email,String password);
	
	public String updateStudent(Student student);

}
