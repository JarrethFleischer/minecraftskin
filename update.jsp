<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
try {
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    String id = request.getParameter("id");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniprojectwdt", "root", "");
    statement = connection.createStatement();
    String updatequery = "SELECT * FROM userinfo WHERE id=" + id;
    resultSet = statement.executeQuery(updatequery);
    while (resultSet.next()) {
%>
        <!DOCTYPE html>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>MRCMS Candidate Application</title>
            <style>
                body {
                    font-family: 'Arial', sans-serif;
                    background-color: #f4f4f4;
                }

                form {
                    background-color: #fff;
                    padding: 20px;
                    border-radius: 8px;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    margin-top: 20px;
                    width: 80%;
                    margin-left: 150px;
                }

                h1 {
                    text-align: center;
                    color: #333;
                }

                label {
                    display: block;
                    margin-bottom: 5px;
                }

                input[type="text"],
                input[type="password"],
                input[type="radio"] {
                    width: 100%;
                    padding: 8px;
                    margin-bottom: 10px;
                    box-sizing: border-box;
                    border: 1px solid #ccc;
                    border-radius: 4px;
                }

                input[readonly] {
                    background-color: #eee;
                }

                .btn {
                    display: inline-block;
                    padding: 10px;
                    background-color: #4CAF50;
                    color: white;
                    border: none;
                    border-radius: 4px;
                    cursor: pointer;
                    text-align: center;
                    text-decoration: none;
                }

                .btn:hover {
                    background-color: #45a049;
                }

                #btnback {
                    background-color: #808080;
                }

                #btnback a {
                    color: white;
                    text-decoration: none;
                }

                table {
                    width: 100%;
                }

                td {
                    padding: 10px;
                }
            </style>
        </head>

        <body>
            <form action="updateprocess.jsp" method="POST">
                <input type="hidden" name="id" value="<%=resultSet.getString("id")%>">
                <center>
                    <h1>MRCMS Application Update Form</h1>
                    <table>
                        <tr>
                            <td><label>User Full Name</label></td>
                            <td><input type="text" name="name" value="<%=resultSet.getString("name")%>" readonly=""></td>
                        </tr>
                        <tr>
                            <td><label>User Address</label></td>
                            <td><input type="text" name="address" value="<%=resultSet.getString("address")%>" readonly=""></td>
                        </tr>
                        <!-- Add other fields similarly -->

                        <tr>
                            <td><label>Candidate Application Status</label></td>
                            <td><input type="text" value="<%=resultSet.getString("department")%>" readonly></td>
                        </tr>
                        <tr>
                            <td>MRCMS Application Status</td>
                            <td>
                                <input type="radio" name="status" value="Approved" required>Approve
                                <input type="radio" name="status" value="Decline" required>Decline
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="submit" value="Submit" class="btn"></td>
                        </tr>
                        <tr>
                            <td>
                                <button class="btn" id="btnback"><a href="admin.jsp">Back</a></button>
                            </td>
                        </tr>
                    </table>
                </center>
            </form>
            <script>
                document.getElementById('btnback').addEventListener('click', function () {
                    var requiredFields = document.querySelectorAll('[required]');
                    for (var i = 0; i < requiredFields.length; i++) {
                        requiredFields[i].removeAttribute('required');
                    }
                });
            </script>
        </body>

        </html>
<%
    }
} catch (Exception e) {
    out.println(e);
}
%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
try{
Connection connection = null;
Statement statement= null;
ResultSet resultSet = null;
String id = request.getParameter("id");
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniprojectwdt","root","");
statement = connection.createStatement();
String updatequery = "SELECT * FROM userinfo WHERE id="+id;
resultSet = statement.executeQuery(updatequery);
while(resultSet.next()){
%>
<!-- DISPLAY DATA IN HTML FORMAT TO THE USER -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MRCMS Candidate Application</title>
<style>
    body {
                    font-family: 'Arial', sans-serif;
                    background-color: #f4f4f4;
                }

                form {
                    background-color: #fff;
                    padding: 20px;
                    border-radius: 8px;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    margin-top: 20px;
                    width: 80%;
                    margin-left: 150px;
                }

                h1 {
                    text-align: center;
                    color: #333;
                }

                label {
                    display: block;
                    margin-bottom: 5px;
                }

                input[type="text"],
                input[type="password"],
                input[type="radio"] {
                    width: 100%;
                    padding: 8px;
                    margin-bottom: 10px;
                    box-sizing: border-box;
                    border: 1px solid #ccc;
                    border-radius: 4px;
                }

                input[readonly] {
                    background-color: #eee;
                }

                .btn {
                    display: inline-block;
                    padding: 10px;
                    background-color: #4CAF50;
                    color: white;
                    border: none;
                    border-radius: 4px;
                    cursor: pointer;
                    text-align: center;
                    text-decoration: none;
                }

                .btn:hover {
                    background-color: #45a049;
                }

                #btnback {
                    background-color: #808080;
                }

                #btnback a {
                    color: white;
                    text-decoration: none;
                }

                table {
                    width: 100%;
                }

                td {
                    padding: 10px;
                }
        </style>
</head>

<body>
<form action="updateprocess.jsp" method="POST">
    <input type="hidden" name="id" value="<%=resultSet.getString("id")%>">
<center>
<h1>MRCMS Application Update Form</h1>
<table>
<tr>
<td><label>User Full Name</label></td>
<td><input type="text" name="name" value="<%=resultSet.getString("name")%>" readonly=""></td>
</tr>
<tr>
<td><label>User Address</label></td>
<td><input type="text" name="type" value="<%=resultSet.getString("address")%>" readonly=""></td>
</tr>
<tr>
<td><label>User Identification Number </label></td>
<td><input type="text" placeholder="Silver" name="color" value="<%=resultSet.getString("icnum")%>" readonly=""></td>
</tr>
<tr>
<td><label>User Phone Number</label></td>
<td><input type="text" placeholder="4Y1SL65848Z411439" name="registration" value="<%=resultSet.getString("phone")%>" readonly=""></td>
</tr>
<tr>
<td><label>User Guardian Full Name</label></td>
<td><input type="text" name="name" value="<%=resultSet.getString("guardianName")%>" readonly=""></td>
</tr>
<tr>
<td><label>Relation </label></td>
<td><input type="text" name="type" value="<%=resultSet.getString("relation")%>" readonly=""></td>
</tr>
<tr>
<td><label>User Guardian Address </label></td>
<td><input type="text" placeholder="Silver" name="color" value="<%=resultSet.getString("guardianAddress")%>" readonly=""></td>
</tr>
<tr>
<td><label>User Guardian Phone Number</label></td>
<td><input type="text" placeholder="4Y1SL65848Z411439" name="registration" value="<%=resultSet.getString("guardianPhone")%>" readonly=""></td>
</tr>
<tr>
<td><label>MRCMS User Application Status</label></td>
<td>
<input type="radio" name="status" value="Approved" required>Approve
<input type="radio" name="status" value="Decline" required>Decline
</td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="Submit" class="btn"></td>
</tr>
<tr>
<td>
<button class="btn" id="btnback"><a href="admin.jsp">Back</a></button>
</td>
</tr>
</table>
</center>
</form>
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
<%
}
}
catch(Exception e){

out.println(e);
}
%>
}