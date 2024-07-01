package com.roh.bank;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/deposit")
public class Deposit extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		resp.setContentType("text/html");
		String s1=req.getParameter("uname");
		String s2=req.getParameter("accnumber");
		String s3=req.getParameter("pass");
		double s4=Double.parseDouble(req.getParameter("deposit"));
		
		PrintWriter pw=resp.getWriter();
		
		int i=DepositDAO.deposit(s4,s1,s3,s2);
		
		UserBean ub=null;
		try {
			ub=DepositDAO.getdetails(s2);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(i==1)
		{
			
			
			pw.println("deposit Sucess");
			req.setAttribute("ub", ub);
			RequestDispatcher rd=req.getRequestDispatcher("depositView.jsp");
			rd.include(req, resp);
			if(ub!=null)
			{
				RequestDispatcher r=req.getRequestDispatcher("depositView.jsp");
				r.include(req, resp);
			}
		}
		else
		{
			pw.println("Not Deposit");
			RequestDispatcher r=req.getRequestDispatcher("depositView.jsp");
			r.include(req, resp);
		}
	}
}
