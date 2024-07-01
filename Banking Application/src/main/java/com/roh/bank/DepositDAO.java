package com.roh.bank;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DepositDAO {

	 
	public static int deposit(Double deposit,String uname,String pass,String accnumber)
	{
		Connection con=DbConnection.getconnection();
		
		
		int i=0;
		try
		{
			
			
			PreparedStatement pstmt=con.prepareStatement("update  bank set amount=amount+? where uname=? and password=? and account_number=?");
			
			pstmt.setDouble(1,deposit);
			pstmt.setString(2, uname);
			pstmt.setString(3,pass);
			pstmt.setString(4,accnumber);
			
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
	
	
	
	public static UserBean getdetails(String accnumber) throws SQLException
	{
		
		UserBean ub=null;
		Connection con=DbConnection.getconnection();
		PreparedStatement pstm=con.prepareStatement("select *from bank where account_number=?");
		pstm.setString(1, accnumber);
			 
		ResultSet rs=pstm.executeQuery();
		
		if(rs.next())
		{
			ub=new UserBean();
			ub.setUname(rs.getString("uname"));
			ub.setAmount(rs.getDouble("amount"));
			ub.setAccountNumber(rs.getString("account_number"));
			ub.setAddress(rs.getString("address"));
			ub.setPhone(rs.getLong("phone"));
		}
		
		return ub;
	}
}
