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
	private String unit;
	private String post;
	private String contactNumber;
	private String qqID;
	private String weixinID;
	private String classHour;
	private String course;
	private String trainingTime;
	
	
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
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getQqID() {
		return qqID;
	}
	public void setQqID(String qqID) {
		this.qqID = qqID;
	}
	public String getWeixinID() {
		return weixinID;
	}
	public void setWeixinID(String weixinID) {
		this.weixinID = weixinID;
	}
	public String getClassHour() {
		return classHour;
	}
	public void setClassHour(String classHour) {
		this.classHour = classHour;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getTrainingTime() {
		return trainingTime;
	}
	public void setTrainingTime(String trainingTime) {
		this.trainingTime = trainingTime;
	}
	public studentInfo(int id, String name, String email, String password, Integer sex, int age, String pic,
			String unit, String post, String contactNumber, String qqID, String weixinID, String classHour,
			String course, String trainingTime) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.sex = sex;
		this.age = age;
		this.pic = pic;
		this.unit = unit;
		this.post = post;
		this.contactNumber = contactNumber;
		this.qqID = qqID;
		this.weixinID = weixinID;
		this.classHour = classHour;
		this.course = course;
		this.trainingTime = trainingTime;
	}
	public studentInfo() {
		super();
	}
	@Override
	public String toString() {
		return "studentInfo [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", sex="
				+ sex + ", age=" + age + ", pic=" + pic + ", unit=" + unit + ", post=" + post + ", contactNumber="
				+ contactNumber + ", qqID=" + qqID + ", weixinID=" + weixinID + ", classHour=" + classHour + ", course="
				+ course + ", trainingTime=" + trainingTime + "]";
	}
	
	
	
}
