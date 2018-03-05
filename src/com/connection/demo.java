package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class demo {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","6380");
		System.out.println(con);
		PreparedStatement ps = con.prepareStatement("insert into useraction values(?,?)");
		ps.setString(1, "abhishek@gmail.com");
		ps.setString(2, "yes");
		ResultSet rs = ps.executeQuery();
		System.out.println(rs.next());
	}
}
