<html>
	<head>
		<title> Square Root Finder </title>
		<style>
			* {font-size : 40px; font-family:Calibri;}
			h1{border-style:solid; width:50%;border-radius:20px;}
			body{background-color:azure;}
		</style>
	</head>
	<body>
	<center>
		<h1> Square Root Finder </h1>
		<form>
		<input type = "number" step = "any" placeholder = "enter number"
		name = "num" required min = 0.0/>
		<br/><br/>
		<input type = "submit" value = "Find" name = "btn"/>
		</form>
		<%
			if(request.getParameter("btn")!=null)
			{
				String s = request.getParameter("num");
				double n = Double.parseDouble(s);
				double res = Math.sqrt(n);
				String msg = "square root of " + n + " = " + String.format("%.2f",res);
				out.println(msg);
			}
			%>
	</center>
	</body>
</html>
