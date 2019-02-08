package com.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "userregister")
public class UserVO {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "email")
	private String email;	

	@Column(name = "name")
	private String name;	

	@Column(name = "gender")
	private String gender;
	
	@Column(name = "politicalInclination")
	private String politicalInclination;
	
	@Column(name = "loginForeignKey")
	private LoginVO loginForeignKey;
	
}
