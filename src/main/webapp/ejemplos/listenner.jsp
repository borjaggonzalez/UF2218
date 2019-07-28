<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>


<h1>Listenner</h1>
<section>

<p>Otro concepto importante de JEE a nivel web <strong>los listeners</strong> y en concreto en este caso <strong>el ServletContextListener</strong>. Estos listener estan dise�ados para escuchar los diferentes eventos que se producen en el ciclo de vida de la aplicacion web. Los listener mas importantes son los siguientes:

<p><strong>ServletContextListener:</strong> Listener que se encarga de gestionar los eventos generales de la aplicaci�n como son arranque y parada de la App Web.</p>

<p><strong>HttpSessionListener: </strong>Listener que se encarga de gestionar los propios eventos de la sessi�n como creaci�n ,invalidaci�n y destrucci�n de sessiones.</p>

<p><strong>ServletRequestListener:</strong> Listener que se encarga de los eventos de creaci�n y destruccion de peticiones del usuario.</p>


</section>




<%@include file="../resources/includes/footer.jsp"%>