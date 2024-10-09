package com.klef.jfsd.springboot.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.klef.jfsd.springboot.model.Cousellor;
import com.klef.jfsd.springboot.repository.CousellorRepository;


@Service
public class OrganizerServiceImpl implements CousellorService {
	@Autowired
	private CousellorRepository cousellorRepository;
	@Override
	public String addorganizer(Cousellor org) {
		cousellorRepository.save(org);
		return "Cousellor added successfully";
	}
	@Override
	public Cousellor viewcutomerbyid(int eid) {
		Optional<Cousellor>obj=cousellorRepository.findById(eid);
		
		if(!obj.isEmpty())
		{
			Cousellor org=obj.get();
			return org;
		}
		else 
		{
			return null;
		}
	}
	@Override
	public String updatecustomer(Cousellor org) {
		Cousellor o=cousellorRepository.findById(org.getId()).get();
		o.setFname(org.getFname());
		o.setLname(org.getLname());
		o.setUsername(org.getUsername());
		o.setGender(org.getGender());
		o.setDateofbirth(org.getDateofbirth());
		o.setEmail(org.getEmail());
		o.setLocation(org.getLocation());
		o.setAddress(org.getAddress());
		o.setContact(org.getContact());
		o.setPincode(org.getPincode());
		
		cousellorRepository.save(o);
		return "updated successfully!..";
		
	}
	
	
	
	@Override
	public Cousellor checklogin(int cid, String pword) {
		
		return cousellorRepository.checklogin(cid, pword);
	}
	@Override
	public Cousellor checkstatus(int cid) {
		
		return cousellorRepository.checkstatus(cid);
	}

}
