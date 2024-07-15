<%@ page import = "java.sql.*" %>
<html>
    <head>
        <title> KC App</title>
        <style>
            *{font-size:40px; font-family: Arial;}
            body{background-color:rgb(107, 140, 207);}
            
           
        </style>

    </head>
    <body>
        <center>
            <h1>Login Page</h1>
            <form method = "POST">
                <input type = "text" name = "un" placeholder="enter username"/>
                <br/><br/>
                <input type = "password" name = "pw" placeholder="enter password"/>
                <br/><br/>
                <input type = "submit" value = "Login" name = "btn"/>
                
            </form>
            <a href = "./signup.jsp">New User</a>
            
            <%
            if(request.getParameter("btn")!=null)
            {
                String un = request.getParameter("un");
                String pw = request.getParameter("pw");
                try
                {
                    DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                    String url = "jdbc:mysql://localhost:3306/auth_5jan23";
                    Connection con = DriverManager.getConnection(url,"root","abc456");
                    String sql = "select * from  users where username = ? and password = ?";
                    PreparedStatement pst = con.prepareStatement(sql);
                    pst.setString(1,un);
                    pst.setString(2,pw);
                    ResultSet rs = pst.executeQuery();
                    if(rs.next())
                    {
                        request.getSession().setAttribute("user",un);
                        response.sendRedirect("home.jsp");
                    }
                    else
                    {
                        out.println("invalid login");
                    }

                }
                catch(SQLException err)
                {
                    out.println("issue" +err);
                }
            }
            %>
        </center>
    </body>
</html>