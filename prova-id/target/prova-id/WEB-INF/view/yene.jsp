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
		action="yene">
		<p>Valor em Yene:</p>
		<form:input path="yene" />
		<form:button>Enviar</form:button>


		<p>De Yene para Euro: € ${mensagemYene}</p>
		
	</form:form>

</body>
</html>