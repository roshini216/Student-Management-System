<html>
    <head>
        <style>
            *{font-size:50px; font-family:Cambria;}
            body{background-color:rgb(137, 177, 160);}
        </style>
        <title> Calculator App</title>
        <link rel = "icon" href = "calci.ico"/>
    </head>
    <body>
        <center>
            <h1>  Roshini 's Calculator</h1>
            <form>
                <input type = "number" step = "any" placeholder = "Enter first number" name="n1" required/>
                <br/><br/>
                <input type = "number" step = "any" placeholder = "Enter second number" name="n2" required/>
                <br/><br/>
                <input type = "submit" name = "btnadd" value = "Add"/>
                <input type = "submit" name = "btnsub" value = "Subtract"/>
                <input type = "submit" name = "btnmul" value = "Multiply"/>
            </form>
            <%
                if(request.getParameter("btnadd")!= null)
                {
                    double n1 = Double.parseDouble(request.getParameter("n1"));
                    double n2 = Double.parseDouble(request.getParameter("n2"));
                    double res = n1 + n2;
                    String msg = "Result of Addition = " + res;
                    out.println(msg);
                }
                else if(request.getParameter("btnsub")!= null)
                {
                    double n1 = Double.parseDouble(request.getParameter("n1"));
                    double n2 = Double.parseDouble(request.getParameter("n2"));
                    double res = n1 - n2;
                    String msg = "Result of Addition = " + res;
                    out.println(msg);
                }
                else if(request.getParameter("btnmul")!= null)
                {
                    double n1 = Double.parseDouble(request.getParameter("n1"));
                    double n2 = Double.parseDouble(request.getParameter("n2"));
                    double res = n1 * n2;
                    String msg = "Result of Addition = " + res;
                    out.println(msg);

                }
            %>
        </center>
    </body>
</html>