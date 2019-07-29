<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>


<h1>IDIOMAS</h1>
<h2>Recuperar properties desde Servlets</h2>

<section class="p-3 mb-3 bg-light text-justify" >
<p>Usaremos la clase de la Api Util de <strong>java java.util.ResourceBundle</strong> para cargar el fichero de properties, no hace falta indicar el locale o la extensión del idioma porque se le pasa como argumento al metodo:
</p>

<p>ResourceBundle.getBundle ( PATH_PROPERTIES, locale );</p>

<p>Para este ejemplo contemplamos que guardamos el idioma seleccionado por el usuario en login.jsp en session, variable de tipo String "language". Pero tambien podriamos haber usado el locale del navegador del usuario request.getLocale()</p>

<p>Si no existe el idioma carga un locale por defecto "es_ES"</p>

<p>Codigo:</p>
<code>
//Locale por defecto Español<br/>
Locale locale = new Locale("es_ES");
</code>
<code>
<br/>//obtener lenguaje de la session del usuario<br/>
String language = (String) request.getSession().getAttribute("language");<br/>
</code>
<code>
if ( language != null ){<br/>
locale = new Locale(language);<br/>
}

</code>
<br/><code>//Cargar resourceBundle o properties dependiente del idioma<br/>

// Debemos indicara el package donde se encuentra y el nombre del /properties sin la extension del locale <br/>

ResourceBundle messages = ResourceBundle.getBundle("com.ipartek.formacion.egunon.controller.i18nmessages", locale );

</code>

</section>




		${mensajeIdioma}
		${mensajeInicio}
		
		<ol>
		<li><a href="i18n?idiomaSeleccionado=es_ES"><img width="128px" src="http://www.euskalak.com/imagenes/Spain.png"/></a></li>
		<li><a href="i18n?idiomaSeleccionado=en_GB"><img width="128px" src="http://www.euskalak.com/imagenes/british.png"/></a></li>
		<li><a href="i18n?idiomaSeleccionado=eu_ES"><img width="128px" src="http://www.euskalak.com/imagenes/euskadi.png"/></a></li>
		</ol>
		
		
<h2>Recuperar properties desde JSP</h2>

<section class="p-3 mb-3 bg-light text-justify" >	
<p>En las JSP usaremos el TagLibrary de JSTL para poder acceder a los properties multidiomas:</p>

<p>Debemos realizar una serie de pasos:</p>

<p>1.- Importar las librerias de los TagLibs a usar CORE y FMT<br/>
<code>
&lt;%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%gt;<br/>
&lt;%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%&gt;
</code></p>
<p>2.- Crear una variable para que recoja el valor del idioma guardado en session<br/>
<code>
&lt;c:set var="language" value="${not empty sessionScope.language ? sessionScope.language : 'es_ES'}" scope="session" /&gt;
</code></p>
<p>
3.- Setear el locale para el TagLig FMT <br/>
<code>&lt;fmt:setLocale value="${language}" /&gt;</code></p>

<p>4.- Cargar fichero de properties<br/>
<code>&lt;fmt:setBundle basename="com.ipartek.formacion.egunon.controller.i18nmessages" /&gt;</code> </p> 
<p>
5.- Indicar el idioma que usamos al HMLT<br/>

<code>
&lt;!DOCTYPE&gt;<br/>
&lt;html lang="${language}"&gt;<br/>
&lt;head&gt;
</code></p>
<p>6.- Usarlo donde queramos usando el tag <code>&lt;fmt:message key="key.name"/&gt;</code></p>

	
<%
	//@see mirar la jsp header.jsp para la gestion de idiomas
%>
 <p class="h3 text-danger"><fmt:message key="menu.inicio"/></p>
<p class="h3 text-danger"><fmt:message key="menu.ejemplos"/></p>

</section>
<%@include file="../resources/includes/footer.jsp"%>
