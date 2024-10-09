package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Cousellor;

@Repository
public interface CousellorRepository extends JpaRepository<Cousellor, Integer>
{
	@Query("select c from Cousellor c where cid=?1 and password=?2")
	public Cousellor checklogin(int cid,String pword);
	
	@Query("select c from Cousellor c where cid=?1")
	public Cousellor checkstatus(int cid);
}
