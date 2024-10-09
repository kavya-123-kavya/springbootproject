package com.klef.jfsd.springboot.service;


import com.klef.jfsd.springboot.model.Cousellor;

public interface CousellorService 
{
	public String addorganizer(Cousellor org);
	
	  public Cousellor viewcutomerbyid(int eid);
	  public String updatecustomer(Cousellor c);
	  public Cousellor checklogin(int cid,String pword);
	  public Cousellor checkstatus(int cid);
}
