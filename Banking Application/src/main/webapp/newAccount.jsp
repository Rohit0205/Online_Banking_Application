<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Account</title>
<style>
body {
    background-image: url('sahydri.jpg'); /* Replace 'your-image-url.jpg' with the URL of your desired image */
    background-size: cover;
    color: #fff;
    font-family: Arial, sans-serif;
    
}

.container {
    width: 400px;
    margin: 50px auto;
     
}

form {
    border: 2px solid orange;
    padding: 20px;
   background-color: rgba(0, 0, 0, 0.5);
}

h3 {
    text-align: center;
}

input[type="text"],
input[type="password"] {
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
<script>
function validateForm() {
    var pass = document.forms["withdrawForm"]["pass"].value;
    var repass = document.forms["withdrawForm"]["repass"].value;
    if (pass !== repass) {
        alert("Passwords do not match");
        return false;
    }
}
</script>
</head>
<body>

<div class="container">
    <h2 style="color: orange; text-align: center;" >New Account</h2>
    <form name="withdrawForm" action="newacc" method="post" onsubmit="return validateForm()">
        USERNAME:<input type="text" name="cname"><br><br>
        PASSWORD:<input type="password" name="pass"><br><br>
        RE-PASSWORD:<input type="password" name="repass"><br><br>
        AMOUNT:<input type="text" name="amount"><br><br>
        ADDRESS:<input type="text" name="address"><br><br>
        PHONE:<input type="text" name="phone"><br><br>
        <input type="submit" value="SUBMIT"> &nbsp; &nbsp;
        <input type="reset" value="CLEAR">
    </form>
</div>

</body>
</html>
