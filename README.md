# Carte-Blanche-Project
A To do list web based application

Project Title: To-Do list- Web application

Project Description: A simple web-based application that allows a user to maintain a simple to-do list for themselves. The user should be able to create, update or remove tasks from the list. The user will login to his/her account or create one if he doesn’t have one. The user will be able to view his to-do list only and can logout from the application. A databse will store registered user’s information and information of tasks in a list of each user.
Languages: Html, Css, Jsp, Java and use of SQL.

Features:
1.	In order to maintain a to-do list user needs to create a new account on his first visit to the web application. (Sign-Up)
2.	After creating the account user will be able to login into his/her profile and his/her session will be created. (Sign-in)
3.	On the welcome page user will be able to see his to-do list task containing (task title, labels, priority) (View-tasks).
4.	User will be able to create a new task. (Create-tasks).
5.	User can delete task/tasks from his list by clicking delete button (Delete-tasks).
6.	User can also update the task/tasks from his to-do list (Update-tasks).
7.	One user cannot view other user’s to-do list.
8.	User can log out from the web application and his/her session will be expired.

Requirements:
•	Tomcat: For running the application
•	MySQL (SQL Yog): It is used as a relational database for storing data from the web based application
•	Java: jdk will be required.

How to Install and use your Project:


1.	First install Java’s, Tomcat’s and SQL Yog’s latest versions.
Java jdk:
 

Tomcat: 


SQL Yog:
 
2.	Set appropriate paths.
3.	Tomcat will be installed in your C drive. 
    Location: C:\Program Files\Apache Software Foundation.
    
4.	In your C drive, go to Apache Software Foundation> Tomcat>webapps,
    copy the folder named as myapps in webapps, there are two html files, two jsp files and two logo images outside and a folder named WEB-INF.
 
 


5.	Now go to WEB-INF>classes, there are java files, in the search folder 
placeholder, type cmd, command prompt will open, write a command  
> javac *.java , all java files will be compiled.
  

6.	Now come one step back, web.xml will be given, its contains the linking of html pages with the java files.
 


7.	Lib folder contains: mysql-connector-java-5.0.8-bin (you need to install this and place it in this folder).

 
 

Note: WEB-INF has 3 structures: classes folder (containing java files), web.xml (linking file) and lib folder containing mysql-connector.

8.	Now go to: C:\Program Files\Apache Software Foundation\Tomcat 9.0\bin , it will contain a file named as startup, double click it.

 

 

    Now server is started
9.	Now open your browser and type: localhost:8080. If you see tomcat’s page, means your tomcat is installed successfully
             

10.	Now type in the browser as:  localhost:8080/myapps/login.html , it will take you to the login page of the application.
       

11.	From login page, you can either signup or sign in.

12.	Signup will save data into database table REGISTER( all new users will be saved in it).
 

13.	Now enter the login username and password in order to sign in to the application. Invalid username or password will not allow you to login and will remain on the same page, clearing the two fields.
14.	As soon as you login,a session will be creted and on entering, you will see the TodolistHome page, where you can create a new task.
            

15.	 You can add as many tasks as you want. Note that you can only view your list and tasks in it, not all users list.
 



16.	 You can delete a particular task on clicking the delete icon available.
 
17.	You can edit your Todolist task.
 
18.	 You can signout of the application and your session will expire.
 


Project components:

Java files:               
location: C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\myapps\WEB-INF\classes.


Html files:        login.html and signup.html    
Location: C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\myapps

Jsp files:            
Location: C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\myapps.

SQL Yog:
Contains 
Database: infor
Table1: REGISTER
 


Table2: LIST
 




