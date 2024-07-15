<%@page import="java.sql.*" %>

<html>
    <head>
        <title>Kamal Classes</title>
        <style>*{font-size: 36px;font-family: Simsun;}
             body{background-color: azure;}
            .btn{width:40%;}
        </style>
    </head>
    <body>
        <center>
            <h1>Kamal classes NewsLetter</h1>
            <form>
                <input type = "email" name = "email" placeholder = "enter email address"/>
                <br/><br>
                <input type = "submit" value = "Sub" name = "btnSub" class = "btn"/>
                <br/><br/>
                <input type = "submit" value="UnSub" name = "btnUnSub" class = "btn"/>
            </form>
            <%
                if(request.getParameter("btnSub")!=null)
                {
                    String email = request.getParameter("email");
                    try
                    {
                        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                        String url = "jdbc:mysql://localhost:3306/newsletter_6jan23";
                        Connection con = DriverManager.getConnection(url,"root","abc456");
                        String sql = "insert into subs values(?)";
                        PreparedStatement pst = con.prepareStatement(sql);
                        pst.setString(1,email);
                        pst.executeUpdate();
                        out.println("thanku for ur subscription");
                        con.close();
                    }
                    catch(Exception e )
                    {
                        out.println("issue : " + "You have already subscribed");
                    }
            
                }
                else if(request.getParameter("btnUnSub")!=null)
                {
                    String email = request.getParameter("email");
                    try
                    {
                        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                        String url = "jdbc:mysql://localhost:3306/newsletter_6jan23";
                        Connection con = DriverManager.getConnection(url,"root","abc456");
                        String sql = "delete from subs where email=?";
                        PreparedStatement pst = con.prepareStatement(sql);
                        pst.setString(1,email);
                        long ans = pst.executeUpdate();
                        if(ans==1)
                            out.println("Okay you have been unsubscribed");
                        else
                            out.println("You hv not yet subscribed");
                            con.close();
                    }
                     catch(Exception e )
                    {
                        out.println("issue: " + "You have already subscribed");
                    }

                }
            %>
        </center>
    </body>