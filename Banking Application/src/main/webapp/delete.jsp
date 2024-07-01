<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Close Your Account</title>
    <style>
        body {
            background-image: url('sahydri.jpg '); /* Replace 'your-image-url.jpg' with the URL of your desired image */
            background-size: cover;
            color: #fff;
            font-family: Arial, sans-serif;
        }
        h2 {
            text-align: center;
            color:orange;
        }
        form {
            width: 300px;
            margin: 0 auto;
           background-color: rgba(0, 0, 0, 0.5);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
            border: 2px solid orange;
        }
        input[type="text"], input[type="number"], input[type="password"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #555;
            border-radius: 5px;
            background-color: #444;
            color: #fff;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            background-color: #555;
            color: #fff;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #777;
        }
    </style>
</head>
<body>
    <h2>Close Your Account</h2>
    <form action="delete" method="post">
        <label for="uname">UserName:</label>
        <input type="text" id="uname" name="uname" required><br><br>
        <label for="accno">Account Number:</label>
        <input type="number" id="accno" name="accno" required><br><br>
        <label for="pass">Password:</label>
        <input type="password" id="pass" name="pass" required><br><br>
        <input type="submit" value="Delete Account">
    </form>
</body>
</html>
