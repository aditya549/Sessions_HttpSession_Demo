package com.Cubic.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Cubic.userbean.UserBean;

public class UserDAO {
	public static void login(UserBean user) {
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "reddy", "reddy");
		PreparedStatement pst=con.prepareStatement("select * from usertable where name=? and password=?");
		pst.setString(1, user.getName());
		pst.setString(2, user.getPassword());
		ResultSet rs=pst.executeQuery();
		boolean b=rs.next();
		if(b) {
			user.setIsvalid(true);
			user.setName(rs.getString("name"));
			user.setEmail(rs.getString("email"));
			user.setId(rs.getInt("id"));
			user.setPassword("password");
		}else
			user.setIsvalid(false);
		}
		catch(Exception e) {
			
		}
	}
}
