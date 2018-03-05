package com.daw;
import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.connection.MyConnection;
public class UserDaw {
	private static boolean status = false;
	private static Connection con = MyConnection.getConnection();
	public static int yes = 0;
	public static int no = 0;
	
	
	
	static{
		try {
			float countyes = 0;
			float countno = 0;
			PreparedStatement ps = con.prepareStatement("select vote from useraction");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				if(rs.getString(1).equals("yes"))
						countyes += 1;
				else
					countno += 1;
			}
			System.out.println(countno);
			float totel = countyes + countno;
			yes =(int)((countyes/totel)*100);
			no = (int)((countno/totel)*100);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	
	
	
	
	public static boolean post(com.bean.UserBean u) {
		
		System.out.println("con"+con);
		try {
			PreparedStatement ps = con.prepareStatement("insert into useraction values(?,?)");
			ps.setString(1, u.getEmail());
			ps.setString(2, u.getVote());
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			status = false;
		}
		return status;
	}
	
	
}
