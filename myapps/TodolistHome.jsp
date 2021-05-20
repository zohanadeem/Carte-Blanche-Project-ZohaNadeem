<HTML>
<HEAD>
<TITLE>Home</TITLE>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@ page language = "java" import = "java.sql.Statement,java.sql.ResultSet,java.sql.Connection,java.sql.DriverManager" %>


 <script>
 
       function add(type) {

//Create lable
   var lab = document.createElement("span");
   lab.innerHTML = document.getElementById("labels").value;  
 

    var foo = document.getElementById("fooBar");  
    foo.appendChild(lab);
	//Now add button
 
     foo.appendChild(element);  

	

}
</script>
<script>

       function updated(type) {

//Create lable
   var labu = document.createElement("span");
   labu.innerHTML = document.getElementById("ulabels").value;  

    var foou = document.getElementById("fooBaru");  
    foou.appendChild(labu);
	//Now add button
    foou.appendChild(element);  

}



  </script>


</HEAD>

<style>
/* STYLES FOR ADD NEW TASK 
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the create new task form at the top of the page */
.open-button {
  background-color: #26A69A;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  top: 105px;
  right: 28px;
  width: 210px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: center;
  bottom: 0;
  z-index: 9;
 
}

/* styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}


/* style for the button */
.form-container .btn {
  background-color: #26A69A;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a black grey background color to the close button */
.form-container .close {
  background-color: #434343;
}
.header {
  padding: 20px;
  text-align: left;
  background: #26A69A;
  color: white;
  font-size: 20px;
}
.borders{
	top: 240px;
	left: 96px;
	width: 1288px;
	height: 82px;
	background: #FFFFFF 0% 0% no-repeat padding-box;
	box-shadow: 0px 1px 3px #00000029;
	border-radius: 6px;
	opacity: 1;
}
.form-container .add {
  background-color: #26A69A;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  top: 480px;
  right: 535px;
  width: 100px;
}
.show{
top: 280px;
left: 320px;
width: 58px;
height: 19px;
text-align: left;
letter-spacing: 0.01px;
background-color:#000000;
color: #FFFFFF;
opacity: 1;
}

.showb{
top: 280px;
left: 320px;
width: 20px;
height: 19px;
text-align: left;
letter-spacing: 0.01px;
background-color:white;
opacity: 1;
}

</style>
</HEAD>

<BODY TEXT="black">

<div class="header">
	<img src="homelogo.png" alt="hlogo">
	<button style="float: right; background-color:#26A69A; color:white; font-size:14px"><a href=logout.jsp> SIGN OUT </a></button>
</div>

<h3 style="color:black">WELCOME TO YOUR TO DO LIST!</h3>
<br><br>
<!--1. ADD NEW TASK FORM -->

<button class="open-button" onclick="openForm()">CREATE NEW TASK</button>
<center>
<div class="form-popup" id="addform">
<form name="addnewtask" action="addnewtask" method="post" class="form-container">

    <h1>CREATE TASK</h1>

    <label for="title"><b>Task Title:</b></label>
    <input type="text" placeholder="Enter task title" name="title" required>
	
	<label for="priority"><b>Priority:</b></label>
	<br><br>
	<input type="radio"  name="priority" value="High" />High
	<input type="radio"  name="priority" value="Medium" />Medium
	<input type="radio"  name="priority" value="Low" />Low
	<br><br>
	
    <label for="labels"><b>Labels:</b></label>
	<input type="text" id="labels" placeholder="Enter labels" name="labels" required> 
	<input type="button" value="Add" onclick="add(document.forms[0].labels.value)"/>
	<span id="fooBar">&nbsp;</span>
	
	<button type="submit" class="btn">CREATE TASK</button>
    <button type="button" class="btn close" onclick="closeForm1()">Close</button>
  </form>
</div>
</center>


<!--2. DELETE TASK FORM -->
<center>
<div class="form-popup" id="deleteform">
<form name="deletetask" action="deletetask" method="post" class="form-container">

    <h1>DELETE TASK</h1>

    <label for="dtitle"><b>Task Title:</b></label>
    <input type="text" placeholder="Enter task title to delete" name="dtitle" required>

	
	<button type="submit" class="btn">DELETE TASK</button>
    <button type="button" class="btn close" onclick="closeForm2()">Close</button>
  </form>
</div>
</center>

<!--3. UPDATE TASK FORM -->
<center>
<div class="form-popup" id="updateform">
<form name="updatetask" action="updatetask" method="post" class="form-container">

    <h1>UPDATE TASK</h1>

    <label for="utitle"><b>Task Title:</b></label>
    <input type="text" placeholder="Enter task title(Note:task title cannot be changed)" name="utitle" required>

	<label for="priority"><b>Priority:</b></label>
	<br><br>
	<input type="radio"  name="upriority" value="High" />High
	<input type="radio"  name="upriority" value="Medium" />Medium
	<input type="radio"  name="upriority" value="Low" />Low
	<br><br>
	
    <label for="labelsu"><b>Labels:</b></label>
	<input type="text" id="labelsu" placeholder="Enter labels" name="ulabels" required> 
	<input type="button" value="Add" onclick="updated(document.forms[0].ulabels.value)"/>
	<span id="fooBaru">&nbsp;</span>

	
	<button type="submit" class="btn">UPDATE TASK</button>
    <button type="button" class="btn close" onclick="closeForm3()">Close</button>
  </form>
</div>
</center>

<script>
function openForm() {
  document.getElementById("addform").style.display = "block";
}
function deleteForm() {
  document.getElementById("deleteform").style.display = "block";
}
function updateForm() {
  document.getElementById("updateform").style.display = "block";
}


function closeForm1() {
  document.getElementById("addform").style.display = "none";
}
function closeForm2() {
  document.getElementById("deleteform").style.display = "none";
}
function closeForm3() {
  document.getElementById("updateform").style.display = "none";
}
</script>

<% 
		String username =(String)session.getAttribute("username");
		
		if(username == null)  
		{
			response.sendRedirect("login.html");
		
		}
			
%>

<%
	try
		{
		
	        String  url = "jdbc:mysql://127.0.0.1/infor";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(url,"root","root");  
            System.out.println("Connection establishing...");
            Statement st=conn.createStatement();


            String query="SELECT * FROM LIST where USERNAME ='"+username+"' ";
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
			String title = rs.getString("TITLE");
			String labels = rs.getString("LABELS");
    	    String priority = rs.getString("PRIORITY");
		
	
	%>
	
	<div class="borders">
	<br>
	&nbsp&nbsp<%=rs.getString(2)%> &nbsp&nbsp 

	<% String str = rs.getString(3);%>
	<%String[] arr = str.split(",");%>
	<span class="show">
	
	<%for ( int i = 0; i < arr.length ; i++){ %>
         
            <%= arr[i] %><span class="showb">&nbsp&nbsp
        </span>
      <%}%>
	  </span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	
	<%=rs.getString(4)%> &nbsp&nbsp
	<button class="delete-button" onclick="deleteForm()"><i class="fa fa-trash" style="font-size: 1.35em";></i></button>
	&nbsp&nbsp
	<button class="update-button" onclick="updateForm()"><i class="material-icons"  style="font-size: 1.27em";>&#xe22b;</i></button>
	</div>
	<br><br>
	
	
		<%
			}
            st.close();
            conn.close();
	%>
<%	
	}
		catch (Exception e) 
	{
        out.println(e);
    }
%>


</BODY>
</HTML>	









