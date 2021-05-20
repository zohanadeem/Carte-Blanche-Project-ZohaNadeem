import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.util.*;
import java.sql.*;
public class addnewtask extends HttpServlet 
{
  public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{   
    response.setContentType("text/html");
    PrintWriter out=response.getWriter();

    if(request.getSession(false)==null)
    {
     response.sendRedirect("login.html");
    }   
		HttpSession session = request.getSession();
		String username =(String)session.getAttribute("username");
		
		if(username == null)  
		{
			response.sendRedirect("login.html");
		
		}	
    String title=request.getParameter("title");
    String priority=request.getParameter("priority");
	String labels=request.getParameter("labels");
    

    try 
	{
		String  url = "jdbc:mysql://127.0.0.1/infor";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection(url,"root","root");  
        System.out.println("Connection establishing...");
   
		Statement st1=conn.createStatement();
		String query1=("INSERT INTO LIST(USERNAME,TITLE,LABELS,PRIORITY) VALUES('"+username+"','"+title+"','"+labels+"','"+priority+"')" );
        int i=st1.executeUpdate(query1);
		
        if(i>0)
        {       out.println("successfully entered task");
				response.sendRedirect("TodolistHome.jsp");
				
        } 
		else
            {
                out.println("Cannot add task");
				response.sendRedirect("TodolistHome.jsp");
				
				
            }
	   st1.close();
       conn.close();
	}
	
	catch (Exception e) 
	{
       out.println(e);
    }
}
}