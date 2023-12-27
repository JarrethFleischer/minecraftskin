<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logging Out</title>
        <script type="text/javascript">
                function alertName(){
                    alert("Logout Success");
                    
                }
        </script>
    </head>
    <body>
        <%
            session.invalidate();
            //display alert message
            response.sendRedirect("index.jsp");
        %>
        
        <script type="text/javascript"> 
            alertName();
            window.location.href="index.jsp";
        </script>
       
        
    </body>
</html>
