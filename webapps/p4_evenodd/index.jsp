<html>
	<head>
		<title> Even Odd App 1 </title>
		<style> * {font-size : 60px;}</style>

	</head>
	<body>
	<center>
		<h1> Even Odd Checker </h1>
		<form>
		<input type = "number" placeholder = "enter an integer " name = "num" required/>
		<br/><br/> 
		<input type = "submit" value = "Find" name = "btn"/>
		</form>
		<%
			if(request.getParameter("btn")!= null)
			{
				String s = request.getParameter("num");
				int num = Integer.parseInt(s);
				String res = num % 2 == 0 ? "even" : "odd";
				String msg = " num " + num + " is " + res;
				out.println(msg);
			}
		%>
	</center>
	</body>
</html>