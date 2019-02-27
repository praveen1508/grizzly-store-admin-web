import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.ServletException;  
import javax.servlet.http.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
public class AdminServlet extends HttpServlet {  
public void doGet(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {
	  
	  RequestDispatcher rd=request.getRequestDispatcher("options.jsp");  
	  HttpSession session=request.getSession(true);  
	  String k=(String)session.getAttribute("uname");
      session.setAttribute("uname",k);
    rd.include(request, response);
       
    }  
}  