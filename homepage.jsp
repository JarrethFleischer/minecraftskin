<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MRCMS Home Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        center {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            text-align: center;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .btn {
            width: 100%;
            padding: 10px;
            text-align: center;
            background-color: #4caf50;
            color: #fff;
            text-decoration: none;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-bottom: 10px;
        }

        .btn:hover {
            background-color: #45a049;
        }
        
        .btn1 {
            width: 100%;
            padding: 10px;
            text-align: center;
            background-color: #808080;
            color: #fff;
            text-decoration: none;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-bottom: 10px;
        }

        .btn1:hover {
            background-color: #45a049;
        }
        
        
    </style>
</head>
<body>
    <center>
        <form method="POST" action="checkstatusprocess.jsp">
            <h1>MRCMS User Application System</h1>
            <table>
                <tr>
                    <td>
                        <label for="name">Full Name</label>
                        <input type="text" id="name" placeholder="Enter Full Name" name="name" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="icnum">Identification Number</label>
                        <input type="text" id="icnum" placeholder="Enter Identification Number" name="icnum" required>
                    </td>
                </tr>
            </table>
            <div class="btn-container">
                <button class="btn" type="submit">Check Application Status</button>
            </div>
            <div>
                
                <p><a href="index.jsp"  text-decoration: none;">Admin Login</a><br>
                    <a href="candidate.jsp"  text-decoration: none;">Apply as a New Member of MRCMS</a></p>
                
            </div>
            
        </form>
    </center>
</body>
</html>
