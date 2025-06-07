package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin1;

@Repository
public interface Adminrepository extends JpaRepository<Admin1,String>
{
	@Query("select a from Admin1 a where a.username=?1 and a.password=?2")
	public Admin1 checkAdminLogin(String uname,String pwd);
}
