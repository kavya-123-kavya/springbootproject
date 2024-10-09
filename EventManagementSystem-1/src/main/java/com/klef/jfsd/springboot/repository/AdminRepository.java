package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;

import jakarta.transaction.Transactional;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer>
{
	@Query("select c from Admin c where username=?1 and password=?2")
	public Admin adminlogin(String username,String pword);
	
	@Query("update Cousellor set active=?1 where id=?2")
    @Modifying //whenever you user update,atler,changing in records then we need to use this
    @Transactional
    public int updatestatus(boolean active,int eid);
}
