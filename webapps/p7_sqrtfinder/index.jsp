<html>
	<head>
		<title>Square Root Finder</title>
		<style>
			*{font-size: 60px; font-family:Calibri;}
			h1{border-style: solid;width:50%;border-radius: 20px;}
			body{background-color: azure;}
		</style>
		<script>
			function check()
			{
				let num = document.getElementById("num");
				let ans = document.getElementById("ans");
				if(num.value=="")
				{
					alert("number is empty");
					num.focus();
					ans.innerHTML = "";
					return false;
				}
				let n = parseFloat(num.value);
				if(n<0.0)
				{
					alert("negative number not allowed");
					num.value="";
					num.focus();
					ans.innerHTML = "";
					return false;
				}
				return true;
			}
		</script>
	</head>
	<body>
		<center>
			<h1> Square Root Finder</h1>
			<form onsubmit="return check()">
			<input type = "number" step = "any" placeholder = "enter number"
			name = "num" id = "num"/>
			<br/><br/>
			<input type = "submit" value = "Find" name = "btn"/>
			</form>
			<%
				if(request.getParameter("btn")!= null)
				{
					String s = request.getParameter("num");
					double n = Double.parseDouble(s);
					double res = Math.sqrt(n);
					String msg = " Square root of " + n + " = " + String.format("%.2f",res);
				

			%>
				<h2 id = "ans"><%out.println(msg);%></h2>
			<%
				}
			%>
		</center>
	</body>
</html>