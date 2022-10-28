package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.Pojodbcusupd;

/**
 * Servlet implementation class Validator
 */
public class Validatorcusupd extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
	IOException 
	{
		List l=new LinkedList();
		PrintWriter p=response.getWriter();
		String fname=request.getParameter("t1").trim();
		String lname=request.getParameter("t2").trim();
		String dob=request.getParameter("t3").trim();
		String add=request.getParameter("t4").trim();
		String contact=request.getParameter("t5").trim();
		String email=request.getParameter("t6").trim();
		String gender=request.getParameter("t7").trim();
		String country=request.getParameter("t8").trim();
		String state=request.getParameter("t9").trim();
		String cardno=request.getParameter("t10").trim();
		String cvvno=request.getParameter("t11").trim();
		String cardvalid=request.getParameter("t12").trim();
		String[] vendor=request.getParameterValues("t13");
		String bal=request.getParameter("t14").trim();
		String uid=request.getParameter("t15").trim();
		String iden=request.getParameter("t16").trim();
		String voter=request.getParameter("t17");
		String pan=request.getParameter("t18");
		String pass=request.getParameter("t19");
		String passid=request.getParameter("t20");
		String passed=request.getParameter("t21");
		String aadhar=request.getParameter("t22");
		long contact1=0;
		long cardno1=0;
		int cvvno1=0;
		int bal1=0;
		String voterr="";
		String pann="";
		String passs="";
		String aadharr="";
		String vendor2="";
		if(vendor.length>0)
		{
		for(int i=0;i<vendor.length;i++)
		{
			if(i!=(vendor.length-1))
			{
				vendor2+=vendor[i]+",";
			}
		    else
			{
				vendor2+=vendor[i]+" ";
			}
			
		}
		}
		if(fname.length()==0)
		{
			l.add("Enter first name field");
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
		if(gender.equals("Select"))
		{
			l.add("Enter gender field");
		}
		if(country.equals("Select"))
		{
			l.add("Enter country field");
		}
		if(state.equals("Select"))
		{
			l.add("Enter state field");
		}
		try
		{
			cardno1=Long.parseLong(cardno);
		}
		catch(Exception e)
		{
			l.add("Exception while entering card number");
		}
		if(!(cardno.length()==16))
		{
			l.add("Enter only 16 digits for card number");
		}
		try
		{
			cvvno1=Integer.parseInt(cvvno);
		}
		catch(Exception e)
		{
			l.add("Exception while entering cvv number");
		}
		if(!(cvvno.length()==3))
		{
			l.add("Enter only 3 digits for cvv number");
		}
		if(cardvalid.length()==0)
		{
			l.add("Enter cardvalid field");
		}
		if(vendor.equals("Select"))
		{
			l.add("Enter vendor field");
		}
		try
		{
			bal1=Integer.parseInt(bal);
		}
		catch(Exception e)
		{
			l.add("Exception while entering balance");
		}
		
		request.setAttribute("go2", l);
		if(!(l.isEmpty()))
		{
			RequestDispatcher r=request.getRequestDispatcher("designcusupd.jsp");
			r.include(request, response);
		}
		else
		{
			Pojodbcusupd db;
			try 
			{
				db = new Pojodbcusupd();
				db.setFname2(fname);
				db.setLname2(lname);
				db.setDob2(dob);
				db.setAdd2(add);
				db.setContact2(contact);
				db.setEmail2(email);
				db.setGender2(gender);
				db.setCountry2(country);
				db.setState2(state);
				db.setCardno2(cardno);
				db.setCvvno2(cvvno);
				db.setCardvalid2(cardvalid);
				db.setVendor2(vendor2);
				db.setBal2(bal);
				db.setUid2(uid);
				db.setIden2(iden);
				db.setVoter2(voter);
				db.setPan2(pan);
				db.setPass2(pass);
				db.setPassid2(passid);
				db.setPassed2(passed);
				db.setAadhar2(aadhar);
				List ll=(List)db.updateValues();
				request.setAttribute("go1", ll);
				if(!(ll.isEmpty()))
				{
					RequestDispatcher r=request.getRequestDispatcher("designcusregerr.jsp");
					r.include(request, response);
				}
				else
				{
					RequestDispatcher rq=request.getRequestDispatcher("designcusupdsuc.jsp");
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
