<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Of Sahyadri</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('sahydri.jpg') no-repeat center center fixed;
        background-size: cover;
        color: white;
        margin: 0;
        padding: 0;
    }
    .container {
        background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background to improve text readability */
        max-width: 1220px;
        margin: 0 auto;
        padding: 40px;
    }
    .header {
        display: flex;
        align-items: center;
        justify-content: center;
        margin-bottom: 20px;
    }
    .logo img {
        width: 100px;
        height: auto;
    }
    h1 {
        color: gold;
        margin-left: 20px;
        text-shadow: 3px 3px 2px black;
    }
    h2 {
        color: gray;
        text-align: center;
        margin-bottom: 20px;
    }
    .nav-links {
        display: flex;
        justify-content: center;
        gap: 10px;
        flex-wrap: wrap;
        background-color: #1a1a1a;
        padding: 10px;
    }
    .nav-links a {
        text-decoration: none;
        color: white;
        padding: 10px 20px;
        border-radius: 5px;
        background-color: #333;
        transition: background-color 0.3s ease;
    }
    .nav-links a:hover {
        background-color: orange;
    }
    .sections {
        display: flex;
        justify-content: space-around;
        margin-top: 20px;
    }
    .section {
        background-color: #1a1a1a;
        padding: 20px;
        border-radius: 10px;
        width: 30%;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .section h3 {
        color: orange;
        margin-bottom: 10px;
    }
    .footer {
        text-align: center;
        margin-top: 20px;
        font-size: 0.9em;
        color: #666;
    }
    h4 {
        color: orange;
        text-align: center;
        margin-left: 250px;
        margin-top: -40px;
       
        
    }
    h2 {
        margin-left: 130px;
    }
    .line {
        color: silver;
        text-align: center;
        text-decoration: underline;
        text-shadow: 2px 2px 2px black;
    }
</style>
</head>
<body>
<div class="container">
    <div class="header">
        <div class="logo">
            <img src="logo2.jpg">
        </div>
        <h1>Bank Of Sahyadri</h1>
    </div>
    <h4>Inspired by Bravery</h4>
    <h2>ExtraOrdinary Service</h2>
    <div class="nav-links">
        <a href="newAccount.jsp" onclick="loadContent('newAccount.jsp')">New Account</a>
        <a href="balance.jsp" onclick="loadContent('balance.jsp')">Balance</a>
        <a href="diposit.jsp" onclick="loadContent('diposit.jsp')">Deposit</a>
        <a href="withdraw.jsp" onclick="loadContent('withdraw.jsp')">Withdraw</a>
        <a href="transferjsp.jsp" onclick="loadContent('transferjsp.jsp')">Transfer</a>
        <a href="delete.jsp" onclick="loadContent('delete.jsp')">Close A/C</a>
        <a href="aboutus.jsp" onclick="loadContent('contactUs.jsp')">About Us</a>
    </div>
    <div class="line">__________________________________________________________________________________________</div>
    <div class="sections">
        <div class="section">
            <h3>Results</h3>
            <p>This is Global Business bank which is under business and finance category for your website design. Freesidetemplatestemplates.com is a free collection of site templates with HTML layouts which are frequently updated.</p>
            <p>These web design layouts are developed by the professional designers for you to make your layouts easy in creating a website and are easy to download.</p>
        </div>
        <div class="section">
            <h3>Opportunities</h3>
            <p>These Global Business banks would be idle for building a successful online business. Download the required HTML template, install it and edit the existing content with your original content.</p>
            <p>The entire website are pre-designed websites all you need to do is adding your own personal content and start your own website.</p>
        </div>
        <div class="section">
            <h3>Solutions</h3>
            <p>There are various other template categories like Art, Finance, Nature, Night Club, Communication, Computer, Music, Religious, Fashion, Holiday, Travel, Health, Medicine. This free Global Business bank which is built using xHTML and CSS.</p>
            <p>These are user friendly that any user can download and customize it according to their wish.</p>
        </div>
    </div>
    <div class="footer">
        &copy; 2024 Bank Of Sahyadri
    </div>
</div>

<script>
    function loadContent(url) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("content").innerHTML = this.responseText;
            }
        };
        xhttp.open("GET", url, true);
        xhttp.send();
    }
</script>

</body>
</html>
