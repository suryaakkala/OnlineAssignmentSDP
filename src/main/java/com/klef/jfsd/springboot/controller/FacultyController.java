package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.service.Adminservice;
import com.klef.jfsd.springboot.service.FacultyService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class FacultyController 
{
	@Autowired 
	private FacultyService facultyService;
	
	@Autowired
	private Adminservice adminservice;
		
	
}
