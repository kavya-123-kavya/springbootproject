package com.klef.jfsd.springboot.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Cousellor;

import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.StudentService;
import com.klef.jfsd.springboot.service.CousellorService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	@Autowired
	private AdminService adminservice;
	@Autowired
	private StudentService studentservice;
	@Autowired
	private CousellorService cousellorservice;
	
	
	
	@GetMapping("/")
	public String index()
	{
		return "index";
	}
	@GetMapping("login")
	public String login()
	{
		return "login";
	}
	@GetMapping("register")
	public String register()
	{
		return "register";
	}
	@GetMapping("about")
	public String about()
	{
		return "about";
	}
	@GetMapping("contact")
	public String contact()
	{
		return "contact";
	}
	
	
	
	
	
	
	
	
	
//customer routessss............................................................
	@PostMapping("addcustomer")
	public ModelAndView addcustomer(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String msg=null;
		try {
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");
			String username=request.getParameter("username");
			int sid= Integer.parseInt(request.getParameter("id"));
			String password=request.getParameter("password");
			String email=request.getParameter("email");
			String gender=request.getParameter("gender");
			String dob=request.getParameter("dob");
			String contact=request.getParameter("contact");
			String location=request.getParameter("location");
			String address=request.getParameter("address");
			String pincode=request.getParameter("pincode");
			
			Student cus=new Student();
			cus.setFname(fname);
			cus.setLname(lname);
			cus.setUsername(username);
			cus.setSid(sid);
			cus.setPassword(password);
			cus.setEmail(email);
			cus.setGender(gender);
			cus.setDateofbirth(dob);
			cus.setContact(contact);
			cus.setLocation(location);
			cus.setAddress(address);
			cus.setPincode(pincode);
			cus.setActive(true);
			msg=studentservice.addcustomer(cus);
			mv.setViewName("login");
			mv.addObject("name",username);
			
		}
		catch(Exception e)
		{
			msg="Error occured";
   		 	mv.setViewName("register");
	    	mv.addObject("message",msg);
		}
		return mv;
	}
	
	@PostMapping("checkcuslogin")
	public ModelAndView checkcuslogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		int sid=Integer.parseInt(request.getParameter("id"));
		String password=request.getParameter("password");
		
		Student cus=studentservice.checklogin(sid,password);
		
		if(cus!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("username",cus.getUsername());
			session.setAttribute("id", cus.getId());
			session.setAttribute("email", cus.getEmail());
			mv.setViewName("Student/studenthome");
			
		}
		else
		{
			mv.setViewName("login");
			mv.addObject("message","Login Failed !..Please Enter correct detials");
		}
		return mv;
	}
	
	@GetMapping("customerhome")
	public ModelAndView customerhome(HttpServletRequest request)
	{
		
		HttpSession session=request.getSession();
		
	   	 int id=(int)session.getAttribute("id"); //eid is session variable
	   	 
	   	 String username=(String)session.getAttribute("username"); //ename is session variable
	   	 
	   	 
	   	ModelAndView mv=new ModelAndView();
	      mv.setViewName("Student/studenthome");
	      mv.addObject("id",id);
	      mv.addObject("username",username);
	      return mv;
	}
	
	@GetMapping("customercontact")
	public ModelAndView customercontact(HttpServletRequest request)
	{
	 	HttpSession session=request.getSession();
		
	   	 int id=(int)session.getAttribute("id"); //eid is session variable
	   	 
	   	 String username=(String)session.getAttribute("username"); //ename is session variable
	   	 
	   	String email=(String)session.getAttribute("email");
	   	
	   	ModelAndView mv=new ModelAndView();
	      mv.setViewName("Student/studentcontact");
	      mv.addObject("id",id);
	      mv.addObject("username",username);
	      mv.addObject("email",email);
	      return mv;
	}
	
	@GetMapping("cusprofile")
    public ModelAndView viewempdemo(HttpServletRequest request)
    {
		HttpSession session=request.getSession();
		
	   	 int id=(int)session.getAttribute("id");
     Student cus = studentservice.viewcutomerbyid(id);
      ModelAndView mv = new ModelAndView();
      mv.setViewName("Student/studentprofile");
      mv.addObject("cus", cus);
      return mv;
    }
	
	@GetMapping("updateprofile")
	public ModelAndView updateprofile(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		
	   	 int id=(int)session.getAttribute("id");
	   	  Student cus = studentservice.viewcutomerbyid(id);
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("Student/studentupdate");
	      mv.addObject("cus", cus);
	      return mv;
	}
	
	@PostMapping("update")
	public ModelAndView update(HttpServletRequest request)
	{
		String msg=null;
		HttpSession session=request.getSession();
		
	   	 int id=(int)session.getAttribute("id");
	   	 ModelAndView mv=new ModelAndView();
	   	 try {
	   		 
	   		String fname=request.getParameter("fname");
	   		String lname=request.getParameter("lname");
	   		String username=request.getParameter("username");
	   		String gender=request.getParameter("gender");
	   		String email=request.getParameter("email");
	   		String dateofbirth=request.getParameter("dob");
	   		String contact=request.getParameter("contact");
	   		String location=request.getParameter("location");
	   		String address=request.getParameter("address");
	   		String pincode=request.getParameter("pincode");
	   		
	   		Student c=new Student();
	   		 c.setId(id);
	   		 c.setFname(fname);
	   		 c.setLname(lname);
	   		 c.setUsername(username);
	   		 c.setGender(gender);
	   		 c.setDateofbirth(dateofbirth);
	   		 c.setEmail(email);
	   		 c.setContact(contact);
	   		 c.setLocation(location);
	   		 c.setAddress(address);
	   		 c.setPincode(pincode);
	   		 msg=studentservice.updatecustomer(c);
	   		Student cus = studentservice.viewcutomerbyid(id);
	   		mv.addObject("cus", cus);
	        mv.setViewName("Student/studentprofile");
	        
	   		 
	   		 mv.addObject("msg", msg);
	   		 
	   	 }
	   	 catch(Exception e)
	   	 {
	   		 msg=e.getMessage();
	   		 mv.setViewName("Customer/cusupdate");
	   		 mv.addObject("msg",msg);
	   	 }
	   	 return mv;
	}
	
	//......................................................................
	
	//Organizer routes andi......................
	
	@GetMapping("orglogin")
	public String orglogin()
	{
		return "Organizer/orglogin";
	}
	@GetMapping("orgregistration")
	public String orgregistration()
	{
		return "Organizer/orgregister";
	}
	
	@GetMapping("orghome")
	public String orghome()
	{
		return "Organizer/orghome";
	}
	
	
	@PostMapping("addorganizer")
	public ModelAndView addorganizer(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String msg=null;
		try {
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			int cid= Integer.parseInt(request.getParameter("id"));
			String email=request.getParameter("email");
			String gender=request.getParameter("gender");
			String dob=request.getParameter("dob");
			String contact=request.getParameter("contact");
			String location=request.getParameter("location");
			String address=request.getParameter("address");
			String pincode=request.getParameter("pincode");
			
			Cousellor org=new Cousellor();
			org.setFname(fname);
			org.setLname(lname);
			org.setCid(cid);
			org.setUsername(username);
			org.setPassword(password);
			org.setEmail(email);
			org.setGender(gender);
			org.setDateofbirth(dob);
			org.setContact(contact);
			org.setLocation(location);
			org.setAddress(address);
			org.setPincode(pincode);
			org.setActive(false);
			
			msg=cousellorservice.addorganizer(org);
			mv.setViewName("Organizer/orglogin");	
		}
		catch(Exception e)
		{
			msg="Error occured";
   		 	mv.setViewName("Organizer/orgregister");
	    	mv.addObject("message",msg);
		}
		return mv;
	}
	
	@PostMapping("checkorganizerlogin")
	public ModelAndView checkorglogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		int cid= Integer.parseInt(request.getParameter("id"));
		String password=request.getParameter("password");
		
		Cousellor org=cousellorservice.checklogin(cid, password);
		
		if(org!=null)
		{
			if(org.isActive()==true)
			{
			HttpSession session=request.getSession();
			session.setAttribute("username",org.getUsername());
			session.setAttribute("cousellorid", org.getId());
			session.setAttribute("email", org.getEmail());
			mv.setViewName("Organizer/orghome");
			}
			else
			{
				mv.setViewName("Organizer/orglogin");
				mv.addObject("message","Login Failed !..Check Status");
			}
			
		}
		else
		{
			
				mv.setViewName("Organizer/orglogin");
				mv.addObject("message","Login Failed !..Please enter Correct details");
			
		}
		return mv;
	}
	
	@PostMapping("checkorgstatus")
	public ModelAndView checkstatus(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		
		int cid= Integer.parseInt(request.getParameter("id"));
		
		Cousellor org=cousellorservice.checkstatus(cid);
		if(org!=null)
		{
			if(org.isActive()==true)
			{
			mv.addObject("statususername",org.getUsername());
			mv.addObject("active","Accepted");
			mv.addObject("msg","Your Account is ");
			mv.setViewName("Organizer/orglogin");
			}
			else
			{
				mv.setViewName("Organizer/orglogin");
				mv.addObject("statususername",org.getUsername());
				mv.addObject("msg","Your Account is ");
				mv.addObject("active","Pending");
			}
		}
		else
		{
			mv.setViewName("Organizer/orglogin");
			
			mv.addObject("msg","please register an account ");
		}
		return mv;
	}
	
	@GetMapping("cousellorviewcustomer")
	public ModelAndView viewallcustomerbyorg()
	{
		ModelAndView mv=new ModelAndView();
		List<Student> cuslist=adminservice.viewallcustomer();
		mv.addObject("cusdata", cuslist);
		mv.setViewName("Organizer/viewstudents");
		return mv;
	}
	
	@GetMapping("cousellorprofile")
	public ModelAndView cousellorprofile(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		
		int id=(int)session.getAttribute("cousellorid");

		Cousellor cuslist=cousellorservice.viewcutomerbyid(id);
		mv.addObject("cusdata", cuslist);
		mv.setViewName("Organizer/orgprofile");
		return mv;
	}
	
	
	//...........................................................................
	
	//Admin Routes andiii..........................
	
	@GetMapping("adminlogin")
	public String adminlogin()
	{
		return "Admin/adminlogin";
	}
	
	
	@GetMapping("adminhome")
	public String adminhome()
	{
		
		return "Admin/adminhome";
	}
	
	
	@PostMapping("adminlogincheck")
	public ModelAndView admincheck(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		Admin ad=adminservice.admincheck(username, password);
		
		if(ad!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("username",username);
			session.setAttribute("id", ad.getId());
			mv.setViewName("Admin/adminhome");
			
		}
		else
		{
			mv.addObject("message", "invalid credentials");
			mv.setViewName("Admin/adminlogin");
		}
		return mv;
		
	}
	
	@GetMapping("adminviewcustomer")
	public ModelAndView viewallcustomerbyadmin()
	{
		ModelAndView mv=new ModelAndView();
		List<Student> cuslist=adminservice.viewallcustomer();
		mv.addObject("cusdata", cuslist);
		mv.setViewName("Admin/adminviewcus");
		return mv;
	}
	
	@GetMapping("view")
	public ModelAndView viewbyid(@RequestParam("id") int id)
	{
		Student cus=adminservice.viewcusbuid(id);
		ModelAndView mv=new ModelAndView();
		mv.addObject("cus",cus);
		mv.setViewName("Admin/adminviewcusbyid");
		return mv;
	}
	
	
	@GetMapping("adminvieworganizers")
	public ModelAndView viewallorganizerbyadmin()
	{
		ModelAndView mv=new ModelAndView();
		List<Cousellor> cuslist=adminservice.viewallorganizer();
		mv.addObject("cusdata", cuslist);
		mv.setViewName("Admin/adminvieworg");
		return mv;
	}
	
	@GetMapping("vieworg")
	public ModelAndView vieworgbyid(@RequestParam("id") int id)
	{
		Cousellor org=cousellorservice.viewcutomerbyid(id);
		ModelAndView mv=new ModelAndView();
		mv.addObject("cus",org);
		mv.setViewName("Admin/adminvieworgbyid");
		return mv;
	}
	
	
	@GetMapping("setstatus")
    public ModelAndView setstatusaction(@RequestParam("id") int eid,@RequestParam("status") boolean status)
    {
      int n = adminservice.updatestatus(status, eid);
      ModelAndView mv = new ModelAndView();
      mv.setViewName("Admin/adminvieworg");
      List<Cousellor> orglist =  adminservice.viewallorganizer();
      mv.addObject("cusdata", orglist);
        
     
      if(n>0)
      {
        mv.addObject("message", "Status Updated Successfully");
      }
      else
      {
        mv.addObject("message", "Failed to Update Status");
      }
      
      return mv;
    }
    
	
}
