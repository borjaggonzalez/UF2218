<%@page import="com.ipartek.formacion.controller.listener.UsuariosLogeadosListener"%>
<%@include file="../resources/includes/header.jsp"%>
<meta http-equiv="refresh" content="3" />
<%@include file="../resources/includes/navbar.jsp"%>


<%@include file="../resources/includes/mensaje.jsp"%>

<h1>ESTOY EN EL BACKOFFICE</h1>

<%= UsuariosLogeadosListener.nombre %>
<ul>
<c:forEach items="${UsuariosLogeadosListener.nombres}" var="v">
<li>${v}</li>
</c:forEach>
</ul>



<%@include file="../resources/includes/footer.jsp"%>