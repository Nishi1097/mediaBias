package com.demo.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "register")
public class RegisterVO {

	@Id
	@Column(name = "registerId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int registerId;
	
	
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "gender")
	private String gender;
	
	@Column(name = "age")
	private int age;
	
	@Column(name = "politicalInclination")
	private String politicalInclination;
	
	@Column(name = "state")
	private String state;
	
	@ManyToOne
	private LoginVO loginForeignKey;

	public int getRegisterId() {
		return registerId;
	}

	public void setRegisterId(int registerId) {
		this.registerId = registerId;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPoliticalInclination() {
		return politicalInclination;
	}

	public void setPoliticalInclination(String politicalInclination) {
		this.politicalInclination = politicalInclination;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public LoginVO getLoginForeignKey() {
		return loginForeignKey;
	}

	public void setLoginForeignKey(LoginVO loginForeignKey) {
		this.loginForeignKey = loginForeignKey;
	}
}
