package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name="cousellor")
public class Cousellor 
{

	   @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	   @Column(name="id")
	   private int id;
	   @Column(name="c_fname",nullable = false ,length = 50)
	   private String fname;
	   @Column(name="c_lname",nullable = false,length = 50)
	   private String lname;
	   @Column(name="c_uname",nullable = false,unique = true,length = 50)
	   private String username;
	   
	   @Column(name="c_id",nullable = false,unique = true,length = 50)
	   private int cid;
	   
	   @Column(name="c_gender",nullable = false,length = 10)
	   private String gender;
	   @Column(name="c_dob",nullable = false,length = 20)
	   private String dateofbirth;
	   @Column(name="c_email",nullable = false,unique = true,length = 30)
	   private String email;
	   @Column(name="c_password",nullable = false,length = 30)
	   private String password;
	   @Column(name="c_location",nullable = false)
	   private String location;
	   @Column(name = "c_pincode",nullable = false)
	   private String pincode;
	   @Column(name="c_address",nullable = false)
	   private String address;
	   @Column(name="c_contact",nullable = false,unique = true)
	   private String contact;
	   @Column(name="c_active",nullable=false)
	   private boolean active;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
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
		return "Organizer [id=" + id + ", fname=" + fname + ", lname=" + lname + ", username=" + username + ", gender="
				+ gender + ", dateofbirth=" + dateofbirth + ", email=" + email + ", password=" + password
				+ ", location=" + location + ", pincode=" + pincode + ", address=" + address + ", contact=" + contact
				+ ", active=" + active + "]";
	}
}
