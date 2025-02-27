/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.70
 * Generated at: 2023-01-25 08:59:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Student Management System</title>\r\n");
      out.write("\r\n");
      out.write("          <link rel = \"icon\" href = \"student.ico\"/>\r\n");
      out.write("          <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css'/>\r\n");
      out.write("          <link rel=\"stylesheet\" href=\"./style.css\"/>\r\n");
      out.write("         \r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
      out.write("        <!-- partial:index.partial.html -->\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("	        <div id=\"login-box\">\r\n");
      out.write("		        <div class=\"logo\">\r\n");
      out.write("		\r\n");
      out.write("			        <h1 class=\"logo-caption\"><center> Login</center></h1>\r\n");
      out.write("		</div><!-- /.logo -->\r\n");
      out.write("		<div class=\"controls\">\r\n");
      out.write("			<form method=\"POST\">\r\n");
      out.write("			<input type=\"text\" name=\"un\" placeholder=\"Username\" class=\"form-control\" />\r\n");
      out.write("			<input type=\"password\" name=\"pw\" placeholder=\"Password\" class=\"form-control\" />\r\n");
      out.write("            <br/>\r\n");
      out.write("			<input type=\"submit\" style=\"background-color:#ffffff;\" value = \"Login\"name=\"btn\" class =\"btn btn-default btn-block btn-custom\"/>\r\n");
      out.write("			</form>\r\n");
      out.write("            <div style =\"display:flex;\">\r\n");
      out.write("	        <div style =\"width:50%;\">  <a href = \"./signup.jsp\" >New User</a></div>\r\n");
      out.write("              <div style =\"width:50%; text-align: right;font-family: Verdana, Geneva, Tahoma, sans-serif;\">\r\n");
      out.write("              ");

            if(request.getParameter("btn")!=null)
            {
                String un = request.getParameter("un");
                String pw = request.getParameter("pw");
                try
                {
                    DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                    String url = "jdbc:mysql://localhost:3306/auth_5jan23";
                    Connection con = DriverManager.getConnection(url,"root","abc456");
                    String sql = "select * from  users where username = ? and password = ?";
                    PreparedStatement pst = con.prepareStatement(sql);
                    pst.setString(1,un);
                    pst.setString(2,pw);
                    ResultSet rs = pst.executeQuery();
                    if(rs.next())
                    {
                        request.getSession().setAttribute("user",un);
                        response.sendRedirect("home.jsp");
                    }
                    else
                    { 
      out.write("\r\n");
      out.write("                       <p>Invalid login</p>\r\n");
      out.write("                ");
  }

                }
               
                catch(SQLException err)
                {
                    out.println("issue" +err);
                }
            }
        
      out.write("\r\n");
      out.write("              </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("		</div>\r\n");
      out.write("	    </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    <div id=\"particles-js\"></div>\r\n");
      out.write("    <!-- partial -->\r\n");
      out.write("    <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css'></script>\r\n");
      out.write("<script src='https://code.jquery.com/jquery-1.11.1.min.js'></script><script  src=\"./script.js\"></script>\r\n");
      out.write("       \r\n");
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
