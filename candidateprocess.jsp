<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>S
<%
//read all input insert by the user
String name = request.getParameter("name");
String address = request.getParameter("address");
String icnum = request.getParameter("icnum");
String phone = request.getParameter("phone");
String guardianName = request.getParameter("guardianName");
String relation = request.getParameter("relation");
String guardianAddress = request.getParameter("guardianAddress");
String guardianPhone = request.getParameter("guardianPhone");

//insert query to insert data to the database
//做新的database
String InsertQuery ="INSERT INTO userinfo(name,address,icnum,phone,guardianName,relation,guardianAddress,guardianPhone) VALUES "
        + "('"+name+"','"+address+"','"+icnum+"','"+phone+"','"+guardianName+"','"+relation+"','"+guardianAddress+"','"+guardianPhone+"')";
try{
Connection connection = null;
Statement statement= null;
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniprojectwdt","root","");
statement = connection.createStatement();
statement.executeUpdate(InsertQuery);
// display success message
response.sendRedirect("reg_success.jsp");
}
catch (Exception e)
{
out.println(e);
}
%>