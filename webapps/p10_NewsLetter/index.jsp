<%@ page import = "java.sql.*"%>
<html>
    <head>
        <style>
            *{font-size:50px; font-family:Cambria;}
            body{background-color:rgb(85, 92, 197);}
        </style>
        <title> Kamal Classes </title>      
    </head>
    <body>
        <center>
            <h1> KAMAL CLASSES NEWSLETTER</h1>
            <form>
                <input type = "text" name = "name" placeholder="Enter your name"/>
                <br/><br/>
                <input type = "email" name = "email" placeholder="Enter your email"/>
                <br/><br/>
                <input type = "checkbox" name = "s" value = "software">software
                <input type = "checkbox" name = "e" value = "engg">Engg
                <br/><br/>
                <input type = "submit" name = "btn" value = "Subscribe" />
            </form>
            <%
                if(request.getParameter("btn")!= null)
                {
                    String name = request.getParameter("name");
                    String email = request.getParameter("email");
                    String choices = "";
                    String s = request.getParameter("s");
                    String e = request.getParameter("e");
                    if(s!=null)                     choices += "software";
                    if(e!=null)                     choices += "engg";
                    try
                    {
                        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                        String url = "jdbc:mysql://localhost:3306/newsletter_4jan23";
                        String un = "root";
                        String pw = "abc456";
                        Connection con = DriverManager.getConnection(url,un,pw);
                        String sql = "insert into student values(?,?,?)";
                        PreparedStatement pst = con.prepareStatement(sql);
                        pst.setString(1,name);
                        pst.setString(2,email);
                        pst.setString(3,choices);
                        pst.executeUpdate();
                        out.println("thankyou");
                        con.close();                       
                    }
                    catch(SQLException er)
                    {
                        out.println("issue"+er);
                    }
                }
            %>
        </center>
    </body>
</html>