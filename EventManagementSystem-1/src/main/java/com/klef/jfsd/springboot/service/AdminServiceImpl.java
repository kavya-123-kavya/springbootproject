package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Cousellor;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CousellorRepository;

import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminrep;
	@Autowired
	private StudentRepository studentrep;
	@Autowired
	private CousellorRepository cousellorrep;
	
	@Override
	public List<Student> viewallcustomer() {
		
		return studentrep.findAll();
	}

	@Override
	public List<Cousellor> viewallorganizer() {
		
		return  cousellorrep.findAll();
	}

	@Override
	public Admin admincheck(String username, String password) {
		return adminrep.adminlogin(username, password);
	}

	@Override
	public Student viewcusbuid(int id) {
		
		Optional<Student> a=studentrep.findById(id);
		if(!a.isEmpty())
		{
			Student aa=a.get();
			return aa;
		}
		else 
		{
			return null;
		}
	}

	@Override
	public Cousellor vieworgbyid(int id) {
		
		Optional<Cousellor> a=cousellorrep.findById(id);
		if(!a.isEmpty())
		{
			Cousellor aa=a.get();
			return aa;
		}
		else 
		{
			return null;
		}	
		
	}

	@Override
	public int updatestatus(boolean active, int eid) {
		
		return adminrep.updatestatus(active, eid);
	}

}
