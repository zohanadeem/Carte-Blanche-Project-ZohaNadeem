import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.util.*;
import java.sql.*;
public class login extends HttpServlet 
{
public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{        
	
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
		
		
		String username = request.getParameter("uname");
		String password = request.getParameter("password");
		
		try
		{
	        String  url = "jdbc:mysql://127.0.0.1/infor";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(url,"root","root");  
            System.out.println("Connection establishing...");
            Statement st=conn.createStatement();
			 
            String query="SELECT * FROM REGISTER where USERNAME ='"+username+"' AND PASSWORD='"+password+"' ";
            ResultSet rs=st.executeQuery(query);
			
			out.println("<html>");
			out.println("<body bgcolor=\"white\">");
	
            if(rs.next())
            {
			out.println("You are successfully Logged in");  	   
			//session management
			HttpSession session = request.getSession();
		
			String username1 =rs.getString("USERNAME");
			String password1 =rs.getString("PASSWORD");
			
			
			session.setAttribute("username", username1);//create a session for that user (username is key & username1 is value)
            session.setAttribute("password", password1);//create a session for that user (password is key & password1 is value)
			
			
			response.sendRedirect("TodolistHome.jsp");//sending to TodolistHome page if valid
		
            }
			else
            {
				  out.println("No such Username/Password");
				  response.sendRedirect("login.html");
              
            }
			out.println("</body></html>");
			st.close();
            conn.close();
		}
		
		catch (Exception e) 
	{
        out.println(e);
    }
	
}
}


