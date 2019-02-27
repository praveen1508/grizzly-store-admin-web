import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  

import java.io.IOException;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewProduct
 */
public class ViewProduct extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException  {
		PrintWriter out = res.getWriter(); 
	     out.print("work");

	    /*res.setContentType("text/html");  
		  PrintWriter out = res.getWriter(); 
			     String id = req.getParameter("pisd");
			     out.print("work");
			   RequestDispatcher rd=req.getRequestDispatcher("viewproduct.jsp");  
			      rd.forward(req, res);  
			*/    
			}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void init(ServletConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
