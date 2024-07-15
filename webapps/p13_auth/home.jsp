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
            <h1>Home Page</h1>
            <%
                if(session.getAttribute("user")!=null)
                {
                    String user = (String)session.getAttribute("user");
                    out.println(" welcome " + user);
                }
                else
                {
                    response.sendRedirect("index.jsp");
                }
            %>
            <br/><br/>
            <form>
                <input type = "submit" value = "Logout" name = "btn"/>
            </form>
            <%
            if(request.getParameter("btn")!= null)
            {   
                request.getSession().invalidate();
                response.sendRedirect("index.jsp");
            }
            %>
        </center>
    </body>
</html>