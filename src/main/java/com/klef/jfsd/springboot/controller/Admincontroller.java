package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import com.klef.jfsd.springboot.model.Admin1;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.Adminservice;
import com.klef.jfsd.springboot.service.FacultyService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class Admincontroller 
{
	@Autowired
	private Adminservice adminservice;
	
	@GetMapping("Adminlogin")
	public ModelAndView Adminlogin()
	{
		ModelAndView mv = new ModelAndView("Adminlogin");
		return mv;
	}
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin1 admin = adminservice.checkAdminLogin(auname, apwd);
		
		if(admin!=null)
		{
			mv.setViewName("adminhome"); // login success
		}
		else
		{
			mv.setViewName("adminloginfail");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("viewallstudents")
	public ModelAndView viewallstudents()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallstudents");
		
		List<Student> students = adminservice.viewAllStudents();
		mv.addObject("studentlist", students);
		
		return mv;
	}
	@GetMapping("facultyreg")
	public ModelAndView facultyreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facultyreg");
		return mv;
	}
	@PostMapping("insertfaculty")
	public ModelAndView insertfaculty(HttpServletRequest request)
	{
		String name = request.getParameter("fname");
		String gender = request.getParameter("fgender");
		String email = request.getParameter("femail");
		String password = request.getParameter("fpwd");
		String department = request.getParameter("fdept");
		
		Faculty faculty = new Faculty();
		faculty.setName(name);
		faculty.setGender(gender);
		faculty.setEmail(email);
		faculty.setPassword(password);
		faculty.setDepartment(department);
		
		String message = adminservice.FacultyRegistration(faculty);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facultylogin");
		mv.addObject("message", message);
		
		return mv;
		
	}
	

	@GetMapping("facultylogin")
	public ModelAndView facultylogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facultylogin");
		return mv;
	}
	@GetMapping("facultyhome")
	public ModelAndView facultyhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facultyhome");
		return mv;
	}
	
	@GetMapping("facultyprofile")
	public ModelAndView facultyprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facultyprofile");
		return mv;
	}
	@PostMapping("checkfacultylogin")
	public ModelAndView checkfacultylogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		
		String femail = request.getParameter("femail");
		String fpwd = request.getParameter("fpwd");
		
		Faculty faculty = adminservice.checkFacultyLogin(femail, fpwd);
		
		if(faculty!=null)
		{
			HttpSession session = request.getSession();
			
			session.setAttribute("faculty", faculty); 
			
			
			mv.setViewName("facultyhome"); // login success
		}
		else
		{
			mv.setViewName("facultylogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("viewstudentbyid")
	public ModelAndView viewstudentbyid()
	{
		
		ModelAndView mv = new ModelAndView();
		
		List<Student> students = adminservice.viewAllStudents();
		mv.addObject("studentlist", students);
		
		mv.setViewName("viewstudentbyid");
		return mv;
	}
	
	@PostMapping("displaystudent")
	public ModelAndView displaystudent(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		
		Student student = adminservice.displayStudentById(id);
		
		ModelAndView mv = new ModelAndView("displaystudent");
		mv.addObject("s",student);
		
		return mv;
	}
	
	@GetMapping("facultylogout")
	public ModelAndView facultylogout()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facultylogin");
		return mv;
	}
	
	@GetMapping("updatefacultyprofile")
	public ModelAndView updatefacultyprofile()
	{
		ModelAndView mv = new ModelAndView("updatefacultyprofile");
		
		return mv;
	}
	
	@PostMapping("updatefac")
	public ModelAndView updatefac(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		int id = Integer.parseInt(request.getParameter("fid"));
		String name = request.getParameter("fname");
		String gender = request.getParameter("fgender");
		String password = request.getParameter("fpwd");
		String department = request.getParameter("fdept");
		
		
		Faculty faculty = new Faculty();
		faculty.setId(id);
		faculty.setName(name);
		faculty.setGender(gender);
		faculty.setPassword(password);
		faculty.setDepartment(department);
		
		adminservice.updateFaculty(faculty);
		
		// create new session variable for Faculty
		
		mv.setViewName("home");
		
		return mv;
	}
	
	
}
