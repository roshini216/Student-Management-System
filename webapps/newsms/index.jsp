<%@ page import = "java.sql.*" %>
    <%
        if(request.getParameter("r")!=null)
        {
            int rno = Integer.parseInt(request.getParameter("r"));
            try
            {
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                String url = "jdbc:mysql://localhost:3306/rosh123";
                Connection con = DriverManager.getConnection(url,"root","abc456");
                String sql = "delete from student where rno=?";
		out.println("roshini");
		out.println(rno);
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
                <th>Rno</th>
                <th>Name</th>
                <th>Marks</th>
                <th>Delete</th>
            </tr>
            <%
                try
                {
                    DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                    String url = "jdbc:mysql://localhost:3306/rosh123";
                    Connection con = DriverManager.getConnection(url,"root","abc456");
                    String sql = "select * from  student";
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery(sql);
                    while(rs.next())
                    {
                        int rno = rs.getInt(1);
                        String name = rs.getString(2);
                        int marks = rs.getInt(3);
                    
                
            %>
                    <tr style = "text-align: center;">
                        <td><%= rno %></td>
                        <td><%= name %></td>
                        <td><%= marks %></td>
                        <td> <a href="?r=<%=rno%>" onclick="return confirm('Are you sure?')">Delete</a></td>
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