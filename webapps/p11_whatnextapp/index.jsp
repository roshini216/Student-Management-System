<%@ page import = "java.sql.*" %>
<html>
    <head>
        <title> What Next App</title>
        <style> *{font-size : 40px; font-family: Simsun;}</style>
    </head>
    <body>
        <center>
            <h1> What next App </h1>
            <form>
                <input type = "text" name = "name" placeholder = "enter ur name"/>
                <br/><br/>
                <label>Select any one option</label>
                <br/><br/>
                <input type = "radio" name = "c" value = "job" checked = true/> Job
                <input type = "radio" name = "c" value = "ms" /> MS
                <input type = "radio" name = "c" value = "mba" /> MBA
                <br/><br/>
                <input type = "submit" name = "btn"/>
            </form>
            <%
            if(request.getParameter("btn")!= null)
            {
                String name = request.getParameter("name");
                String choice = request.getParameter("c");
                try
                {
                   DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                   String url = "jdbc:mysql://localhost:3306/wn_4jan23";
                   String un = "root";
                   String pw = "abc456";
                   Connection con = DriverManager.getConnection(url,un,pw);
                   String sql = "insert into student values(?,?)";
                   PreparedStatement pst = con.prepareStatement(sql);
                   pst.setString(1,name);
                   pst.setString(2,choice);
                   pst.executeUpdate();
                   out.println("thankyou");
                   con.close();
                }
                catch(SQLException er)
                {
                    out.println("issue" +er);
                }
            }
            %>
        </center>
    </body>
</html>