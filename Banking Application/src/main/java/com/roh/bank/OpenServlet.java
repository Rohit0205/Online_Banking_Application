package com.roh.bank;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.management.loading.PrivateClassLoader;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/newacc")
public class OpenServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter pw=resp.getWriter();
		UserBean ub=new UserBean();
		
		String s1=req.getParameter("cname");
		String s2=req.getParameter("pass");
		String s3=req.getParameter("repass");
		double s4=Double.parseDouble(req.getParameter("amount"));
		String s5=req.getParameter("address");
		long s6=Long.parseLong(req.getParameter("phone"));
		
		ub.setUname(s1);
		ub.setPassword(s2);
		ub.setRepassword(s3);
		ub.setAmount(s4);
		ub.setAddress(s5);
		ub.setPhone(s6);
		
		
		String accountNumber=genrateAccountNumber();
		ub.setAccountNumber(accountNumber);
		
		int i=0;
		try
		{
			 i= OpenDAO.openDAO(ub);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		if(i>0)
		{
			
			
			pw.println("Account Created Succesfully");
			RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
			rd.include(req, resp);
		}
		else
		{
			pw.println("Not Created");
			RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
			rd.include(req, resp);
		}
		
	
		resp.setContentType("text/html");
		
	}
	
	private String genrateAccountNumber()
	{
		Random random=new Random();
		
		String str = String.format("%06d",random.nextInt(1000000));
		System.out.println(str);
		return str;
	}
	
}
