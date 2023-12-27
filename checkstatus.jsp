<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View MRCMS User Application Status</title>
<style>
      body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
        }

        center {
            margin-top: 20px;
        }

        h1 {
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        .btn {
            display: inline-block;
            padding: 8px 16px;
            margin: 5px;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #45a049;
        }
        </style>
</head>

<body><center>
<h1>MRCMS User Application Information</h1>
<table border="2">
<tr>
<td>Your Name </td>
<td>Your Address </td>
<td>Your Identification Number </td>
<td>Your Phone Number </td>
<td>Guardian Full Name</td>
<td>Relation </td>
<td>Guardian Address  </td>
<td>Guardian Phone Number</td>
<td>Your Application Status</td>
</tr>
<%
String id = request.getParameter("id");
try{
Connection connection = null;
Statement statement= null;
ResultSet resultSet = null;
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniprojectwdt","root","");
statement = connection.createStatement();
String displayquery = "SELECT * FROM userinfo WHERE id="+id;
resultSet = statement.executeQuery(displayquery);
while(resultSet.next()){
//display data by looping method
%>
<tr>
<td><%=resultSet.getString("name")%></td>
<td><%=resultSet.getString("address")%></td>
<td><%=resultSet.getString("icnum")%></td>
<td><%=resultSet.getString("phone")%></td>
<td><%=resultSet.getString("guardianName")%></td>
<td><%=resultSet.getString("relation")%></td>
<td><%=resultSet.getString("guardianAddress")%></td>
<td><%=resultSet.getString("guardianPhone")%></td>
<td><%=resultSet.getString("status")%></td>
</tr>
<%
}
}
catch(Exception e){
//display alert error
out.println(e);
}
%>
</table>
<button class="btn" id="btnback"><a href="homepage.jsp">Back</a></button>
</center>
<script>
// JavaScript to remove the "required" attribute when the "Back" button is clicked
document.getElementById('btnback').addEventListener('click', function() {
var requiredFields = document.querySelectorAll('[required]');
for (var i = 0; i < requiredFields.length; i++) {
requiredFields[i].removeAttribute('required');
}
});
</script>
</body>
</html>