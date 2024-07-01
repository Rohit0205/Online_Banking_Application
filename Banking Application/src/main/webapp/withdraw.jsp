<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Withdraw Form</title>
<style>
    body {
       background-image: url('sahydri.jpg'); /* Replace 'your-image-url.jpg' with the URL of your desired image */
    background-size: cover;
    color: #fff;
    font-family: Arial, sans-serif;
    }

    form {
        border: 2px solid orange;
        padding: 20px;
        width: 300px;
        height:350px;
        margin: 0 auto;
        border-radius: 10px;
        background-color: rgba(0, 0, 0, 0.5);
    }

    input[type="number"],
    input[type="text"] {
        background-color: #444;
        border: 1px solid #666;
        color: #fff;
        padding: 8px;
        margin-bottom: 10px;
        border-radius: 5px;
        width: 100%;
        box-sizing: border-box;
    }

    input[type="submit"],
    input[type="reset"] {
        background-color: orange;
        color: #222;
        border: none;
        padding: 10px 20px;
        
        cursor: pointer;
        border-radius: 5px;
        font-weight: bold;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover {
        background-color: #ff8c00;
        border: 1px solid #ff8c00;
    }

    h1 {
        margin-top: 50px;
        color:orange;
        text-align: center;
    }
</style>
</head>
<body>
<h1>Withdraw Form</h1>
<form action="withdraw" method="post">
    <label for="accno">Account Number:</label><br>
    <input type="number" id="accno" name="accno" required><br><br>

    <label for="uname">User Name:</label><br>
    <input type="text" id="uname" name="uname" required><br><br>

    <label for="pass">Password:</label><br>
    <input type="password" id="pass" name="pass" required><br><br>

    <label for="amount">Amount:</label><br>
    <input type="number" id="amount" name="amount" required><br><br>

    <input type="submit" value="Withdraw">
    <input type="reset" value="Clear">
</form>
</body>
</html>
