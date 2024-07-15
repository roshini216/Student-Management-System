<%@ page import = "java.time.*" %>

<html>
	<head>
		<title>P2 Welcome App </title>
	<style>
		*{ font-size:100px; font-family : Cambria;}
		body{ background-color : lightblue;}
	</style>
	</head>
	<body>
		<center>
			<%

				LocalTime t = LocalTime.now();
				int hr = t.getHour();
				String msg = "";
				if(hr<12)			msg = "Good Morning";
				else if(hr<16)		msg = "Good Afternoon";
				else				msg = "Good Evening";

				out.println(msg);
			%>

		</center>

	</body>
</html