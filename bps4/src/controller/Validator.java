package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Validator
 */
public class Validator extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter p=response.getWriter();
		String sx1=request.getParameter("email");
		String sx2=request.getParameter("password");
		ServletConfig sx3=getServletConfig();
		String sx4=null;
		String sx5=null;
		sx4=sx3.getInitParameter("username");
		sx5=sx3.getInitParameter("password");
		if((sx1.equals(sx4)) && (sx2.equals(sx5)))
		{
			RequestDispatcher r=request.getRequestDispatcher("homepage.jsp");
			r.include(request, response);
		}
		else
		{
			String sx6="Invalid Login";
			request.setAttribute("val", sx6);
			RequestDispatcher r=request.getRequestDispatcher("login.jsp");
			r.include(request, response);
		}
	}

}
