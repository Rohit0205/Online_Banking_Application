package com.roh.bank;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uname=req.getParameter("uname");
		String accountNo=req.getParameter("accno");
		String password=req.getParameter("pass");
		
		int i=0;
		PrintWriter pw=resp.getWriter();
		resp.setContentType("text/html");
		 UserBean ub=null;
		  ub=CloseDAO.getdetails(uname, accountNo);
		
		 i= CloseDAO.closeaccount(uname, accountNo, password);
		 
		 
		 if(i>0)
		 {
			 pw.println(ub.getUname()+" Your Account has Bean Closed");
		 }
		 else
		 {
			 pw.println("Invalid User Detils");
		 }
	}
}
