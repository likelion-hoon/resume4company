package com.jonghoon.resume.board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySqlConnectionMaker implements ConnectionMaker {

	@Override
	public Connection makeConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver"); 
		Connection c = DriverManager.getConnection(
				"jdbc:mysql://localhost/Resume4Company?characterEncoding=UTF-8","root","1234");
	
		return c; 
	}
}
