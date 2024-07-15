<%@  page import = "java.util.regex.*" %>

<html>
	<head>
		<style> * {font-size : 60px; } </style>
	</head>
	<body>
		<center>
			<h1> 	Welcome App </h1>
		<form>
			<input placeholder = "enter ur name " name = "na"/>
			<br/><br/>
			<input type = "submit" name = "btn"/>
		</form>
		<%
			if(request.getParameter("btn")!=null)
			{
				String name = request.getParameter("na");
				if(name.trim().length()==0)
				{
					out.println("invalid name");
					return;

				}
				String regex = "^[A-Za-z ]+$";
				Pattern p = Pattern.compile(regex);
				Matcher m = p.matcher(name);
				if(! m .matches())
				{
					out.println("name shud contain only letters ");
					return;
		
				}
				String msg = " Welcome " + name;
				out.println(msg);

			}	

		%>
		</center>
	</body>

</html>