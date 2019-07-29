<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>


<h1>IDIOMAS</h1>
<h2>Recuperar properties desde Servlets</h2>

		${mensajeIdioma}
		${mensajeInicio}
		
		<ol>
		<li><a href="i18n?idiomaSeleccionado=es_ES"><img width="128px" src="http://www.euskalak.com/imagenes/Spain.png"/></a></li>
		<li><a href="i18n?idiomaSeleccionado=en_GB"><img width="128px" src="http://www.euskalak.com/imagenes/british.png"/></a></li>
		<li><a href="i18n?idiomaSeleccionado=eu_ES"><img width="128px" src="http://www.euskalak.com/imagenes/euskadi.png"/></a></li>
		</ol>
		
		
<h2>Recuperar properties desde JSP</h2>		
<%
	//@see mirar la jsp header.jsp para la gestion de idiomas
%>
 <p class="h3 text-danger"><fmt:message key="menu.inicio"/></p>
<p class="h3 text-danger"><fmt:message key="menu.ejemplos"/></p>
<%@include file="../resources/includes/footer.jsp"%>