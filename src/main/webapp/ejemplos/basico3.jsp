<%@include file="../resources//includes/header.jsp"%>
<%@include file="../resources//includes/navbar.jsp"%>


<h1>Ejemplo Servlet Response Content Type</h1>
<p>Un servlet de Java siempre responde por defecto con un <code>text/html</code>, pero se puede cambiar desde el  
<a href="https://developer.mozilla.org/es/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Lista_completa_de_tipos_MIME" target="blank"><p>Listado de todos los content-type que soporta un navegador</p></a>
<p>Vamos a devolver los mismos datos pero con diferente Content-Type</p>

<p>DATOS: perro[nombre='bubba',raza='boxer']</p>

<a class ="btn btn-primary" href="servlet3?p=1">Respuesta Texto</a>
<a class ="btn btn-success" href="servlet3?p=2">Respuesta Html</a>
<a class ="btn btn-primary" href="servlet3?p=3">Respuesta JSON</a>
<a class ="btn btn-danger" href="servlet3?p=4">Respuesta PDF</a>

<%@include file="../resources//includes/footer.jsp"%>