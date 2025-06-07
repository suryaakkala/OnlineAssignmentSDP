package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

	
	@Autowired 
	private StudentService studentService;
	 

	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}

	@GetMapping("studentreg")
	public ModelAndView customerreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentreg");
		return mv;
	}
	
	

	@PostMapping("insertstudent")
	public ModelAndView insertcustomer(HttpServletRequest request)
	{
		// take the data from the HTML to middle
		String name = request.getParameter("sname");
		String gender = request.getParameter("sgender");
		String email = request.getParameter("semail");
		String password = request.getParameter("spwd");
		String department = request.getParameter("sdept");
		
		Student student = new Student();
		student.setName(name);
		student.setGender(gender);
		student.setEmail(email);
		student.setPassword(password);
		student.setDepartment(department);
		
		String message = studentService.StudentRegistration(student);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		mv.addObject("message", message);
		
		return mv;
		
	}
	
	@GetMapping("studenthome")
	public ModelAndView studenthome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studenthome");
		return mv;
	}
	@GetMapping("studentprofile")
	public ModelAndView studentprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentprofile");
		return mv;
	}
	
	@GetMapping("studentlogin")
	public ModelAndView studentlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;
	}
	
	@PostMapping("checkstudentlogin")
	public ModelAndView checkstudentlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		
		String semail = request.getParameter("semail");
		String spwd = request.getParameter("spwd");
		
		Student student = studentService.checkStudentLogin(semail, spwd);
		
		if(student!=null)
		{
			HttpSession session = request.getSession();
			
			session.setAttribute("student", student); 
			
			
			mv.setViewName("studenthome"); // login success
		}
		else
		{
			mv.setViewName("studentlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("updatestudentprofile")
	public ModelAndView updatestudentprofile()
	{
		ModelAndView mv = new ModelAndView("updatestudentprofile");
		
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView update(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		int id = Integer.parseInt(request.getParameter("sid"));
		String name = request.getParameter("sname");
		String gender = request.getParameter("sgender");
		String password = request.getParameter("spwd");
		String department = request.getParameter("sdept");
		
		Student student = new Student();
		student.setId(id);
		student.setName(name);
		student.setGender(gender);
		student.setPassword(password);
		student.setDepartment(department);
		
		studentService.updateStudent(student);
		
		// create new session variable for Customer
		
		mv.setViewName("home");
		
		return mv;
	}
	
	
	@GetMapping("studentlogout")
	public ModelAndView studentlogout()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;
	}

}
