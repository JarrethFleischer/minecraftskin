<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Page</title>
    </head>
    <body>
        <h1>You have successfully Logged In</h1>
        <%= request.getRemoteUser() %><%--RETURN NULL--%>
        <%
            if(request.isUserInRole("administrator"))
            {
            response.sendRedirect("admin.jsp");
        }
        %>
    </body>
</html>
