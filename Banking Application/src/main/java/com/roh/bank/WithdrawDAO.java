package com.roh.bank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class WithdrawDAO {

	static Connection con = DbConnection.getconnection();

	

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

	// for withdraw
	public static int withdraw(Double amount, String uname, String password, String accno) {

		int k = 0;

		try {

			PreparedStatement pstmt = con.prepareStatement(
					"update  bank set amount=amount-? where uname=? and password=? and account_number=?");

			pstmt.setDouble(1, amount);
			pstmt.setString(2, uname);
			pstmt.setString(3, password);
			pstmt.setString(4, accno);

			k = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		if (k > 0) {
			return 1;
		} else {
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
}
