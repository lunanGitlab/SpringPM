package com.ln.springmvc.test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import com.ln.springmvc.Dao.DBUtils;
import com.ln.springmvc.Dao.ResultSetHandler;
import com.ln.springmvc.Dao.jdbcTemplate;
import com.ln.springmvc.Dao.studentDao;
import com.ln.springmvc.Dao.studentDaoImpl;
import com.ln.springmvc.entity.studentInfo;
import com.mysql.jdbc.PreparedStatement;

public class c3p0Test {

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() throws SQLException {
		Connection conn = null;
		java.sql.PreparedStatement ps = null;
		try {
		
		String sql = "INSERT into userinfo(name,sex,age) values (?,?,?)";
		
		conn = new DBUtils().getConnection();
		ps = conn.prepareStatement(sql);
		ps.setString(1,"晓明");
		ps.setString(2, "男");
		ps.setInt(3, 33);
		ps.executeUpdate();
		System.out.println("ok!!!!");

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtils.close(null, ps, conn);
		}
	}
	
}