package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin1;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;


public interface Adminservice 

{
	public String FacultyRegistration(Faculty faculty);
	public List<Student> viewAllStudents();
	public Admin1 checkAdminLogin(String uname,String pwd);
	public Faculty checkFacultyLogin(String email,String password);
	public Student displayStudentById(int id);
	
	public String updateFaculty(Faculty faculty);
}
