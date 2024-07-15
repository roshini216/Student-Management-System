<%@ page import = "java.sql.*" %>

<%
String rollno1 = request.getParameter("rollno");
%>
<%
try{
    DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
    String url1 = "jdbc:mysql://localhost:3306/kc_5jan23";
    Connection con1 = DriverManager.getConnection(url1,"root","abc456");
    String sql1 = "select * from  student where rollno="+rollno1;
    Statement stmt = con1.createStatement();
    ResultSet rs = stmt.executeQuery(sql1);
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
                text-shadow: 4px 4px black;
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
               .form,.left,.right
               {
                 font-size: 20px; 
                 text-align: left;
                 color: white;
                 font-family: Verdana, Geneva, Tahoma, sans-serif;
                 font-weight: bold;
                 
                
               }
               input{
                width:100%;
                padding: 5px;
                margin: 2px 1px;
                background-color:rgb(133, 209, 235);
               }
               ::placeholder{
                color:black;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
               }

        </style>
 	<link rel = "icon" href = "student.ico"/>
     <link href="https://fonts.googleapis.com/css2?family=Luckiest+Guy&family=M+PLUS+Rounded+1c:wght@300;500&display=swap" rel="stylesheet">
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
           
            <span style="text-align:right;margin:1%;">
            
        </div>
<h1 class="heading">UPDATE DATA</h1>

<form method="post" action="update.jsp">
<div class = "left"style = "float: left;margin-left:10%;">
Roll no :<input type="text" name="rollno" required value="<%=rs.getString("rollno") %>">
<br/><br/>

First Name: <input type="text" name="firstname" pattern = "[a-zA-Z][a-zA-Z]+"  required value="<%=rs.getString("firstname") %>">
<br/><br/>
Last Name: <input type="text" name="lastname" pattern = "[a-zA-Z][a-zA-Z]+" required value="<%=rs.getString("lastname") %>">
<br><br/>
Address: <input type="text" name="address" required value="<%=rs.getString("address") %>">
<br><br/>
Phone no :<input type="number" name="phoneno"required value="<%=rs.getString("phoneno") %>">
<br><br/>
Semester :<input type="text" name="semester"required value="<%=rs.getString("semester") %>">
<br><br/>
</div>
<div class="right" style = "float: right;margin-right:10%;">
First Subject :<input type="text" name="subject1" required value="<%=rs.getString("subject1") %>">
<br><br/>
Marks :<input type="number" name="marks1"  required min = "0" max = "100"value="<%=rs.getString("marks1") %>">
<br><br/>
Second Subject :<input type="text" name="subject2" required value="<%=rs.getString("subject2") %>">
<br><br/>
Marks :<input type="number" name="marks2" required min = "0" max = "100" value="<%=rs.getString("marks2") %>">
<br><br/>
Third Subject :<input type="text" name="subject3" required value="<%=rs.getString("subject3") %>">
<br><br/>
Marks :<input type="number" name="marks3" required min = "0" max = "100" value="<%=rs.getString("marks3") %>">
<br><br/>
<script>
    const input = document.querySelector('input[name="firstname"]');

    input.addEventListener('invalid', function (event) {
     if (event.target.validity.patternMismatch) {
    event.target.setCustomValidity('First Name should be min 2 alphabets and only alphabets.');
     }
    })

input.addEventListener('change', function (event) {
event.target.setCustomValidity('');
})
const input2 = document.querySelector('input[name="lastname"]');

    input2.addEventListener('invalid', function (event) {
     if (event.target.validity.patternMismatch) {
    event.target.setCustomValidity('Last Name should be min 2 alphabets and  only alphabets.');
     }
    })

input2.addEventListener('change', function (event) {
event.target.setCustomValidity('');
})
</script>
</div>
<br><br/>
<input type = "submit"style = "margin-top:33%;font-size: 20px;width: 140px;background-color: white;
color:black;font-weight: bold;font-family:'M PLUS Rounded 1c', sans-serif ;"
 value="Save" name = "btn"/>
</form>




</form>


<% 
if(request.getParameter("btn")!= null){
String rollno = request.getParameter("rollno");
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String address = request.getParameter("address");
String phoneno = request.getParameter("phoneno");
String semester = request.getParameter("semester");
String subject1 = request.getParameter("subject1");
double marks1= Double.parseDouble(request.getParameter("marks1"));
String subject2= request.getParameter("subject2");
double marks2= Double.parseDouble(request.getParameter("marks2"));
String subject3 = request.getParameter("subject3");
double marks3= Double.parseDouble(request.getParameter("marks3"));
double avg = (marks1+marks2+marks3)/3.0;


if(firstname.length()<2)
{
   
   out.println("<h2 style = \"color : white;\">first name should be min of 2 characters</h2>");
   return;
}
if(lastname.length()<2)
{
    out.println("<h2 style = \"color : white;\">Last name should be min of 2 characters</h2>");
    return;
}
if(address.length()<3)
{
    out.println("<h2 style = \"color : white;\" >Address should be min of 3 characters</h2>");
    return;
}

if(rollno!= null )
{

int personRollno = Integer.parseInt(rollno);
try
{
    DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
    String url = "jdbc:mysql://localhost:3306/kc_5jan23";

    Connection con = DriverManager.getConnection(url,"root","abc456");
    String sql="Update student set rollno=?,firstname=?,lastname=?,address=?,phoneno=?,semester=?,subject1=?,marks1=?,subject2=?,marks2=?,subject3=?,marks3=?,avg=? where rollno="+rollno;
    PreparedStatement pst = con.prepareStatement(sql);
    pst.setString(1,rollno);
    pst.setString(2, firstname);
    pst.setString(3, lastname);
    pst.setString(4, address);
    pst.setString(5, phoneno);
    pst.setString(6, semester);
    pst.setString(7, subject1);
    pst.setDouble(8, marks1);
    pst.setString(9, subject2);
    pst.setDouble(10, marks2);
    pst.setString(11, subject3);
    pst.setDouble(12, marks3);
    pst.setDouble(13,avg);
   
    int i = pst.executeUpdate();
    con.close();
 
if(i > 0)
{%>
<div style="size: 20px; color: white;"><h2 >Record Updated Successfully</h2></div>
<%
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}}
%>


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
