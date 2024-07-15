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
        <title> SMS App by KS</title>
        <style>
            *{font-size:40px;}
            body{background-color:rgb(90, 235, 240);}
            
            .nav{background-color:black;}
            .nav a {color:white;text-decoration:none;margin:5%;}

        </style>

    </head>
    <body>
    <center>
        <div class = "nav">
            <a href = "index.jsp">Home</a>
            <a href = "create.jsp">Create</a>
            
        </div>
        <h1> Home Page</h1>
        <table border= "3" style = "width: 50%;"
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
        
        </center>
    </body>

</html>