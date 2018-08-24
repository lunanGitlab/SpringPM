package com.ln.springmvc.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 操作连接数据库的结果集
 * 声明接口可以对具体的实体做不同处理
 * @author Administrator
 *
 */
public interface ResultSetHandler {

	public Object  doHandler(ResultSet rs) throws SQLException;
	
	
	
}
