<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>S
<%
//read all input insert by the user
String id = request.getParameter("id");
String updateStatus = request.getParameter("status");
try{
PreparedStatement ps = null;
Connection connection = null;
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniprojectwdt","root","");
String sql="UPDATE userinfo set status=? WHERE id="+id;
ps = connection.prepareStatement(sql);
ps.setString(1,updateStatus);
int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("updateSuccess.jsp");
}}
catch(Exception e){
out.println(e);
}
%>