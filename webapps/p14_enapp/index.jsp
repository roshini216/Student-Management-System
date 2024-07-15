<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%@page import="javax.activation.*" %>

<html>
    <head>
        <title>Kamal Classes</title>
        <style>*{font-size: 36px;font-family: Simsun;}
                textarea{resize:none;}
                h1{background-color:black; color:white;width:50%;border-radius:30px;}
                body{background-color: azure;}
        </style>
    </head>
    <body>
        <center>
            <h1>Enquiry Form</h1>
            <form>
                <input type = "text" name = "name" placeholder = "enter ur name"/>
                <br/><br>
                <input type = "number" name="phone"placeholder = "enter phone number"/>
                <br/><br>
                <textarea name = "query" placeholder="enter query" rows=3></textarea>
                <br/><br/>
                <input type = "submit" name = "btn"/>
            
            </form>
        <%
            if(request.getParameter("btn")!=null)
            {
                String name = request.getParameter("name");
                String phone = request.getParameter("phone");
                String query = request.getParameter("query");
                String dt = new java.util.Date().toString();

                try
                {
                    DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                    String url = "jdbc:mysql://localhost:3306/en_6jan23";
                    Connection con = DriverManager.getConnection(url,"root","abc456");
                    String sql = "insert into enquiry values(?,?,?,?)";
                    PreparedStatement pst = con.prepareStatement(sql);
                    pst.setString(1,name);
                    pst.setString(2,phone);
                    pst.setString(3,query);
                    pst.setString(4,dt);
                    pst.executeUpdate();
                    out.println("We will get back in 2hrs else course is free");

                //mail kahan se jayega
                Properties p = System.getProperties();
                p.put("mail.smtp.host","smtp.gmail.com");
                p.put("mail.smtp.port",587);
                p.put("mail.smtp.auth",true);
                p.put("mail.smtp.starttls.enable",true);

                //aapka un and pw ka authentication
                Session ms = Session.getInstance(p,new Authenticator(){
                public PasswordAuthentication getPasswordAuthentication(){
                    String un = "tester.parag.6jan23@gmail.com";
                    String pw ="ikhbbzfqxawiqneg";
                    return new PasswordAuthentication(un,pw);
                }
                });
                try
                {
                    //mail ko draft karke bhejo
                    MimeMessage msg = new MimeMessage(ms);
                    String subject = "enquiry from " + name;
                    msg.setSubject(subject);
                    String txt = "name =" + name + " phone = " + phone + " query = " + query;
                    msg.setText(txt);
                    msg.setFrom(new InternetAddress("tester.parag.6jan23@gmail.com"));
                    msg.addRecipient(Message.RecipientType.TO,new InternetAddress("roshinipanjwani@gmail.com"));
                    Transport.send(msg);
                }
                catch(Exception e )
                {
                    out.println("issue ->" +e);
                }
                    con.close();
                }
                catch(SQLException se)
                {
                    out.println("issue" +se);
                }
            }
        %>
        </center>
    </body>
</html>