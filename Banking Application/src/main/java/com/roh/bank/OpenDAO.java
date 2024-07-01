package com.roh.bank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class OpenDAO {

	public static int openDAO(UserBean ub)
	{
		int i=0;
		
		try
		{
			Connection con=DbConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("insert into bank values(?,?,?,?,?,?)");
			
			pstmt.setString(1,ub.getUname());
			pstmt.setString(2, ub.getPassword());
			pstmt.setDouble(3,ub.getAmount());
			pstmt.setString(4,ub.getAddress());
			pstmt.setLong(5,ub.getPhone());
			pstmt.setString(6,ub.getAccountNumber());
			
			
		    i=pstmt.executeUpdate();
		    
		    
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		if(i>0)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
	
}
