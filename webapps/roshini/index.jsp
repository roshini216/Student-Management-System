<%@ page import = "java.sql.*" %>
<html>
    <head>
        <title>Student Management System</title>

          <link rel = "icon" href = "student.ico"/>
          <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css'/>
          <link rel="stylesheet" href="./style.css"/>
         
    </head>
    <body>
        
        <!-- partial:index.partial.html -->
        <div class="container">
	        <div id="login-box">
		        <div class="logo">
		
			        <h1 class="logo-caption"><span class="tweak">L</span>ogin</h1>
		</div><!-- /.logo -->
		<div class="controls">
			<form method="POST">
			<input type="text" name="un" placeholder="Username" class="form-control" />
			<input type="password" name="pw" placeholder="Password" class="form-control" />
            <br/>
			<input type="submit" style="background-color:#6fbee5;" value = "Login"name="btn" class ="btn btn-default btn-block btn-custom"/>
			</form>
		<a href = "./signup.jsp">New User</a>
		</div>
	    </div>
        </div>
    <div id="particles-js"></div>
    <!-- partial -->
    <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css'></script>
<script src='https://code.jquery.com/jquery-1.11.1.min.js'></script><script  src="./script.js"></script>
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
    </body>
</html>