<%@ page import = "java.sql.*" %>
<html>
    <head>
        <title> SMS App by KS</title>
        <style>
            *{font-size:40px;}
            body{background-color:rgb(90, 235, 240);}
            .nav{background-color:black;}
            .nav a {color:white;text-decoration:none;margin:5%;}

        </style>

    </head>
    <body>
        <center>
            <div class = "nav">
                <a href = "index.jsp">Home</a>
                <a href = "create.jsp">Create</a>
                
            </div>
            <h1> Create Page</h1>
            <form>
                <input type = "number" name = "rollno" placeholder="enter roll no"/>
                <br/><br/>
                <input type = "text" name = "firstname" placeholder="enter First name"/>
                <br/><br/>
 		<input type = "text" name = "lastname" placeholder="enter Last name"/>
                <br/><br/>
		<input type = "text" name = "address" placeholder="enter address"/>
                <br/><br/>
               <input type = "number" name = "phoneno" placeholder="enter phone no"/>
                <br/><br/>
		<input type = "text" name = "semester" placeholder="enter semester"/>
                <br/><br/>
		<input type = "text" name = "subject1" placeholder="enter first subject"/>
                <br/><br/>
		<input type = "number" name = "marks1" placeholder="enter marks"/>
                <br/><br/>
		<input type = "text" name = "subject2" placeholder="enter second subject"/>
                <br/><br/>
		<input type = "number" name = "marks2" placeholder="enter marks"/>
                <br/><br/>
		<input type = "text" name = "subject3" placeholder="enter third subject"/>
                <br/><br/>
		<input type = "number" name = "marks3" placeholder="enter marks"/>
                <br/><br/>
		<input type = "number" name = "avg" placeholder="Average"/>
                <br/><br/>
		
		 <input type = "submit" value="Save" name = "btn"/>
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
		double average = Double.parseDouble(request.getParameter("avg"));

               
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