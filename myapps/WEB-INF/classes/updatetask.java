import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.util.*;
import java.sql.*;
public class updatetask extends HttpServlet 
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
		
		String title=request.getParameter("utitle");
		String priority=request.getParameter("upriority");
		String labels=request.getParameter("ulabels");
    

    try 
	{
		String  url = "jdbc:mysql://127.0.0.1/infor";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection(url,"root","root");  
        System.out.println("Connection establishing...");
   
		Statement st1=conn.createStatement();
		
		String query1="UPDATE LIST SET LABELS='"+labels+"',PRIORITY='"+priority+"' WHERE TITLE ='"+title+"'" ;
        int i=st1.executeUpdate(query1);
		
        if(i>0)
        {       out.println("successfully updated task");
				response.sendRedirect("TodolistHome.jsp");
				
        } 
		else
            {
                out.println("Cannot update task");
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