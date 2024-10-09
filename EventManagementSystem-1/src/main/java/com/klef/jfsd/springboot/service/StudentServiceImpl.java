package com.klef.jfsd.springboot.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.klef.jfsd.springboot.model.Student;

import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentRepository studentrep;
	@Override
	public String addcustomer(Student cus) {
		studentrep.save(cus);
		return "Student added successfully";
	}
	@Override
	public Student checklogin(int sid, String pword) {
		return studentrep.checklogin(sid, pword);
	}
	@Override
	public Student viewcutomerbyid(int eid) {
		
		Optional<Student>obj=studentrep.findById(eid);
		
		if(!obj.isEmpty())
		{
			Student cus=obj.get();
			return cus;
		}
		else 
		{
			return null;
		}
	}
	
	
	@Override
	public String updatecustomer(Student cus) {
		Student c=studentrep.findById(cus.getId()).get();
		c.setFname(cus.getFname());
		c.setLname(cus.getLname());
		c.setUsername(cus.getUsername());
		c.setGender(cus.getGender());
		c.setDateofbirth(cus.getDateofbirth());
		c.setEmail(cus.getEmail());
		c.setContact(cus.getContact());
		c.setAddress(cus.getAddress());
		c.setLocation(cus.getLocation());
		c.setPincode(cus.getPincode());
		
		studentrep.save(c);
		
		return "Student Updated successfully";
	}

}
