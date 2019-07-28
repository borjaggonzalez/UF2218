<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>

<h1>Filter o Filtros en JEE</h1>

<section class="p-3 mb-3 bg-light text-justify">
<p>Vamos a explicar por encima un mecanismo muy potente que se puede utilizar en el dise�o modular de portales java, normalmente al desarrollar portales siguiendo un patr�n MVC o utilizando alg�n Framework que lo implemente como Struts o Spring.</p>
<p>Siempre nos surge la necesidad de desarrollar la seguridad o controlar los "eventos" de navegaci�n, para este caso existen los Filtros, un filtro permite que determinada petici�n o respuesta sea analizada bajo ciertas condiciones.</p>
<p>Una de las principales caracter�sticas de un filtro es que puede ser colocado en cualquier punto del flujo de la aplicaci�n, ya sea entre una solicitud de JSP a JSP, Servlet a Servlet, o inclusive Servlet/JSP a HTML, la �nica condici�n que debe cumplirse es que debe existir un objeto de entrada (ServletRequest) y otro de salida (ServletResponse).</p>
<p>Ahora bien, solo queda pensar para que queremos usar nuestro filtro, su uso normal se suele aplicar para "tracear" el flujo de la aplicaci�n con las llamadas que se van realizando, comprobar la sesi�n del usuario as� como implementar la seguridad del portal.</p>
<p>Podemos tener mas de un filtro, por lo cual se encadenan usando el m�todo chain. El orden de ejecuci�n de los filtros es seg�n se declaren en el Web.xml o dependiendo del tipo que sea ( request, response,...)</p>
<img src="http://www.campus.formacion.ipartek.com/moodle/pluginfile.php/1559/mod_page/content/5/web-filterMapping.gif" alt="ejecucion de filtros" width="356" height="253" class="img-responsive atto_image_button_text-bottom">
<p>podemos ver tres filtros ( F1, F2 y F3) y tres servlets ( azul )</p>

</section>
	



<%@include file="../resources/includes/footer.jsp"%>