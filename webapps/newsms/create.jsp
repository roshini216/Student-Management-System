<%@ page import = "java.sql.*" %>
<html>
    <head>
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


    </head>
    <body>
        <center>
            <div class = "nav">
                <a href = "index.jsp">Home</a>
                <a href = "create.jsp">Create</a>
                
            </div>
            <h1 class="headings"> Create Page</h1>
            <form>
                <input type = "number" name = "rno" placeholder="enter rno"/>
                <br/><br/>
                <input type = "text" name = "name" placeholder="enter name"/>
                <br/><br/>
                <input type = "number" name = "marks" placeholder="enter marks"/>
                <br/><br/>
                <input type = "submit" value="Save" name = "btn"/>
            </form>
        <%
             if(request.getParameter("btn")!= null)
        {
                int rno = Integer.parseInt(request.getParameter("rno"));
                String name = request.getParameter("name");
                int marks = Integer.parseInt(request.getParameter("marks"));
                try
            {
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                String url = "jdbc:mysql://localhost:3306/rosh123";
                Connection con = DriverManager.getConnection(url,"root","abc456");
                String sql = "insert into student values(?,?,?)";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setInt(1,rno);
                pst.setString(2,name);
                pst.setInt(3,marks);
                pst.executeUpdate();
                con.close();
                out.println("record created");
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