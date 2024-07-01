<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Deposit Form</title>
<style>
    body {
         background-image: url('sahydri.jpg'); /* Replace 'your-image-url.jpg' with the URL of your desired image */
    background-size: cover;
    color: #fff;
    font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        width: 100vw;
        margin: 0;
    }
    h2{
        color:orange;
        text-align: center;
    }
    .form-container {
        width: 350px; /* Set width to 350px */
        height: 390px; /* Set height to 350px */
         background-color: rgba(0, 0, 0, 0.5);
        color:white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border: 2px solid orange; /* Added border style */
    }
    .form-container table {
        width: 100%;
    }
    .form-container table td {
        padding: 10px;
    }
    .form-container table td label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }
    .form-container table td input[type="text"] {
        width: calc(100% - 22px);
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .form-container table td input[type="submit"],
    .form-container table td input[type="reset"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 4px;
        color: #fff;
        cursor: pointer;
    }
    .form-container table td input[type="submit"] {
        background-color: #4CAF50;
    }
    .form-container table td input[type="reset"] {
        background-color: #f44336;
    }
</style>
</head>
<body>
<center>
<h2><u>Deposit Amount</u></h2>
<div class="form-container">
 
    <form action="deposit" method="post">
   
        <table>
            <tr>
                <td><label for="uname">UserName:</label></td>
                <td><input type="text" id="uname" name="uname"></td>
            </tr>
            <tr>
                <td><label for="accnumber">Account Number:</label></td>
                <td><input type="text" id="accnumber" name="accnumber"></td>
            </tr>
            <tr>
                <td><label for="pass">Password:</label></td>
                <td><input type="text" id="pass" name="pass"></td>
            </tr>
            <tr>
                <td><label for="deposit">Deposit Amount:</label></td>
                <td><input type="text" id="deposit" name="deposit"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Deposit">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="reset" value="Clear">
                </td>
            </tr>
        </table>
    </form>
</div>
</center>
</body>
</html>
