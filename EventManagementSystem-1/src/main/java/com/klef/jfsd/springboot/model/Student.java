package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "students")
public class Student 
{
	   @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	   @Column(name="cus_id")
	   private int id;
	   @Column(name="s_fname",nullable=false,length = 50)
	   private String fname;
	   @Column(name="s_lname",nullable=false,length = 50)
	   private String lname;
	   @Column(name="s_uname",nullable=false,length = 50)
	   private String username;
	   
	   
	   @Column(name="s_gender",nullable=false,length = 10)
	   private String gender;
	   
	   @Column(name="s_id",nullable=false)
	   private int sid;
	   
	   @Column(name="s_dob",nullable=false,length = 20)
	   private String dateofbirth;
	   @Column(name="s_email",nullable=false,unique = true,length = 30)
	   private String email;
	   @Column(name="s_password",nullable=false,length = 30)
	   private String password;
	   @Column(name="s_location",nullable=false)
	   private String location;
	   @Column(name = "s_pincode",nullable = false)
	   private String pincode;
	   @Column(name="s_address",nullable=false)
	   private String address;
	   @Column(name="s_contact",nullable=false,unique = true)
	   private String contact;
	   @Column(name="cus_active",nullable=false)
	   private boolean active; // true or false
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", fname=" + fname + ", lname=" + lname + ", gender=" + gender + ", dateofbirth="
				+ dateofbirth + ", email=" + email + ", password=" + password + ", location=" + location + ", pincode="
				+ pincode + ", address=" + address + ", contact=" + contact + ", active=" + active + "]";
	}
	
	
}