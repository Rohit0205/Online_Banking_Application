<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Check Balance</title>
<style>
body {
    background-image: url('sahydri.jpg'); /* Replace 'your-image-url.jpg' with the URL of your desired image */
    background-size: cover;
    color: #fff;
    font-family: Arial, sans-serif;
}

.container {
    width: 300px;
    margin: 50px auto;
}

form {
    border: 2px solid orange;
    padding: 20px;
     background-color: rgba(0, 0, 0, 0.5);
}

h1 {
    text-align: center;
    color: orange;
    text-decoration: bold;
}

input[type="text"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin-bottom: 10px;
    background-color: #444;
    border: 1px solid #666;
    color: #fff;
}

input[type="submit"],
input[type="reset"] {
    padding: 10px 20px;
    background-color: orange;
    border: none;
    color: #fff;
    cursor: pointer;
    display: inline-flex;
}

input[type="submit"]:hover,
input[type="reset"]:hover {
    background-color: #ff7f00;
}

input[type="submit"]:focus,
input[type="reset"]:focus {
    outline: none;
}

</style>
</head>
<body>

<div class="container">
    <h1>Check Balance </h1>
    <form action="balance" method="post">
        Account number:<input type="text" name="accno"><br><br>
        UserName:<input type="text" name="uname"><br><br>
        Password:<input type="text" name="pass"><br><br>
        <input type="submit" value="Check Balance">
        <input type="reset" value="Clear">
    </form>
</div>

</body>
</html>
