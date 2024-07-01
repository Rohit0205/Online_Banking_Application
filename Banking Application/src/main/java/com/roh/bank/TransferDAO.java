package com.roh.bank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;

public class TransferDAO {

	


	public static UserBean withLogin(String uname, String password, String accno) {
		UserBean ub = null;

		try {
			Connection con = DbConnection.getconnection();

			PreparedStatement pstmt = con
					.prepareStatement("select amount from bank where account_number=? and uname=? and password=?");

			pstmt.setString(1, accno);
			pstmt.setString(2, uname);
			pstmt.setString(3, password);

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				ub = new UserBean();
				ub.setAmount(rs.getDouble("amount"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return ub;

	}

	
	
	
	public static int nativeaccouont(String uname,String accountno,String password,Double amount, String accountno2)
	{
		Connection con = null;
		
		int i=0;
		try
		{
			con=DbConnection.getconnection();
			con.setAutoCommit(false);
			Savepoint setSavepoint = con.setSavepoint();
			
			PreparedStatement pstmt=con.prepareStatement("update  bank set amount=amount-? where uname=? and password=? and account_number=? ");
			
			pstmt.setDouble(1,amount);
			pstmt.setString(2, uname);
			pstmt.setString(3, password);
			pstmt.setString(4, accountno);
			
			i=pstmt.executeUpdate();
			if(i>0)
			{
				int targetaccount = targetaccount(accountno2, amount);
				if(targetaccount>0) {
					con.commit();
					return 1;
				}
				else {
					con.rollback(setSavepoint);
					return 0;
				}
			}
			else
			{
				con.rollback(setSavepoint);
				return 0;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return 0;
			
	}
	
	
	
	public static int targetaccount(String accountno,Double amount)
	{
		
		int k=0;
		try
		{
			
			Connection con=DbConnection.getconnection();
			con.setAutoCommit(false);
			PreparedStatement pstmt=con.prepareStatement("update  bank set amount=amount+? where  account_number=? ");
			
			pstmt.setDouble(1,amount);
			pstmt.setString(2, accountno);
			
			
			k=pstmt.executeUpdate();
			
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		if(k>0)
		{
		  return 1;
		}
		else
		{
			return 0;
		}
		
			
	}
	
	
	// for set the userdetails
		public static UserBean userdetails(String accno) {
			UserBean ub = null;
			try {
				Connection con = DbConnection.getconnection();

				PreparedStatement pstmt = con.prepareStatement("select *from bank where account_number=?");

				pstmt.setString(1, accno);

				ResultSet rs = pstmt.executeQuery();

				if (rs.next()) {

					ub = new UserBean();
					ub.setUname(rs.getString("uname"));
					ub.setAmount(rs.getDouble("amount"));
					ub.setAccountNumber(rs.getString("account_number"));
					ub.setAddress(rs.getString("address"));
					ub.setPhone(rs.getLong("phone"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

			return ub;
		}
	
		public static TargetUserBean Targetuserdetails(String accno) {
			TargetUserBean ub = null;
			try {
				Connection con = DbConnection.getconnection();

				PreparedStatement pstmt = con.prepareStatement("select *from bank where account_number=?");

				pstmt.setString(1, accno);

				ResultSet rs = pstmt.executeQuery();

				if (rs.next()) {

					ub = new TargetUserBean();
					
					ub.setUname(rs.getString("uname"));
					ub.setAmount(rs.getDouble("amount"));
					ub.setAccountno(rs.getString("account_number"));
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

			return ub;
		}
	
	
}
