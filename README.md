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

![image](https://user-images.githubusercontent.com/84430386/118864088-11cdce80-b8f9-11eb-902a-9131fc08b283.png)


Tomcat: 

![image](https://user-images.githubusercontent.com/84430386/118864191-2d38d980-b8f9-11eb-8ae9-3acf11b50b6b.png)


SQL Yog:
 
 ![image](https://user-images.githubusercontent.com/84430386/118864210-31fd8d80-b8f9-11eb-9b00-8ea2e3f68d4a.png)

2.	Set appropriate paths.
3.	Tomcat will be installed in your C drive. 
    Location: C:\Program Files\Apache Software Foundation.
    
4.	In your C drive, go to Apache Software Foundation> Tomcat>webapps,
    copy the folder named as myapps in webapps, there are two html files, two jsp files and two logo images outside and a folder named WEB-INF.
 ![image](https://user-images.githubusercontent.com/84430386/118864445-6ec98480-b8f9-11eb-8568-d74846485307.png)


![image](https://user-images.githubusercontent.com/84430386/118864476-76892900-b8f9-11eb-98be-d116b56545b4.png)

 


5.	Now go to WEB-INF>classes, there are java files, in the search folder 
placeholder, type cmd, command prompt will open, write a command  
> javac *.java , all java files will be compiled.
  
  
  ![image](https://user-images.githubusercontent.com/84430386/118864525-843eae80-b8f9-11eb-8809-a22f7e300520.png)


6.	Now come one step back, web.xml will be given, its contains the linking of html pages with the java files.
 
![image](https://user-images.githubusercontent.com/84430386/118864557-89036280-b8f9-11eb-934c-b3d5344bfde0.png)


7.	Lib folder contains: mysql-connector-java-5.0.8-bin (you need to install this and place it in this folder).

 ![image](https://user-images.githubusercontent.com/84430386/118864594-90c30700-b8f9-11eb-990d-b256712f6b31.png)


![image](https://user-images.githubusercontent.com/84430386/118864610-9587bb00-b8f9-11eb-921a-be0290ddf997.png)

 

Note: WEB-INF has 3 structures: classes folder (containing java files), web.xml (linking file) and lib folder containing mysql-connector.

8.	Now go to: C:\Program Files\Apache Software Foundation\Tomcat 9.0\bin , it will contain a file named as startup, double click it.

 
![image](https://user-images.githubusercontent.com/84430386/118864633-9b7d9c00-b8f9-11eb-9860-95edbbbbe341.png)


![image](https://user-images.githubusercontent.com/84430386/118864661-a1737d00-b8f9-11eb-90cb-d89a506da49d.png)

 

    Now server is started
9.	Now open your browser and type: localhost:8080. If you see tomcat’s page, means your tomcat is installed successfully
             
 ![image](https://user-images.githubusercontent.com/84430386/118864678-a7695e00-b8f9-11eb-9fbc-725bc32c68cc.png)


10.	Now type in the browser as:  localhost:8080/myapps/login.html , it will take you to the login page of the application.

   ![image](https://user-images.githubusercontent.com/84430386/118864894-d8e22980-b8f9-11eb-9494-96a06d8eb0b5.png)
    

11.	From login page, you can either signup or sign in.

12.	Signup will save data into database table REGISTER( all new users will be saved in it).
 
 ![image](https://user-images.githubusercontent.com/84430386/118864932-e3042800-b8f9-11eb-8678-5c0bcb1f7503.png)


13.	Now enter the login username and password in order to sign in to the application. Invalid username or password will not allow you to login and will remain on the same page, clearing the two fields.
14.	As soon as you login,a session will be creted and on entering, you will see the TodolistHome page, where you can create a new task.
            
  ![image](https://user-images.githubusercontent.com/84430386/118864965-ea2b3600-b8f9-11eb-8d40-2a92139972d6.png)


15.	 You can add as many tasks as you want. Note that you can only view your list and tasks in it, not all users list.
 
![image](https://user-images.githubusercontent.com/84430386/118864991-ef888080-b8f9-11eb-8907-a9515122b8c4.png)



16.	 You can delete a particular task on clicking the delete icon available.

![image](https://user-images.githubusercontent.com/84430386/118865013-f616f800-b8f9-11eb-8782-8b3b65fc8bc6.png)

 
17.	You can edit your Todolist task.
 
 ![image](https://user-images.githubusercontent.com/84430386/118865029-fb744280-b8f9-11eb-8bfd-f367f9938dcb.png)

18.	 You can signout of the application and your session will expire.
 
![image](https://user-images.githubusercontent.com/84430386/118865046-016a2380-b8fa-11eb-92b3-cbbc155403e1.png)


Project components:

Java files:  ![image](https://user-images.githubusercontent.com/84430386/118865314-3c6c5700-b8fa-11eb-804f-e5f56f324c97.png)
             
location: C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\myapps\WEB-INF\classes.


Html files:        login.html and signup.html    
Location: C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\myapps

Jsp files:          ![image](https://user-images.githubusercontent.com/84430386/118865347-442bfb80-b8fa-11eb-8adb-1a560aa1ad82.png)
  
Location: C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\myapps.

SQL Yog:
Contains 
Database: infor
Table1: REGISTER

 ![image](https://user-images.githubusercontent.com/84430386/118865386-4c843680-b8fa-11eb-8fe2-7eaf4ac82031.png)



Table2: LIST
 
![image](https://user-images.githubusercontent.com/84430386/118865502-70e01300-b8fa-11eb-9db5-ad9580a7d0d6.png)




