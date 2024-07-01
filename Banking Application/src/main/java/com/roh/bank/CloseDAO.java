package com.roh.bank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.xml.crypto.dsig.spec.ExcC14NParameterSpec;

public class CloseDAO {

	public static int closeaccount(String uname,String AccountNO,String password)
	{
		int i=0;
		try
		{
			Connection con=DbConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("delete from bank where uname=? and account_number=? and password=?");
			
			pstmt.setString(1, uname);
			pstmt.setString(2, AccountNO);
			pstmt.setString(3, password);
			
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
	
	public static UserBean getdetails(String uname,String accountno)
	{
		UserBean ub=null;
		
		try
		{
			Connection con=DbConnection.getconnection();
			
			PreparedStatement pstmt=con.prepareStatement("select *from bank where uname=? and account_number=? ");
			
			pstmt.setString(1, uname);
			pstmt.setString(2, accountno);
			
			ResultSet rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				ub=new UserBean();
				
				ub.setUname(rs.getString("uname"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return ub;
	}
}
