<html>
	<head>
		<title> Even Odd App 2 </title>
		<style> * {font-size : 60px;} </style>
		<script>
			function check()
			{
				let num = document.getElementById("num");
				let ans = document.getElementById("ans");
				if(num.value == "")
				{
					alert("empty number not allowed");
					num.focus();
					ans.innerHTML="";
					return false;
				}
				return true;

			}
		</script>
	</head>
	<body>
	<center>
		<h1> Even Odd Checker </h1>
		<form onsubmit = "return check()">
		<input type = "number" placeholder = "enter an integer " name = "num" id = "num"/>
		<br></br>
		<input type = "submit" value = "Find" name = "btn"/>
		</form>
		<%
			if(request.getParameter("btn")!= null)
			{
				String s = request.getParameter("num");
				int num = Integer.parseInt(s);
				String res = num % 2 == 0 ? "even" : "odd";
				String msg = " num " + num + " is " + res;
				
				
			
		%>
			<h1 id ="ans"><%out.println(msg);%></h1>
		<%
			}
		%>
	</center>
	</body>
</html>