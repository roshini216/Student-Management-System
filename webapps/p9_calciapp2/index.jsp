<html>
    <head>
        <style>
            *{font-size:50px; font-family:Cambria;}
            body{background-color:rgb(197, 85, 102);}
        </style>
        <title> Calculator App </title>
        <link rel = "icon" href = "cal.ico"/>
    </head>
    <body>
        <center>
            <h1> Calculator</h1>
            <form>
                <input type = "number" step = "any" placeholder = "Enter first number" name="n1" required/>
                <br/><br/>
                <input type = "number" step = "any" placeholder = "Enter second number" name="n2" required/>
                <br/><br/>
                <input type="radio"  name="op" value="Add" checked="true"/>ADD
                <input type="radio"  name="op" value="Subtract"/>SUBTRACT
                <input type="radio"  name="op" value="Multiply"/>MULTIPLY
                
                <br/><br/>
                <input type = "submit" name = "btn" value = "FIND"/>
            </form>
            <%
                if(request.getParameter("btn")!= null)
                {
                    double n1 = Double.parseDouble(request.getParameter("n1"));
                    double n2 = Double.parseDouble(request.getParameter("n2"));
                    String op = request.getParameter("op");
                    if(op.equals("Add"))
                    {
                        double res = n1 + n2;
                        String msg = "Result of Addition = " + String.format("%.2f",res);
                         out.println(msg);
                    }
                    
                
                else if(op.equals("Subtract"))
                {
                    double res = n1 - n2;
                    String msg = "Result of Subtraction = " + String.format("%.2f",res);
                    out.println(msg);
                }
                else if(op.equals("Multiply"))
                {
                    double res = n1 * n2;
                    String msg = "Result of Multiplication =  " + String.format("%.2f",res);
                    out.println(msg);

                }
            }
            %>
        </center>
    </body>
</html>