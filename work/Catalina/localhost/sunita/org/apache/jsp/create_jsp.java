/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.70
 * Generated at: 2023-01-24 15:34:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class create_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title> Student Management System</title>\r\n");
      out.write("        <style>\r\n");
      out.write("            *{font-size: 20px;}\r\n");
      out.write("            /* body{background-color:rgb(90, 235, 240);}\r\n");
      out.write("            .nav{background-color:black;}\r\n");
      out.write("            .nav a {color:white;text-decoration:none;margin:5%;} */\r\n");
      out.write("            .heading{\r\n");
      out.write("                font-family:'M PLUS Rounded 1c', sans-serif ;\r\n");
      out.write("                font-size: 30px;\r\n");
      out.write("                color: aqua;\r\n");
      out.write("                text-shadow: 6px 6px black;\r\n");
      out.write("                padding-bottom:0%;\r\n");
      out.write("                \r\n");
      out.write("                left:15px;\r\n");
      out.write("            }\r\n");
      out.write("           \r\n");
      out.write("            body{background-image:url(homeimg.jpeg);\r\n");
      out.write("                background-position: center;\r\n");
      out.write("                background-repeat: no-repeat; \r\n");
      out.write("                 background-size: cover; \r\n");
      out.write("                }\r\n");
      out.write("               .nav{width: 100%;display:flex;}\r\n");
      out.write("               .nav a {color:white;text-decoration:none;margin:1%;}\r\n");
      out.write("               .form\r\n");
      out.write("               {\r\n");
      out.write("                /* font-size: 30px; */\r\n");
      out.write("               }\r\n");
      out.write("\r\n");
      out.write("        </style>\r\n");
      out.write(" 	<link rel = \"icon\" href = \"student.ico\"/>\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <center>\r\n");
      out.write("            <div class = \"nav\">\r\n");
      out.write("                <span style=\"margin:1%;\">\r\n");
      out.write("                <a href = \"home.jsp\">Home</a>\r\n");
      out.write("                </span>\r\n");
      out.write("                <span style=\"margin: 1%;\">\r\n");
      out.write("                <a href = \"create.jsp\">Create</a>\r\n");
      out.write("                </span>\r\n");
      out.write("                <span style=\"margin: 1%;\">\r\n");
      out.write("                    <a href = \"create.jsp\">Update</a>\r\n");
      out.write("                </span>\r\n");
      out.write("                <span style=\"text-align:right;margin:1%;\">\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("            <h1 class=\"heading\"> Create Page</h1>\r\n");
      out.write("            <form class=\"form\">\r\n");
      out.write("                <input type = \"number\" name = \"rollno\" placeholder=\"enter roll no\"/>\r\n");
      out.write("                <br/><br/>\r\n");
      out.write("                <input type = \"text\" name = \"firstname\" placeholder=\"enter First name\"/>\r\n");
      out.write("                <br/><br/>\r\n");
      out.write(" 		        <input type = \"text\" name = \"lastname\" placeholder=\"enter Last name\"/>\r\n");
      out.write("                <br/><br/>\r\n");
      out.write("		        <input type = \"text\" name = \"address\" placeholder=\"enter address\"/>\r\n");
      out.write("                <br/><br/>\r\n");
      out.write("               <input type = \"number\" name = \"phoneno\" placeholder=\"enter phone no\"/>\r\n");
      out.write("                <br/><br/>\r\n");
      out.write("		        <input type = \"text\" name = \"semester\" placeholder=\"enter semester\"/>\r\n");
      out.write("                <br/><br/>\r\n");
      out.write("		        <input type = \"text\" name = \"subject1\" placeholder=\"enter first subject\"/>\r\n");
      out.write("                <br/><br/>\r\n");
      out.write("		        <input type = \"number\" name = \"marks1\" placeholder=\"enter marks\"/>\r\n");
      out.write("                <br/><br/>\r\n");
      out.write("		        <input type = \"text\" name = \"subject2\" placeholder=\"enter second subject\"/>\r\n");
      out.write("                <br/><br/>\r\n");
      out.write("		        <input type = \"number\" name = \"marks2\" placeholder=\"enter marks\"/>\r\n");
      out.write("                <br/><br/>\r\n");
      out.write("		        <input type = \"text\" name = \"subject3\" placeholder=\"enter third subject\"/>\r\n");
      out.write("                <br/><br/>\r\n");
      out.write("		        <input type = \"number\" name = \"marks3\" placeholder=\"enter marks\"/>\r\n");
      out.write("                <br/><br/>\r\n");
      out.write("		        <input type = \"number\" name = \"avg\" placeholder=\"Average\"/>\r\n");
      out.write("                <br/><br/>\r\n");
      out.write("			\r\n");
      out.write("		        <input type = \"submit\" value=\"Save\" name = \"btn\"/>\r\n");
      out.write("            </form>\r\n");
      out.write("        ");

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
			out.println();
			out.print("Average marks = ");
			out.println((m1+m2+m3)/3.0);
               
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
                out.println("Record  is created");
            }
            catch(SQLException err)
            {
                out.println("issue" +err);
            }
        }
    
      out.write("\r\n");
      out.write("    \r\n");
      out.write("        </center>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
