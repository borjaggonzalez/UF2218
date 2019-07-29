    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@page errorPage="error.jsp" %>  

<% 
//gestion de idiomas 
%>
<c:set var="idiomaSeleccionado" value="${not empty sessionScope.language ? sessionScope.language : 'es_ES'}" scope="session" />
<fmt:setLocale value="${idiomaSeleccionado}"   />
<fmt:setBundle basename="i18n.i18nmessages" />

	<%
		// end Gestion del idioma
	%>


<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Font-Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css"/>

<base href="${pageContext.request.contextPath}/">
<!-- CSS PROPIO -->



<title>Hello, world!</title>
</head>
<body>
