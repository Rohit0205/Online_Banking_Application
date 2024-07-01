package com.roh.bank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BalanceDAO {

	public static UserBean balance(String accountnumber,String password)
	{
		UserBean ub=null;
		try
		{
			Connection con=DbConnection.getconnection();
			
			
			PreparedStatement pstmt=con.prepareStatement("select *from bank where account_number=? and password=?");
			
			pstmt.setString(1,accountnumber);
			pstmt.setString(2, password);
			
			ResultSet rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				ub=new UserBean();
				ub.setUname(rs.getString("uname"));
				ub.setAmount(rs.getDouble("amount"));
				ub.setAccountNumber(rs.getString("account_number"));
				ub.setAddress(rs.getString("address"));
				ub.setPhone(rs.getLong("phone"));
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return ub;
	}
}
