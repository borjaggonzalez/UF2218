<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>JSTL - Java Servlet Tag Libraries</h1>

<section class="p-3 mb-3 bg-light text-justify">
	<p>JavaServer Pages (JSP) es una tecnología que ayuda a los	desarrolladores de software a crear p�ginas web din�micas basadas en	HTML y XML, entre otros tipos de documentos. JSP es similar a PHP,pero usa el lenguaje de programación Java.</p>
	<p class="text-danger">Recordar que hay que importar los
		taglibraries</p>
	<a href="https://www.tutorialspoint.com/jsp/jsp_standard_tag_library"
		targe="_blank">Jstl Library</a>
</section>


<section class="p-3 mb-3 bg-light">
	<h2>&lt;c:foreach&gt;</h2>
	<p>
		Sirve para iterar sobre una coleccion sin tener que usar
		<code>&lt;%...%&gt;</code>
		scriplets
	<p>usando el &dollar; =&gt; ${colores}</p>
	<ol>
		<c:forEach items="${colores}" var="color">
			<li>${color}</li>
		</c:forEach>
	</ol>
</section>

<section class="p-3 mb-3 bg-light">
	<h2>&lt;c:if&gt;</h2>
	<p>
		Sirve para comprobar una condicion sin tener que usar
		<code>&lt;%...%&gt;</code>
		scriplets
	<p>usando el &dollar; =&gt; ${colores}</p>
	<c:if test="${isLunes}">Hoy es Lunes</c:if>
	<c:if test="${!isLunes}">Hoy no es Lunes</c:if>

</section>

<section class="p-3 mb-3 bg-light">
	<h2>&lt;c:choose&gt;</h2>
		<p>
		Se utiliza para lo mismo que <code>&lt;c:if&gt;</code> pero en este caso disponemos de <code>&lt;c:else&gt;</code>
		
		scriplets
	<c:choose>
		<c:when test="${isAprovado}">
			<div class="alert alert-${alerta2.tipo}" role="alert">
				${alerta2.texto}</div>
		</c:when>
		<c:otherwise>
			<div class="alert alert-${alerta.tipo}" role="alert">
				${alerta.texto}</div>
		</c:otherwise>
	</c:choose>



</section>
<%@include file="../resources/includes/footer.jsp"%>