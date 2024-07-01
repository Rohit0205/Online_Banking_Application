<%@ page import="com.roh.bank.TargetUserBean" %>
<%@ page import="com.roh.bank.UserBean" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: black;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background-color: orange;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        width: 60%;
    }
    h1 {
        text-align: center;
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    table, th, td {
        border: 1px solid #ddd;
    }
    th, td {
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
        color: #333;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
</style>
</head>
<body>
    <div class="container">
        <% UserBean ub = (UserBean) request.getAttribute("ub"); %>
        <% TargetUserBean tub = (TargetUserBean) request.getAttribute("tub"); %>
        <h1>Transaction Details</h1>
        <h4><u>Money Transfer SucessFully...!</u></h4>
        <table>
            <tr>
                <th>Details</th>
                <th>Information</th>
            </tr>
            <tr>
                <td>Transferred From (User Name):</td>
                <td><%= ub.getUname() %></td>
            </tr>
            <tr>
                <td>Transferred From (Account Number):</td>
                <td><%= ub.getAccountNumber() %></td>
            </tr>
            <tr>
                <td>Transferred To (User Name):</td>
                <td><%= tub.getUname() %></td>
            </tr>
            <tr>
                <td>Transferred To (Account Number):</td>
                <td><%= tub.getAccountno() %></td>
            </tr>
            <tr>
                <td>Your Balance Increased:</td>
                <td><%= tub.getAmount() %></td>
            </tr>
        </table>
    </div>
</body>
</html>
