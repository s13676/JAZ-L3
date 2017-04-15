<%@page import="domain.LoanApplication"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <jsp:useBean id="parameters" class="domain.LoanParameters" scope="session"></jsp:useBean>
 <jsp:useBean id="laon" class="domain.LoanApplication" scope="session"></jsp:useBean>
 
 <jsp:setProperty property="amount" name="parameters" param="amount"/>
 <jsp:setProperty property="installmentCount" name="parameters" param="installmentCount"/>
 
 Numer wniosku: ${loan.number}<br>
 Wnioskowana kwota: ${parameters.amount}
 
 <form action="success.jsp">
 	<label>Imię: <input type="text" name="firstName" /></label><br>
 	<label>Nazwisko: <input type="text" name="surname" /></label><br>
 	<label>Nr pesel: <input type="text" name="pasel" /></label><br>
 	<input type="submit" value="następny krok" />
 </form>
</body>
</html>