<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin View Page</title>
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
        
        .btn_del {
            display: inline-block;
            padding: 8px 16px;
            margin: 5px;
            text-decoration: none;
            background-color: #FF0000;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn_del:hover {
            background-color: #8B0000;
        }
    </style>
</head>
<body>
    <center>
        <h1>All User Personal Information</h1>
        <table>
            <tr>
                <th>User Full Name</th>
                <th>User Address</th>
                <th>User Identification Number</th>
                <th>User Phone Number</th>
                <th>Guardian Full Name</th>
                <th>Guardian Relation</th>
                <th>Guardian Address</th>
                <th>Guardian Phone Number</th>
                <th>Admin Function</th>
            </tr>
            <%
            try{
                Connection connection = null;
                Statement statement= null;
                ResultSet resultSet = null;
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniprojectwdt","root","");
                statement = connection.createStatement();
                String displayquery = "SELECT * FROM userinfo";
                resultSet = statement.executeQuery(displayquery);
                while(resultSet.next()){
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
                <td>
                    <a href="delete.jsp?id=<%=resultSet.getString("id")%>" class="btn_del" onclick="return confirm('Are you sure? This process cannot be undone')">Delete</a>
                    <a href="update.jsp?id=<%=resultSet.getString("id")%>" class="btn" onclick="return confirm('Are you sure? You will be redirected to the update page')">Update</a>
                </td>
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
        <a href="logout.jsp" class="btn">Back</a>
    </center>
</body>
</html>
