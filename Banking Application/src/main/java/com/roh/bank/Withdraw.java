package com.roh.bank;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/withdraw")
public class Withdraw extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserBean ub = new UserBean();
		String s1 = req.getParameter("accno");
		String s2 = req.getParameter("uname");
		String s3 = req.getParameter("pass");
		Double s4 = Double.parseDouble(req.getParameter("amount"));

		
		PrintWriter pw = resp.getWriter();
		resp.setContentType("text/html");
        
		
		ub =WithdrawDAO.withLogin(s2, s3, s1);
		
		
		
		if(ub!=null )
		{
		 
		 
		 if(ub.getAmount()>=s4)
		   {
			 pw.println("Befor Withdrawal you balance was:"+(ub.getAmount()));
			 WithdrawDAO.withdraw(s4, s2, s3, s1);
			 
			   ub = WithdrawDAO.userdetails(s1);
				pw.println(s4 + " Amount Withdraw Succesfully...!");
				
				req.setAttribute("ub", ub);
				RequestDispatcher rd = req.getRequestDispatcher("withdrawView.jsp");
				rd.include(req, resp);
				
		   }
		 else
			{
			 
			   
				pw.println("Withdrawal failed InSufficient Balance...!");

				RequestDispatcher rd = req.getRequestDispatcher("withdraw.jsp");
				rd.include(req, resp);
			}
		  
			
		}
        		
		 else
			{
				
				pw.println("invalid UserName/Password");

				RequestDispatcher rd = req.getRequestDispatcher("withdraw.jsp");
				rd.include(req, resp);

				
			}
		
			

	}

}
