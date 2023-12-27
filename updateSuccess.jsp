<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            function alertsuccess(){
                alert("Candidate data has been updated successfully");
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
    </head>
    <body>
        <jsp:include page = "admin.jsp"></jsp:include> 
        <script type="text/javascript">
            window.onload = alertsuccess;
        </script>  
    </body>
</html>
