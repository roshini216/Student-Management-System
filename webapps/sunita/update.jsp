<%@ page import = "java.sql.*" %>

<%
String rollno = request.getParameter("rollno");
%>
<%
try{
    DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
    String url = "jdbc:mysql://localhost:3306/kc_5jan23";
    Connection con = DriverManager.getConnection(url,"root","abc456");
    String sql = "select * from  student where rollno="+rollno;
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
while(rs.next()){
%>
<!DOCTYPE html>
<html>
    <head>
        <title> Student Management System</title>
        <style>
            *{font-size: 20px;}
            /* body{background-color:rgb(90, 235, 240);}
            .nav{background-color:black;}
            .nav a {color:white;text-decoration:none;margin:5%;} */
            .heading{
                font-family:'M PLUS Rounded 1c', sans-serif ;
                font-size: 30px;
                color: aqua;
                text-shadow: 6px 6px black;
                padding-bottom:0%;
                
                left:15px;
            }
           
            body{background-image:url(homeimg.jpeg);
                background-position: center;
                background-repeat: no-repeat; 
                 background-size: cover; 
                }
               .nav{width: 100%;display:flex;}
               .nav a {color:white;text-decoration:none;margin:1%;}
               .form
               {
                /* font-size: 30px; */
               }

        </style>
 	<link rel = "icon" href = "student.ico"/>

    </head>
<body>
    <center>
        <div class = "nav">
            <span style="margin:1%;">
            <a href = "home.jsp">Home</a>
            </span>
            <span style="margin: 1%;">
            <a href = "create.jsp">Create</a>
            </span>
            <span style="margin: 1%;">
                <a href = "create.jsp">Update</a>
            </span>
            <span style="text-align:right;margin:1%;">
            
        </div>
<h1 class="heading">Update data</h1>

<form method="post" action="update-process.jsp">

Roll no :<input type="text" name="rollno" value="<%=rs.getString("rollno") %>">
<br>

First Name: <input type="text" name="firstname" value="<%=rs.getString("firstname") %>">
<br>
Last Name: <input type="text" name="lastname" value="<%=rs.getString("lastname") %>">
<br>
Address: <input type="text" name="address" value="<%=rs.getString("address") %>">
<br>
Phone no :<input type="number" name="phoneno" value="<%=rs.getString("phoneno") %>">
<br>
Semester :<input type="text" name="semester" value="<%=rs.getString("semester") %>">
<br>
First Subject :<input type="text" name="subject1" value="<%=rs.getString("subject1") %>">
<br>
Marks :<input type="number" name="marks1" value="<%=rs.getString("marks1") %>">
<br>
Second Subject :<input type="text" name="subject2" value="<%=rs.getString("subject2") %>">
<br>
Marks :<input type="number" name="marks2" value="<%=rs.getString("marks2") %>">
<br>
Third Subject :<input type="text" name="subject3" value="<%=rs.getString("subject3") %>">
<br>
Marks :<input type="number" name="marks3" value="<%=rs.getString("marks3") %>">
<br>
Average :<input type="number" name="avg" value="<%=rs.getString("avg") %>">
<br><br>

<input type = "submit" value="Save" name = "btn"/>




</form>
<%
}

} catch(SQLException err)
{
    out.println("issue" +err);
}

%>

    </center>
</body>
</html>
