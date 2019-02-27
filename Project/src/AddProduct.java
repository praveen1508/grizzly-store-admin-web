import java.io.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;

@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)

public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pname=req.getParameter("pname");  
	    String brand=req.getParameter("brand");
	    String category=req.getParameter("category");  
	    int price=Integer.parseInt(req.getParameter("price"));
	    String description=req.getParameter("description");  
	    try{  
	    	Class.forName("com.mysql.jdbc.Driver");  
	    	Connection con=DriverManager.getConnection(  
	    	"jdbc:mysql://localhost:3306/sample","root","password-1");  
	    	Statement stmt=con.createStatement();
	    	String sql;
	    	 
           Part part=req.getPart("file");
           String fileName=extractFileName(part);
	       String savePath = "D:" + File.separator +"images";
	       String image= fileName;
           image=image.replace("\\", "\\\\");
	       PrintWriter out = response.getWriter();
	     sql="Select name,category from product";
	       ResultSet rs = stmt.executeQuery(sql);
	    	 while(rs.next()){
	             //Retrieve by column name
	    		   String prod = rs.getString("name");
	    	         String cate= rs.getString("category");
	    	         if(prod.equals(pname)&&cate.equals(category))
	    	         {
	    	        	 out.print("Product Already exists");  
	    	  	  	   
	    	 	  	    RequestDispatcher rd=req.getRequestDispatcher("addproduct.jsp");  
	    	 	  	    rd.include(req,response);
	    	         }
	    	         else
	    	         {
	    	        	sql="Insert into product(name,description,price,category,image,brand) values(\'"+pname+"\',\'"+description+"\',"+price+",\'"+category+"\',\'"+image+"\',\'"+brand+"\')";
	    	 	    	stmt.executeUpdate(sql);
	    	 	    	out.print("Product Added Successfully");  
		    	  	  	   
	    	 	  	    RequestDispatcher rd=req.getRequestDispatcher("options.jsp");  
	    	 	  	    rd.include(req,response);
	    	         }
	          }
	       
	    	
	    	//ps.setString(1,pname);
	    	//ps.setString(2,description);
	    	//ps.setInt(3,price);
	    	//ps.setString(,brand);
	    	//int rows = ps.executeUpdate();
	    	}
	    catch(Exception e){ System.out.println(e);} 
	}
	   private String extractFileName(Part part) {
	        String contentDisp = part.getHeader("content-disposition");
	        String[] items = contentDisp.split(";");
	        for (String s : items) {
	            if (s.trim().startsWith("filename")) {
	                return s.substring(s.indexOf("=") + 2, s.length()-1);
	            }
	        }
         return "";
}
}