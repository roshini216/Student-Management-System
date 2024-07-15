/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.70
 * Generated at: 2023-01-23 10:40:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");

	
        if(request.getParameter("r")!= null)
        {
            int rno = Integer.parseInt(request.getParameter("r"));
            try
            {
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                String url = "jdbc:mysql://localhost:3306/kc_5jan23";
                Connection con = DriverManager.getConnection(url,"root","abc456");
                String sql = "delete from student where rollno=?";
                PreparedStatement pst = con.prepareStatement(sql);

                pst.setInt(1,rno);
		
                pst.executeUpdate();
                con.close();

            }
            catch(SQLException err)
                {
                    out.println("issue" +err);
                }


        }
    
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Luckiest+Guy&family=M+PLUS+Rounded+1c:wght@300;500&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("        <title> Student Management System</title>\r\n");
      out.write("        <style>\r\n");
      out.write("            *{font-size:40px; }\r\n");
      out.write("            body{background-image:url(homeimg.jpeg);\r\n");
      out.write("                background-position: center;\r\n");
      out.write("                background-repeat: no-repeat; \r\n");
      out.write("                 background-size: cover; }\r\n");
      out.write("               .nav{width: 100%;display:flex;}\r\n");
      out.write("               .nav a {color:white;text-decoration:none;margin:1%;}\r\n");
      out.write("\r\n");
      out.write("            .Logout{\r\n");
      out.write("               \r\n");
      out.write("            \r\n");
      out.write("                color: #041f6f; background-color:white;font-size: large;border: lightblue 10px;\r\n");
      out.write("                right:15px;\r\n");
      out.write("                position: fixed;\r\n");
      out.write("                \r\n");
      out.write("            }\r\n");
      out.write("            .table{\r\n");
      out.write("                border: 2px solid black;\r\n");
      out.write("                font-size: large;\r\n");
      out.write("                width: 100%;\r\n");
      out.write("                \r\n");
      out.write("            }\r\n");
      out.write("            tr,td,th{\r\n");
      out.write("                padding: 8px;\r\n");
      out.write("                font-size: 20px;\r\n");
      out.write("                font-family: Verdana, Geneva, Tahoma, sans-serif;\r\n");
      out.write("                color: white;\r\n");
      out.write("                text-align: center;\r\n");
      out.write("            }\r\n");
      out.write("            .heading{\r\n");
      out.write("                font-family:'M PLUS Rounded 1c', sans-serif ;\r\n");
      out.write("                font-size: 50px;\r\n");
      out.write("                color: aqua;\r\n");
      out.write("                text-shadow: 6px 6px black;\r\n");
      out.write("                padding-bottom:0%;\r\n");
      out.write("                \r\n");
      out.write("                left:15px;\r\n");
      out.write("                \r\n");
      out.write("            }\r\n");
      out.write("            a{text-decoration: none;color: black;font-size: large;}\r\n");
      out.write("            th{\r\n");
      out.write("                background-color: rgb(133, 209, 235);\r\n");
      out.write("                color: black;\r\n");
      out.write("            }\r\n");
      out.write("            td{\r\n");
      out.write("                background-color:rgb(239, 235, 235);\r\n");
      out.write("                color:black;\r\n");
      out.write("            }\r\n");
      out.write("            .user{\r\n");
      out.write("            \r\n");
      out.write("                text-align: center;\r\n");
      out.write("                font-family:'M Plus Rounded 1c';\r\n");
      out.write("                padding-bottom: 0px;\r\n");
      out.write("                color: white;\r\n");
      out.write("            }\r\n");
      out.write("           \r\n");
      out.write("        </style>\r\n");
      out.write("         <link rel = \"icon\" href = \"student.ico\"/>\r\n");
      out.write("         \r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
      out.write("        <div class = \"nav\">\r\n");
      out.write("            <span style=\"margin:1%;\">\r\n");
      out.write("            <a href = \"home.jsp\">Home</a>\r\n");
      out.write("            </span>\r\n");
      out.write("            <span style=\"margin: 1%;\">\r\n");
      out.write("            <a href = \"create.jsp\">Create</a>\r\n");
      out.write("            </span>\r\n");
      out.write("            <span style=\"margin: 1%;\">\r\n");
      out.write("                <a href = \"create.jsp\">Update</a>\r\n");
      out.write("            </span>\r\n");
      out.write("            <span style=\"text-align:right;margin:1%;\">\r\n");
      out.write("                <form>\r\n");
      out.write("                    <input type = \"submit\" value = \"Logout\" name = \"btn\" class = \"Logout\"/>\r\n");
      out.write("                \r\n");
      out.write("                </form>\r\n");
      out.write("            </span>\r\n");
      out.write("            <div><center><h1 class=\"heading\">STUDENT MANAGEMENT SYSTEM</h1> </center></div>\r\n");
      out.write("                \r\n");
      out.write("            \r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("      <!-- <div><center><h1 class=\"heading\">STUDENT MANAGEMENT SYSTEM</h1> </center></div> -->\r\n");
      out.write("            <div class=\"user\">\r\n");
      out.write("            ");

                if(session.getAttribute("user")!=null)
                {
                    
                    String user = (String)session.getAttribute("user");
                    out.println(" WELCOME " + user);
                    
                   
                }
                else
                {
                    response.sendRedirect("index.jsp");
                }
            
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <br/><br/>\r\n");
      out.write("           \r\n");
      out.write("            ");

            if(request.getParameter("btn")!= null)
            {   
                request.getSession().invalidate();
                response.sendRedirect("index.jsp");
            }
            
      out.write("\r\n");
      out.write("           \r\n");
      out.write("            \r\n");
      out.write("            <table class = \"table\" border= \"3\" style = \"width: 75%;\"\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <th>Roll no</th>\r\n");
      out.write("                    <th>First Name</th>\r\n");
      out.write("                    <th>Last Name</th>\r\n");
      out.write("                    <th>Address</th>\r\n");
      out.write("                    <th>Phone number</th>\r\n");
      out.write("                    <th>Semester</th>\r\n");
      out.write("                    <th> First Subject</th>\r\n");
      out.write("                    <th> Marks</th>\r\n");
      out.write("                    <th> Second Subject</th>\r\n");
      out.write("                    <th> Marks</th>\r\n");
      out.write("                    <th> Third Subject</th>\r\n");
      out.write("                    <th> Marks</th>\r\n");
      out.write("                    <th> Average</th>\r\n");
      out.write("                     <th>Delete</th>\r\n");
      out.write("                     <th>Update</th>\r\n");
      out.write("\r\n");
      out.write("                </tr>\r\n");
      out.write("                ");

                    try
                    {
                        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                        String url = "jdbc:mysql://localhost:3306/kc_5jan23";
                        Connection con = DriverManager.getConnection(url,"root","abc456");
                        String sql = "select * from  student";
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery(sql);
                        while(rs.next())
                        {
                            int rno = rs.getInt(1);
                            String fname = rs.getString(2);
                            String lname = rs.getString(3);
                            String address = rs.getString(4);
                            String phn = rs.getString(5);
                            String sem = rs.getString(6);
                            String sub1 = rs.getString(7);
                            double m1 = rs.getDouble(8);
                             String sub2 = rs.getString(9);
                            double m2 = rs.getDouble(10);
                            String sub3 = rs.getString(11);
                             double m3 =rs.getDouble(12);
                             double average = rs.getDouble(13);
                            
                    
                
      out.write("\r\n");
      out.write("                        <tr style = \"text-align: center;\">\r\n");
      out.write("                        <td>");
      out.print( rno );
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print( fname );
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print( lname );
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print( address );
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print( phn );
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print( sem );
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print( sub1 );
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print( m1 );
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print( sub2 );
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print( m2 );
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print( sub3 );
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print( m3 );
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print( average);
      out.write("</td>\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                        <td> <a href=\"?r=");
      out.print(rno);
      out.write("\"  onclick=\"return confirm('Are you sure?')\">Delete</a></td>\r\n");
      out.write("                        <td><a href=\"update.jsp?rollno=");
      out.print(rs.getString("rollno"));
      out.write("\">update</a></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                ");

                        }
                    }
                    catch(SQLException err)
                    {
                        out.println("issue" +err);
                    }
                
      out.write("\r\n");
      out.write("                </table>\r\n");
      out.write("        \r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
