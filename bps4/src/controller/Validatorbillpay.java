package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Pojobillpay;
import model.Pojodbcusreg;

/**
 * Servlet implementation class Validator
 */
public class Validatorbillpay extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
	IOException 
	{
		List l=new LinkedList();
		PrintWriter p=response.getWriter();
		String uid=request.getParameter("t14").trim();
		String vt=request.getParameter("t2").trim();
		String vn=request.getParameter("t3").trim();
		String bal=request.getParameter("t4").trim();
		String amt=request.getParameter("t5").trim();
		String tot=request.getParameter("t16").trim();
		String amtgiv=request.getParameter("t15").trim();
		String ct=request.getParameter("t6").trim();
		String pd=request.getParameter("t10").trim();
		String cardno=request.getParameter("t7").trim();
		String cvvno=request.getParameter("t8").trim();
		String cardvalid=request.getParameter("t9").trim();
		String cvvno1=request.getParameter("t12").trim();
		String cardvalid1=request.getParameter("t13").trim();
		float bal1=Float.parseFloat(bal);
		float tot1=Float.parseFloat(tot);
		float amt1=Float.parseFloat(amt);
		float amtgiv1=Float.parseFloat(amtgiv);
		if(!(cvvno.equalsIgnoreCase(cvvno1)))
		{
			l.add("Wrong card cvv number");
		}
		if(!(cardvalid.equalsIgnoreCase(cardvalid1)))
		{
			l.add("Wrong card valid date");
		}
		request.setAttribute("go", l);
		if(!(l.isEmpty()))
		{
			RequestDispatcher r=request.getRequestDispatcher("designbillpay.jsp");
			r.include(request, response);
		}
		else
		{
			Pojobillpay pbp;
			try {
				pbp = new Pojobillpay();
				pbp.setUid2(uid);
				pbp.setVt2(vt);
				pbp.setVn2(vn);
				pbp.setArrears2(bal1);
				pbp.setAmt2(amt1);
				pbp.setTotal_amt2(tot1);
				pbp.setAmtgiv2(amtgiv1);
				pbp.setCt2(ct);
				pbp.setPd2(pd);
				float la=pbp.calculation();
				request.setAttribute("reg2",la);
				RequestDispatcher r=request.getRequestDispatcher("designbillpaysuc.jsp");
				r.include(request, response);
			} 
			catch (ClassNotFoundException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} 
		
		
	}

}
