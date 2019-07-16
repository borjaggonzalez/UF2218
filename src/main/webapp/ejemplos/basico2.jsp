<%@include file="../resources//includes/header.jsp"%>
<%@include file="../resources//includes/navbar.jsp"%>


<h1>Ejemplo Servlet Basico con JSP</h1>


<a class="btn btn-primary" href="useragent">Detectar Navegador que estas usando</a>

<h2 class="pt-4">Respuesta</h2>
<p>${userAgent}</p>
<p>${navegador}</p>
<p>${movil}</p>
<%@include file="../resources//includes/footer.jsp"%>