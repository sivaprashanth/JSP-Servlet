package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.Pojodbvenreg;

/**
 * Servlet implementation class Validator
 */
public class Validatorvenreg extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
	IOException 
	{
		List l=new LinkedList();
		PrintWriter p=response.getWriter();
		String venname=request.getParameter("t1").trim();
		String ventype=request.getParameter("t2").trim();
		String add=request.getParameter("t3").trim();
		String contact=request.getParameter("t4").trim();
		String email=request.getParameter("t5").trim();
		String country=request.getParameter("t6").trim();
		String state=request.getParameter("t7").trim();
		String web=request.getParameter("t8").trim();
		String cid=request.getParameter("t9").trim();
		String cvd=request.getParameter("t10").trim();
		String ec=request.getParameter("t11").trim();
		String cc=request.getParameter("t12").trim();
		String yoe=request.getParameter("t13").trim();
		String vid=request.getParameter("t14").trim();
		String yos=request.getParameter("t15").trim();
		String cer=request.getParameter("t16").trim();
		long contact1=0;
		int ec1=0;
		int cc1=0;
		int yoe1=0;
		if(venname.length()==0)
		{
			l.add("Enter vendor name field");
		}
		if(ventype.equals("Select"))
		{
			l.add("Enter vendor type field");
		}
		if(add.length()==0)
		{
			l.add("Enter address field");
		}
		try
		{
			contact1=Long.parseLong(contact);
		}
		catch(Exception e)
		{
			l.add("Exception while entering contact number");
		}
		if(!(contact.length()==10))
		{
			l.add("Enter only 10 digits for contact number");
		}
		if(email.length()==0)
		{
			l.add("Enter email field");
		}
		if(country.equals("Select"))
		{
			l.add("Enter country field");
		}
		if(state.equals("Select"))
		{
			l.add("Enter state field");
		}
		if(web.length()==0)
		{
			l.add("Enter web address field");
		}
		if(!((web.startsWith("www."))&(web.endsWith(".com"))))
		{
			l.add("Invalid Web Address");
		}
		if(cid.length()==0)
		{
			l.add("Enter certificate issue date field");
		}
		if(cvd.length()==0)
		{
			l.add("Enter certificate valid date field");
		}
		try
		{
			ec1=Integer.parseInt(ec);
		}
		catch(Exception e)
		{
			l.add("Exception while entering employee count");
		}
		try
		{
			cc1=Integer.parseInt(cc);
		}
		catch(Exception e)
		{
			l.add("Exception while entering customer count");
		}
		try
		{
			yoe1=Integer.parseInt(yoe);
		}
		catch(Exception e)
		{
			l.add("Exception while entering year of establishment");
		}
		if(yoe1<1900)
		{
			l.add("Enter year of establishment greater than 1900");
		}
		Calendar cal=Calendar.getInstance();
		if(yoe1>(cal.get(Calendar.YEAR)))
		{
			l.add("Enter valid year of establishment");
		}
		request.setAttribute("go", l);
		if(!(l.isEmpty()))
		{
			RequestDispatcher r=request.getRequestDispatcher("designvenreg.jsp");
			r.include(request, response);
		}
		else
		{
			Pojodbvenreg db;
			try 
			{
				db = new Pojodbvenreg();
				db.setVenname2(venname);
				db.setVentype2(ventype);
				db.setAdd2(add);
				db.setContact2(contact);
				db.setEmail2(email);
				db.setCountry2(country);
				db.setState2(state);
				db.setWeb2(web);
				db.setCid2(cid);
				db.setCvd2(cvd);
				db.setEc2(ec);
				db.setCc2(cc);
				db.setYoe2(yoe);
				db.setVid2(vid);
				db.setYos(yos);
				db.setCer(cer);
				List ll=(List)db.insertValues();
				request.setAttribute("go1", ll);
				if(!(ll.isEmpty()))
				{
					RequestDispatcher r=request.getRequestDispatcher("designvenregerr.jsp");
					r.include(request, response);
				}
				else
				{
					request.setAttribute("regv",vid);
					RequestDispatcher rq=request.getRequestDispatcher("designvenregsuc.jsp");
					rq.include(request, response);
				}
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
