<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            display: block;
            width: 100%;
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
    </style>
</head>
<body>
    <form method="POST" action="j_security_check">
        <h1>Admin Login Page</h1>
        <table>
            <tr>
                <td>
                    <label>Username</label>
                    <input type="text" placeholder="Enter Username" name="j_username" required>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Password</label>
                    <input type="password" placeholder="Enter Password" name="j_password" required>
                </td>
            </tr>
            <tr>
                <td>
                    <input class="btn" type="submit" value="Login">
                </td>
            </tr>
            <tr>
                <td>
                    <button class="btn" id="btnback"><a href="homepage.jsp">Back</a></button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
