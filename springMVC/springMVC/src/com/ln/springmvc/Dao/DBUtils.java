package com.ln.springmvc.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DBUtils  {
	
	public static Connection getConnection() {
		java.sql.Connection conn = null;
		try {
			//创建数据源（C3P0组件）
			DataSource ds = new ComboPooledDataSource("dbInfo");
			QueryRunner qr = new QueryRunner(ds);
			
			conn = ds.getConnection();
			System.out.println("数据库连接成功！！");

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return conn;
	}

	/**
	 * 关闭数据库连接
	 */
	public static void close(ResultSet rs, PreparedStatement ps, Connection conn) {
		try {
			if (rs != null)
				rs.close();
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
