package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface Repository extends CrudRepository<User, Integer>{
	
	User findByUsername(String username);

}
