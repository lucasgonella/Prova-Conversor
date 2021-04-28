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
		<p>Valor em Euro :</p>
		<form:input path="euro" />
		<form:button>Enviar</form:button>
		
		<p>Valor em Iene :</p>
		<form:input path="iene" />
		<form:button>Enviar</form:button>


		<p>De Euro para Iene:  ${mensagemEuro}</p>
		<p>De Iene para Euro:  ${mensagemIene}</p>
		
	</form:form>

</body>
</html>