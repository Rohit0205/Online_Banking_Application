 

<!DOCTYPE html>
<%@ page import="com.roh.bank.UserBean" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>WithdrawView page</h1>
      <%UserBean ub= (UserBean)request.getAttribute("ub"); %>
      
      <%=ub.getUname() %>
      <br>
      <%=ub.getAccountNumber() %><br>
    
     <%=ub.getAmount() %><br>
     <%=ub.getAddress() %><br>
     <%=ub.getPhone() %><br>
</body>
</html>