<html>
    <head>
        <title> Student Management System</title>
        <style>
            *{font-size:40px; font-family: Arial;}
            body{background-color:rgb(107, 140, 207);}
            
           
        </style>
         <link rel = "icon" href = "student.ico"/>
         
    </head>
    <body>
        <center><h1>Student Management System</h1> <center>
            
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
        
    </body>
</html>