<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Transfer Money</title>
<style>
  body {
     background-image: url('sahydri.jpg'); /* Replace 'your-image-url.jpg' with the URL of your desired image */
    background-size: cover;
    color: #fff;
    font-family: Arial, sans-serif;
  }
  h2 {
    text-align: center;
    color:orange;
  }
  form {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: rgba(0, 0, 0, 0.5);
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    border:1px solid orange;
  }
  input[type="number"],
  input[type="text"],
  input[type="submit"],
  input[type="reset"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin-bottom: 10px;
    border: none;
    border-radius: 5px;
    background-color: #444;
    color: #fff;
    font-size: 16px;
  }
  input[type="submit"],
  input[type="reset"] {
    cursor: pointer;
    background-color: #007bff;
    transition: background-color 0.3s ease;
  }
  input[type="submit"]:hover,
  input[type="reset"]:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
<h2>Transfer Money</h2>
<form action="transfer" method="post">
  <label for="accno">Account Number:</label><br>
  <input type="number" id="accno" name="accno" required><br><br>
  <label for="uname">UserName:</label><br>
  <input type="text" id="uname" name="uname" required><br><br>
  <label for="pass">Password:</label><br>
  <input type="text" id="pass" name="pass" required><br><br>
  <label for="taccno">Target Account:</label><br>
  <input type="number" id="taccno" name="taccno" required><br><br>
  <label for="amount">Amount:</label><br>
  <input type="number" id="amount" name="amount" required> <br><br>
  <input type="submit" value="Transfer">
  <input type="reset" value="Clear">
</form>
</body>
</html>
