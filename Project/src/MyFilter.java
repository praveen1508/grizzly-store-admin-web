import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.HttpSession;    
public class MyFilter implements Filter{  
	
  public String first,last;
  public int attempt;
public void init(FilterConfig arg0) throws ServletException {}  
      
public void doFilter(ServletRequest request, ServletResponse response,  
        FilterChain chain) throws IOException, ServletException {  
         HttpServletRequest req=(HttpServletRequest)request;
         HttpServletResponse resp=(HttpServletResponse)response;
         PrintWriter out = response.getWriter();  
         String password=req.getParameter("password");  
	    String uname=req.getParameter("name");

	    try{  
	    	Class.forName("com.mysql.jdbc.Driver");  
	    	Connection con=DriverManager.getConnection(  
	    	"jdbc:mysql://localhost:3306/sample","root","password-1");  
	    	Statement stmt=con.createStatement();
	    	PreparedStatement ps = con.prepareStatement("select attempts,name,password from user where email=?");
	    	ps.setString(1,uname);
	    	ResultSet rs = (ResultSet) ps.executeQuery();
	    	 while(rs.next()){
	             //Retrieve by column name
	             first = rs.getString("password");
	             last =rs.getString("name");
                 attempt=rs.getInt("attempts");
	          }
	    	 if(attempt>=3)
	    	 {
	    		  out.print("Your Account is locked please contact Administrator");  
	   	  	   
	  	  	    RequestDispatcher rd=req.getRequestDispatcher("index.html");  
	  	  	    rd.include(request,response);
	    	 }
	    	 else if(password.equals(first)){  
			      
	  		   HttpSession session=req.getSession(true);  
	  	       session.setAttribute("uname",last);  
	  	    chain.doFilter(request, response);  
	  	    }  
	  	    else{
	  	    attempt+=1;
	  	      String sql = "update user set attempts="+attempt;
	  	      int re = stmt.executeUpdate(sql);
	  	    out.print("Username or Password is invalid!");  
	  	   
	  	    RequestDispatcher rd=req.getRequestDispatcher("index.html");  
	  	    rd.include(request,response);
	  	    } 
	    	}
	    catch(Exception e){ System.out.println(e);} 
	  
}  
    public void destroy() {}  
  
}  