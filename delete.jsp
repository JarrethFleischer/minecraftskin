<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
// Get the user ID from the request parameter
String id = request.getParameter("id");

try {
    Connection connection = null;
    Statement statement = null;

    // Load the JDBC driver
    Class.forName("com.mysql.jdbc.Driver");

    // Establish the database connection
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniprojectwdt", "root", "");
    statement = connection.createStatement();

    // Prepare and execute the delete query
    String deleteQuery = "DELETE FROM userinfo WHERE id = " + id;
    int rowsAffected = statement.executeUpdate(deleteQuery);

    // Check if any rows were affected
    if (rowsAffected > 0) {
        // Display success message
%>
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Delete User</title>
        </head>
        <body>
            <script>
                alert("User deleted successfully.");
                // Redirect to admin.jsp after successful deletion
                window.location.href = "admin.jsp";
            </script>
        </body>
        </html>
<%
    } else {
        // Display error message if no rows were affected
%>
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Delete User</title>
        </head>
        <body>
            <script>
                alert("Error deleting user. Please try again.");
                // Redirect to admin.jsp after unsuccessful deletion
                window.location.href = "admin.jsp";
            </script>
        </body>
        </html>
<%
    }
} catch (Exception e) {
    // Display error message if an exception occurs
    out.println(e);
}
%>
