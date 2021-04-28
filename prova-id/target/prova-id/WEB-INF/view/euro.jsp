<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Conversor para prova</title>
</head>
<body>

	<form:form method="POST" modelAttribute="conversor"
		action="forms">
		<p>Valor em Euro:</p>
		<form:input path="value" />
		<form:button>Enviar</form:button>


		<p>De Euro para Yene: R$ ${mensagemEuro}</p>
		
	</form:form>

</body>
</html>