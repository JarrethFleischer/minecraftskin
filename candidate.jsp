<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MRCMS Application System</title>
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
                    width: 30%;
                    margin-left: 550px;
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
                    width: 90%;
                }

                td {
                    padding: 10px;
                }
    
        </style>
</head>

<body>
    <form action="candidateprocess.jsp" method="POST" onsubmit="return validation()" name="validation_form">
<center>
    <h1>MRCMS Application Form</h1>
    <table border="3">
        <tr>
        <td><label>Full Name</label></td>
        <td><input type="text" placeholder="Tony Wayne" name="name" required></td>
        </tr>
        <tr>
        <td><label>Address</label></td>
        <td><input type="text" name="address" required></td>
        </tr>
        <tr>
        <td><label>Identification Number</label></td>
        <td><input type="text" name="icnum" id="icnum" required></td>
        </tr>
        <tr>
        <td><label>Phone Number</label></td>
        <td><input type="text" placeholder="01122334455" name="phone" required></td>
        </tr>
        <tr>
        <td><label>Guardian Full Name</label></td>
        <td><input type="text" placeholder="Tony Wayne" name="guardianName" required></td>
        </tr>
        <tr>
        <td><label>Relation</label></td>
        <td><input type="text" name="relation" required></td>
        </tr>
        <tr>
        <td><label>Guardian Address</label></td>
        <td><input type="text" name="guardianAddress" required></td>
        </tr>
        <tr>
        <td><label>Guardian Phone Number</label></td>
        <td><input type="text" placeholder="01122334455" name="guardianPhone" required></td>
        </tr>
        
        
        </table><br><br>
        <table>
        <tr>
        <td colspan="2"><input type="submit" value="Submit" class="btn"></td>
        </tr>
        <tr>
        <td>
        <button class="btn" id="btnback"><a href="homepage.jsp">Back</a></button>
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

<script>
    function validation(){
        let ic_valid = document.forms["validation_form"]["icnum"].value;
                
        if (ic_valid.length !== 12){
            alert("Please enter a 12-digit identification number");
            return false;
        }
    }
</script>
</body>
</html>