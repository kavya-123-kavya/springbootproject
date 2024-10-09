package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Cousellor;

public interface AdminService
{
	public List<Student> viewallcustomer();
	public List<Cousellor> viewallorganizer();
	public Student viewcusbuid(int id);
	public Cousellor vieworgbyid(int id);
	public Admin admincheck(String username,String password);
	public int updatestatus(boolean active,int eid);
}
