<%@ page import = "java.sql.*" %>

<%
	
        if(request.getParameter("r")!= null)
        {
            int rno = Integer.parseInt(request.getParameter("r"));
            try
            {
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                String url = "jdbc:mysql://localhost:3306/kc_5jan23";
                Connection con = DriverManager.getConnection(url,"root","abc456");
                String sql = "delete from student where rollno=?";
                PreparedStatement pst = con.prepareStatement(sql);

                pst.setInt(1,rno);
		
                pst.executeUpdate();
                con.close();

            }
            catch(SQLException err)
                {
                    out.println("issue" +err);
                }


        }
    %>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Luckiest+Guy&family=M+PLUS+Rounded+1c:wght@300;500&display=swap" rel="stylesheet">
        <title> Student Management System</title>
        <style>
            *{font-size:40px; }
            body{background-image:url(homeimg.jpeg);
                background-position: center;
                background-repeat: no-repeat; 
                 background-size: cover; }
               .nav{width: 100%;display:flex;}
               .nav a {color:white;text-decoration:none;margin:1%;}

            .Logout{
               
            
                color: #041f6f; background-color:white;font-size: large;border: lightblue 10px;
                right:15px;
                position: fixed;
                
            }
            .table{
                border: 2px solid black;
                font-size: large;
                width: 100%;
                
            }
            tr,td,th{
                padding: 8px;
                font-size: 20px;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
                color: white;
                text-align: center;
            }
            .heading{
                font-family:'M PLUS Rounded 1c', sans-serif ;
                font-size: 50px;
                color: aqua;
                text-shadow: 6px 6px black;
                padding-bottom:0%;
                
                left:15px;
                
            }
            a{text-decoration: none;color: black;font-size: large;}
            th{
                background-color: rgb(133, 209, 235);
                color: black;
            }
            td{
                background-color:rgb(239, 235, 235);
                color:black;
            }
            .user{
            
                text-align: center;
                font-family:'M Plus Rounded 1c';
                padding-bottom: 0px;
                color: white;
            }
           
        </style>
         <link rel = "icon" href = "student.ico"/>
         
    </head>
    <body>
        
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
                <form>
                    <input type = "submit" value = "Logout" name = "btn" class = "Logout"/>
                
                </form>
            </span>
            <div><center><h1 class="heading">STUDENT MANAGEMENT SYSTEM</h1> </center></div>
                
            
        </div>

      <!-- <div><center><h1 class="heading">STUDENT MANAGEMENT SYSTEM</h1> </center></div> -->
            <div class="user">
            <%
                if(session.getAttribute("user")!=null)
                {
                    
                    String user = (String)session.getAttribute("user");
                    out.println(" WELCOME " + user);
                    
                   
                }
                else
                {
                    response.sendRedirect("index.jsp");
                }
            %>
            </div>
            <br/><br/>
           
            <%
            if(request.getParameter("btn")!= null)
            {   
                request.getSession().invalidate();
                response.sendRedirect("index.jsp");
            }
            %>
           
            
            <table class = "table" border= "3" style = "width: 75%;"
                <tr>
                    <th>Roll no</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Address</th>
                    <th>Phone number</th>
                    <th>Semester</th>
                    <th> First Subject</th>
                    <th> Marks</th>
                    <th> Second Subject</th>
                    <th> Marks</th>
                    <th> Third Subject</th>
                    <th> Marks</th>
                    <th> Average</th>
                     <th>Delete</th>
                     <th>Update</th>

                </tr>
                <%
                    try
                    {
                        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                        String url = "jdbc:mysql://localhost:3306/kc_5jan23";
                        Connection con = DriverManager.getConnection(url,"root","abc456");
                        String sql = "select * from  student";
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery(sql);
                        while(rs.next())
                        {
                            int rno = rs.getInt(1);
                            String fname = rs.getString(2);
                            String lname = rs.getString(3);
                            String address = rs.getString(4);
                            String phn = rs.getString(5);
                            String sem = rs.getString(6);
                            String sub1 = rs.getString(7);
                            double m1 = rs.getDouble(8);
                             String sub2 = rs.getString(9);
                            double m2 = rs.getDouble(10);
                            String sub3 = rs.getString(11);
                             double m3 =rs.getDouble(12);
                             double average = rs.getDouble(13);
                            
                    
                %>
                        <tr style = "text-align: center;">
                        <td><%= rno %></td>
                        <td><%= fname %></td>
                        <td><%= lname %></td>
                        <td><%= address %></td>
                        <td><%= phn %></td>
                        <td><%= sem %></td>
                        <td><%= sub1 %></td>
                        <td><%= m1 %></td>
                        <td><%= sub2 %></td>
                        <td><%= m2 %></td>
                        <td><%= sub3 %></td>
                        <td><%= m3 %></td>
                        <td><%= average%></td>
                
                
                
                        <td> <a href="?r=<%=rno%>"  onclick="return confirm('Are you sure?')">Delete</a></td>
                        <td><a href="update.jsp?rollno=<%=rs.getString("rollno")%>">update</a></td>
                        </tr>
                <%
                        }
                    }
                    catch(SQLException err)
                    {
                        out.println("issue" +err);
                    }
                %>
                </table>
        
    </body>
</html>