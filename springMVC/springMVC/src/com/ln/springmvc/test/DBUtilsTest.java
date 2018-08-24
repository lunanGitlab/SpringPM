package com.ln.springmvc.test;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.junit.Before;
import org.junit.Test;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DBUtilsTest {

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void add() throws SQLException {
		
		java.sql.Connection conn = null;
		try {
			//创建数据源（C3P0组件）
			DataSource ds = new ComboPooledDataSource("dbInfo");
			conn = ds.getConnection();
			System.out.println("数据库连接成功！！");
			QueryRunner queryRunner = new QueryRunner(ds);
			String sql = "delete from userinfo  where id=?";
			queryRunner.update(sql,20);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		
		
		
	}

}
