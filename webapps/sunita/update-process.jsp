
<%@ page import="java.sql.*" %>

    
<% 
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
double avg = Double.parseDouble(request.getParameter("avg"));
out.println();
out.print("Average marks = ");
out.println((marks1+marks2+marks3)/3.0);

if(rollno!= null)
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
{
out.print("Record Updated Successfully");
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
}
%>