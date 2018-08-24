package com.ln.springmvc.Dao;

import java.sql.SQLException;
import java.util.List;

import com.ln.springmvc.entity.studentInfo;

public interface studentDao {

	public void save(studentInfo si) throws SQLException;
	
	public void update(studentInfo si) throws SQLException;
	
	public List<studentInfo> findAll() throws SQLException;

	public void delete(Integer id) throws SQLException;

	studentInfo findByid(Integer id) throws SQLException;
	
	
	
}
