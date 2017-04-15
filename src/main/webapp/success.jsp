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
	<jsp:useBean id="loanService" class="service.LoanService" scope="application"></jsp:useBean>
	<jsp:useBean id="loan" class="domain.LoanApplication" scope="session"></jsp:useBean>
	<jsp:useBean id="parameters" class="domain.LoanParameters" scope="session"></jsp:useBean>
	<jsp:useBean id="person" class="domain.Person" scope="session"></jsp:useBean>
	
	<jsp:setProperty property="*" name="person"/>
	<%
		loan.setParameters(parameters);
		loan.setPerson(person);
		loanService.add(loan);
	%>
	<ul>
	<%
		for(LoanApplication app: loanService.getAll()) {
	%>
	<li>Wniosek:<%=app.getNumber() + " Osoba: " + app.getPerson().getSurname() + " Kwota: " + app.getParameters().getAmount() %></li>
	<%
		}
	%>
	</ul>
</body>
</html>