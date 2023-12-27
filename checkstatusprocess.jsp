<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>S
<%
//read all input insert by the user
String id = request.getParameter("id");
String name = request.getParameter("name");
String icnum = request.getParameter("icnum");
//insert query to insert data to the database
String selectQuery = "SELECT * FROM userinfo WHERE name = ? AND icnum = ?";
Connection connection = null;
PreparedStatement preparedStatement = null;
try{
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniprojectwdt", "root", "");
preparedStatement = connection.prepareStatement(selectQuery);
preparedStatement.setString(1, name);
preparedStatement.setString(2, icnum);
ResultSet resultSet = preparedStatement.executeQuery();
// display success message
// response.sendRedirect("adduser.jsp");
if (resultSet.next()) {
// The name and password are correct, redirect to the desired page.
String userId = resultSet.getString("id"); // Get the id from the result set
String redirectURL = "checkstatus.jsp?id=" + userId;
response.sendRedirect(redirectURL);
} else {
// The name and password are not found in the database, you can handle this case accordingly.
out.println("Name or Registration Number is incorrect.");
}
}
catch (Exception e) {
out.println(e);
} finally {
try {
if (preparedStatement != null) {
preparedStatement.close();
}
if (connection != null) {
connection.close();
}
} catch (SQLException e) {
e.printStackTrace();
}
}
%>