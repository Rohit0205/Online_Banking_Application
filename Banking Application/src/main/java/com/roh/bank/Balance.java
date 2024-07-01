package com.roh.bank;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/balance")
public class Balance extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		String s1=req.getParameter("accno");
		String s3=req.getParameter("uname");
		String s4=req.getParameter("pass");
		
		PrintWriter pw=resp.getWriter();
		UserBean ub=null;
		
		try
		{
			ub=BalanceDAO.balance(s1, s4);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		if(ub==null)
		{
			pw.println("Invalid Account Number/Password");
			 
			RequestDispatcher rd=req.getRequestDispatcher("balanceView.jsp");
			rd.include(req, resp);
			
		}
		else
		{
			pw.println("Welcome ");
			req.setAttribute("ub", ub);
			RequestDispatcher rd= req.getRequestDispatcher("balanceView.jsp");
			rd.forward(req, resp);
		}
		
	}
}
