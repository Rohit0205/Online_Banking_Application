 
<!DOCTYPE html>
<%@ page import="com.roh.bank.UserBean" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 20px;
    }
    .container {
        width: 80%;
        margin: 0 auto;
        background: black;
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
        background-color: #f2f2f2;
        text-align: left;
    }
    td {
        background-color: #fafafa;
    }
    h1 {
        text-align: center;
        color:orange ;
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
