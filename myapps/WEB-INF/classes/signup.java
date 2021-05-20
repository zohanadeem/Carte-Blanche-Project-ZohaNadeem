import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.util.*;
import java.sql.*;
public class signup extends HttpServlet 
{
  public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{   
    response.setContentType("text/html");
    PrintWriter out=response.getWriter();

    if(request.getSession(false)==null)
    {
     response.sendRedirect("login.html");
    }     
    String username=request.getParameter("uname");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
	String cpassword=request.getParameter("confirm-password");
    

    try 
	{
		String  url = "jdbc:mysql://127.0.0.1/infor";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection(url,"root","root");  
        System.out.println("Connection establishing...");
            Statement st=conn.createStatement();
            String query=("SELECT * FROM REGISTER" );
            ResultSet rs=st.executeQuery(query);
			int count=0;
			
            while (rs.next())
            {
			String Uname2= rs.getString("USERNAME");
	
				if(username==Uname2 ) //if the same user name already exists,send to login page
				{
					count=1;
					out.println("Already taken Username ");
					response.sendRedirect("login.html");
					
				}
            }
             
       if (count==0)
	{
		Statement st1=conn.createStatement();
		String query1=("INSERT INTO REGISTER(USERNAME,EMAIL,PASSWORD,CPASSWORD) VALUES('"+username+"','"+email+"','"+password+"','"+cpassword+"')" ); //inserting data into database
        int i=st1.executeUpdate(query1);
		
        if(i>0)
        {       out.println("You are successfully registered");
				response.sendRedirect("TodolistHome.jsp");
				
        } 
		else
            {
                out.println("Cannot sign up");
				response.sendRedirect("login.html");
				
				
            }
	st1.close();
	}
	   st.close();
       conn.close();
	}
	
	catch (Exception e) 
	{
       out.println(e);
    }
}
}