
<!DOCTYPE html>
<%@ page import="com.roh.bank.UserBean" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Details</title>
<style>
    body {
         background-image: url('sahydri.jpg'); /* Replace 'your-image-url.jpg' with the URL of your desired image */
    background-size: cover;
    color: #fff;
    font-family: Arial, sans-serif;
    }
    .container {
        width: 80%;
        margin: 0 auto;
         background-color: rgba(0, 0, 0, 0.5);
        color:black;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }
    th, td {
        padding: 12px;
        border: 1px solid #ddd;
    }
    th {
        background-color: gray;
        text-align: left;
    }
    td {
        background-color: gray;
    }
    h1 {
        text-align: center;
        color: orange;
    }
</style>
</head>
<body>

    <div class="container">
        <h1>Account Details</h1>
        <%
        UserBean ub = (UserBean) request.getAttribute("ub");
        %>

        <table>
            <tr>
                <th>Account Number</th>
                <td><%=ub.getAccountNumber()%></td>
            </tr>

            <tr>
                <th>User Name</th>
                <td><%=ub.getUname()%></td>
            </tr>

            <tr>
                <th>Amount</th>
                <td><%=ub.getAmount()%></td>
            </tr>

            <tr>
                <th>Address</th>
                <td><%=ub.getAddress()%></td>
            </tr>

            <tr>
                <th>Phone</th>
                <td><%=ub.getPhone()%></td>
            </tr>
        </table>
    </div>

</body>
</html>
