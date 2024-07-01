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
@WebServlet("/transfer")
public class Transfer extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		UserBean ub=new UserBean();
		TargetUserBean tub=new TargetUserBean();
		resp.setContentType("text/html");
		
		String uname=req.getParameter("uname");
		String pass=req.getParameter("pass");
		String account=req.getParameter("accno");
		String tacount=req.getParameter("taccno");
		Double amount=Double.parseDouble(req.getParameter("amount"));
		
		
		PrintWriter pw=resp.getWriter();
		
		
		
		ub=TransferDAO.withLogin(uname, pass, account);
		
		if(ub!=null)
		{
			if(ub.getAmount()>=amount)
			{
				
				int nativeaccouont = TransferDAO.nativeaccouont(uname, account, pass, amount,tacount);
				if(nativeaccouont>0) {
					
					ub=TransferDAO.userdetails(account);
					tub=TransferDAO.Targetuserdetails(tacount);
					
					//pw.println(uname+" you has been transfer to a Accnount No: "+ tacount);
					req.setAttribute("ub",ub);
					req.setAttribute("tub", tub);
					RequestDispatcher rd=req.getRequestDispatcher("transferView.jsp");
					rd.include(req, resp);
				}
				else {
					pw.println(uname+" transfer failed... ");
					RequestDispatcher rd=req.getRequestDispatcher("transferjsp.jsp");
					rd.include(req, resp);

				}
				
			}

			 else
				{
				 
				   
					pw.println("Transfer failed InSufficient Balance...!");

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
