package com.klef.jfsd.springboot.service;


import com.klef.jfsd.springboot.model.Student;

public interface StudentService 
{
  public String addcustomer(Student s);
  public Student viewcutomerbyid(int eid);
  public String updatecustomer(Student s);
  public Student checklogin(int sid,String pword);
}
