<%@ page import = "java.sql.*" %>
<html>
    <head>
        <title> Student Management System</title>
        <style>
            *{font-size:40px; font-family: Verdana, Geneva, Tahoma, sans-serif;
             
            }
            .button{
                background-color: #041f6f;
                color: white;
                
            }
            .heading{
                color:#041f6f;
                padding: 15px;
            }
            body{
                background-image: url(img2.jpg);
                background-position: center;
                background-repeat: no-repeat; 
                 background-size: cover; 
            }
            a{color: white;text-decoration: none;background-color: #041f6f;border-width: 5px;}

           .para{
                font-size: 25px;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
                color: #041f6f;
           }
           
        </style>
        <link rel = "icon" href = "student.ico"/>
        <!-- <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css'><link rel="stylesheet" href="./style.css"> -->
    </head>
    <body>
        
        <center>
        

           
            <h1 class="heading">Signup Page</h1>
            <p class = "para">Please make sure your password consists of min 8 characters<br/> 
                                and it should have minimum 1 uppercase and 1 lowercase</p>
            <form method = "POST">
                <input type = "text" name = "un" placeholder="Enter Username" color="black"/>
                <br/><br/>
                <input type = "password" name = "pw1" placeholder="Enter Password" color="black"/>
                <br/><br/>
                <input type = "password" name = "pw2" placeholder="Renter Password"color="black"/>
                <br/><br/>
                <input type = "submit" value = "Register" class="button" name = "btn"/>
                
            </form>
            <a href = "./index.jsp">Existing User ? </a>
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
            boolean upperCaseLetter=false; 
            boolean lowerCaseLetter=false; 
            int countCharacters = 0;
            while ( countCharacters  < pw1.length() )
                {
                    int characterC = pw1.charAt( countCharacters );
                   
                    if ( ( characterC >= 65)  && ( characterC <=  90) )
                        upperCaseLetter = true;
                    if ( ( characterC >= 97)  &&  ( characterC <= 122) )
                        lowerCaseLetter = true;
                    countCharacters++;
                }
            if(( upperCaseLetter == false) ||(lowerCaseLetter == false))
            {
                out.println("Atleast one character each should be uppercase and lowercase ");
                return;
            }
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

            