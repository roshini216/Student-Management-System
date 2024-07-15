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
            <h1>Signup Page</h1>
            <form method = "POST">
                <input type = "text" name = "un" placeholder="enter username"/>
                <br/><br/>
                <input type = "password" name = "pw1" placeholder="enter password"/>
                <br/><br/>
                <input type = "password" name = "pw2" placeholder="Renter password"/>
                <br/><br/>
                <input type = "submit" value = "Register" name = "btn"/>
                
            </form>
            <a href = "./index.jsp">Already Registered</a>
            <br/><br/>

        <%
            if(request.getParameter("btn")!=null)
            {
                String un = request.getParameter("un");
                String pw1 = request.getParameter("pw1");
                String pw2 = request.getParameter("pw2");
            if(!pw1.equals(pw2))
            {
                out.println("Passwords did not match");
                return;
            }
            if(pw1.length()<8)
            {
                out.println("Passwords should be min of 8 characters");
                return;
            }
            //check for password complexity
            try
            {
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                String url = "jdbc:mysql://localhost:3306/auth_5jan23";
                Connection con = DriverManager.getConnection(url,"root","abc456");
                String sql = "insert into users values(?,?)";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setString(1,un);
                pst.setString(2,pw1);
                pst.executeUpdate();
                con.close();
                response.sendRedirect("index.jsp");
            }
            catch(SQLException err)
            {
                    out.println("You are already registered");
            }
            }
         %>
        </center>
        </body>
</html>

            