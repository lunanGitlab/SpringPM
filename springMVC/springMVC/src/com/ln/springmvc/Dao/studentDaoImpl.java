package com.ln.springmvc.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.ln.springmvc.entity.studentInfo;
@Repository
public class studentDaoImpl implements studentDao {
	 jdbcTemplate jdbcTemplate =  new jdbcTemplate();

	@Override
	public void save(studentInfo si) throws SQLException {
		
		String sql = "insert into userinfo (name,sex,age,email,password,pic)values(?,?,?,?,?,?)";
		jdbcTemplate.update(sql, si.getName(), si.getSex(), si.getAge(),si.getEmail(),si.getPassword(),si.getPic());
	}


	@Override
	public void update(studentInfo si) throws SQLException {
		String sql = "update userinfo set name=?,sex=?,age=?,email=?,password=?,pic=? where id=?";
		jdbcTemplate.update(sql,si.getName(),si.getSex(),si.getAge(),si.getEmail(),si.getPassword(),si.getPic(),si.getId());
	}
	
	
	

	@Override
	public studentInfo findByid(Integer id) throws SQLException {
		String sql = "SELECT id,name,sex,age,email,password,pic from userinfo where id = ?";
		return (studentInfo) jdbcTemplate.query(sql, new ResultSetHandler() {
			
			@Override
			public Object doHandler(ResultSet rs) throws SQLException {
				studentInfo si= null; 
				if(rs.next()) {
					 si = new studentInfo();
					 si.setId(rs.getInt(1));
					 si.setName(rs.getString(2));
					 si.setSex(rs.getInt(3));
					 si.setAge(rs.getInt(4));
					 si.setEmail(rs.getString(5));
					 si.setPassword(rs.getString(6));
					 si.setPic(rs.getString(7));
				}
				return si;
			}
		}, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<studentInfo> findAll() throws SQLException {
		String sql = "SELECT id,name,sex,age,email,password,pic from userinfo";
		return (List<studentInfo>) jdbcTemplate.query(sql, new ResultSetHandler() {
			
			@Override
			public Object doHandler(ResultSet rs) throws SQLException {
				List<studentInfo> list = new ArrayList<studentInfo>();
				studentInfo si = null;
			
				while(rs.next()) {
					 si = new studentInfo();
					 si.setId(rs.getInt(1));
					 si.setName(rs.getString(2));
					 si.setSex(rs.getInt(3));
					 si.setAge(rs.getInt(4));
					 si.setEmail(rs.getString(5));
					 si.setPassword(rs.getString(6));
					 si.setPic(rs.getString(7));
					 list.add(si);
				}
				return list;
			}
		} );
	
	}

	@Override
	public void delete(Integer id) throws SQLException {
		String sql = "DELETE from userinfo where id=?";
		jdbcTemplate.update(sql,id);		
	}

}
