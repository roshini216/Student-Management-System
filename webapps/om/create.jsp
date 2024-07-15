<%@ page import = "java.sql.*" %>

<html>
    <head>
        <title> Student Management System</title>
        <style>
            *{font-size: 20px;}
            /* body{background-color:rgb(90, 235, 240);}
            .nav{background-color:black;}
            .nav a {color:white;text-decoration:none;margin:5%;} */
            .heading{
                font-family:'M PLUS Rounded 1c', sans-serif ;
                font-size: 30px;
                color: aqua;
                text-shadow: 4px 4px black;
                padding-bottom:0%;
                font-weight: boldest;
                left:15px;
                
            }
           
            body{background-image:url(homeimg.jpeg);
                background-position: center;
                background-repeat: no-repeat; 
                 background-size: cover; 
                }
               .nav{width: 100%;display:flex;}
               .nav a {color:white;text-decoration:none;margin:1%;}
               .form,.left,.right
               {
                 font-size: 20px; 
                 text-align: left;
                 color: white;
                 font-family: Verdana, Geneva, Tahoma, sans-serif;
                 font-weight: bold;
                
               }
               input{
                width:100%;
                padding: 5px;
                margin: 2px 1px;
                background-color:rgb(133, 209, 235);
               }
               ::placeholder{
                color:black;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
               }
        </style>
 	<link rel = "icon" href = "student.ico"/>
     <link href="https://fonts.googleapis.com/css2?family=Luckiest+Guy&family=M+PLUS+Rounded+1c:wght@300;500&display=swap" rel="stylesheet">
    </head>

    <body>
        <center>
            <div class = "nav">
                <span style="margin:1%;">
                <a href = "home.jsp">Home</a>
                </span>
                <span style="margin: 1%;">
                <a href = "create.jsp">Create</a>
                </span>
               
                <span style="text-align:right;margin:1%;">
                
            </div>
            <h1 class="heading"> CREATE PAGE</h1>
            <div class  = "left" style = "float: left;margin-left:10% ;">
            <form class="form">
              <!-- <div></div> -->
                <!-- <label for = "rollno">ROLL NO:</label>  -->
                 Roll No :<input type   = "number" name = "rollno" placeholder=" roll no" min ="0"required/>
                <br/><br/>
                First Name :<input type = "text" name = "firstname" pattern = "[a-zA-Z]+"  placeholder=" first name" value="firstname" required/>
                <br/><br/>
 		        Last Name :<input type = "text" name = "lastname" pattern = "[a-zA-Z]+" placeholder=" last name" value="lastname" required/>
                <br/><br/>
		        Address :<input type = "text" name = "address" placeholder=" address" value="address"required/>
                <br/><br/>
               Phone no :<input type = "number" name = "phoneno" placeholder=" phone no" value="9930024694"required />
                <br/><br/>
		        Semester :<input type = "text" name = "semester" placeholder=" semester"value="semester"required/>
                <br/><br/>
                <!-- </form> -->
            </div>
            <div class  = "right" style = "float: right;margin-right:10%;">
                <!-- <form class="right-form"> -->
		        First Subject :<input type = "text" name = "subject1" placeholder=" first subject"value="subject1"required/>
                <br/><br/>
		        Marks :<input type = "number" name = "marks1" placeholder="marks"min = "0" max = "100"value="50"required/>
                <br/><br/>
		        Second Subject :<input type = "text" name = "subject2" placeholder="second subject"value="subject2"required/>
                <br/><br/>
		        Marks :<input type = "number" name = "marks2" placeholder=" marks"min = "0" max = "100"value="45"required/>
                <br/><br/>
		        Third Subject :<input type = "text" name = "subject3" placeholder=" third subject"value="subject3"required/>
                <br/><br/>
		        Marks :<input type = "number" name = "marks3" placeholder=" marks"min = "0" max = "100"value="78"required/>
                <br/><br/>
                <script>
                    const input = document.querySelector('input[name="firstname"]');

                    input.addEventListener('invalid', function (event) {
                     if (event.target.validity.patternMismatch) {
                    event.target.setCustomValidity('First Name should be only alphabets.');
                     }
                    })

                input.addEventListener('change', function (event) {
                event.target.setCustomValidity('');
                })
                const input2 = document.querySelector('input[name="lastname"]');

                    input2.addEventListener('invalid', function (event) {
                     if (event.target.validity.patternMismatch) {
                    event.target.setCustomValidity('Last Name should be only alphabets.');
                     }
                    })

                input2.addEventListener('change', function (event) {
                event.target.setCustomValidity('');
                })
                </script>
		        
                <br/><br/>
                <!-- </form> -->
            </div>
			
		        <input type  = "submit" style = "margin-top: 38%;font-size: 20px;width: 140px;background-color: white;
                color:black;font-weight: bold;font-family:'M PLUS Rounded 1c', sans-serif ;"
                 value="Save" name = "btn"/>
                </form>
            
        <%
             if(request.getParameter("btn")!= null)
        {
             	 int rno = Integer.parseInt(request.getParameter("rollno"));
             	 String fname = request.getParameter("firstname");
		        String lname = request.getParameter("lastname");
		        String addr = request.getParameter("address");
		        String phn = request.getParameter("phoneno");
		        String sem = request.getParameter("semester");
		        String sub1 = request.getParameter("subject1");
		        double m1 = Double.parseDouble(request.getParameter("marks1"));
		        String sub2 = request.getParameter("subject2");
		        double m2 = Double.parseDouble(request.getParameter("marks2"));
		        String sub3 = request.getParameter("subject3");
		        double m3 = Double.parseDouble(request.getParameter("marks3"));
                
		        
                double average = (m1+m2+m3)/3.0;
                if(fname.length()<2)
                {
                   
                   out.println("<h2 style = \"color : white;\">first name should be min of 2 characters</h2>");
                   return;
                }
                if(lname.length()<2)
                {
                    out.println("<h2 style = \"color : white;\">Last name should be min of 2 characters</h2>");
                    return;
                }
                if(addr.length()<3)
                {
                    out.println("<h2 style = \"color : white;\" >Address should be min of 3 characters</h2>");
                    return;
                }
               
               
               
                try
            {
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                String url = "jdbc:mysql://localhost:3306/kc_5jan23";
                Connection con = DriverManager.getConnection(url,"root","abc456");
                String sql = "insert into student values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setInt(1,rno);
                pst.setString(2,fname);
		        pst.setString(3,lname);
		        pst.setString(4,addr);
                pst.setString(5,phn);
		        pst.setString(6,sem);
		        pst.setString(7,sub1);
		         pst.setDouble(8,m1);
		         pst.setString(9,sub2);
		         pst.setDouble(10,m2);
		         pst.setString(11,sub3);
		         pst.setDouble(12,m3);
		         pst.setDouble(13,average);
		
                pst.executeUpdate();
                con.close();
                %>
                 <div style="size: 20px; color: white;"><h2 >Record Created Succesfully</h2></div>
                <%
     
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