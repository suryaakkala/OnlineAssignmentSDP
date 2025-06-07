package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.repository.FacultyRepository;


public class FacultyServiceImpl implements FacultyService
{
	@Autowired
	private FacultyRepository facultyRepository;

	
}
