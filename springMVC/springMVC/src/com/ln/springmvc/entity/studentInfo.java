package com.ln.springmvc.entity;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class studentInfo {

	private int id;
	@NotEmpty
	private String name;
	@Email
	private String email;
	private String password;
	private Integer sex;
	private int age;
	private String pic;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public studentInfo(int id, String name, String email, String password, Integer sex, int age, String pic) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.sex = sex;
		this.age = age;
		this.pic = pic;
	}
	public studentInfo() {
		super();
	}
	@Override
	public String toString() {
		return "studentInfo [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", sex="
				+ sex + ", age=" + age + ", pic=" + pic + "]";
	}
	
	
	
	
	
	
	
}
