package com.roh.bank;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection 
{
	private static Connection con;
	static
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			 con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
	}
	
	public static Connection getconnection()
	{
		return con;
	}
   
 }

