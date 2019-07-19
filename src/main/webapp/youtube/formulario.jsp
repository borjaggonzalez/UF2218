<%@page import="com.ipartek.formacion.controller.YoutubeController"%>
<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>

<h1>Formulario Youtube</h1>
<form action="youtube" method="post">

  <div class="form-group">
  
   <%if(YoutubeController.OP_FORM.equals(request.getAttribute("op"))){ %>
        <input type="hidden" class="form-control" name="op" id="op" value="<%= YoutubeController.GUARDAR%>">
   <%} %>
   <%if(YoutubeController.OP_MODIFICAR.equals(request.getAttribute("op"))){ %>
       <input type="hidden" class="form-control" name="op" id="op" value="<%= YoutubeController.GUARDAR%>">
   <%} %>
    <%if(YoutubeController.OP_BORRAR.equals(request.getAttribute("op"))){ %>
        <input type="hidden" class="form-control" name="op" id="op" value="<%= YoutubeController.ELIMINAR%>">
   <%} %>
  

  </div>

	<div class="form-group">
    
    <input type="text" readonly class="form-control" name="id" id="id" placeholder="" value="${video.id }">
  </div>

  <div class="form-group">
    <label for="inputTitulo">Titulo</label>
    <input type="text" class="form-control" name="nombre" id="inputTitulo" placeholder="" value="${video.nombre }">
  </div>

  
  <div class="form-group">

    <label for="inputCodigo">Código</label>
    <input type="text" class="form-control" name="codigo" id="inputCodigo" placeholder="" value="${video.codigo}">
  </div>
  
  <!-- 
  <div class="form-group >
    <label for="inputReproducicones">Reproducciones</label>
    <input type="number" " class="form-control" min="0" id="inputReproducicones" placeholder="" >
  </div>
 -->
 
 <%if(YoutubeController.OP_FORM.equals(request.getAttribute("op"))){ %>
  <button type="submit" name="guardar" class="btn btn-dark">Guardar</button>
   <%} %>
   <%if(YoutubeController.OP_MODIFICAR.equals(request.getAttribute("op"))){ %>
  <button type="submit" name="modificar" class="btn btn-dark">Modificar</button>
   <%} %>
    <%if(YoutubeController.OP_BORRAR.equals(request.getAttribute("op"))){ %>
  <button type="submit" name="eliminar"  class="btn btn-dark">Borrar</button>
   <%} %>
   
</form>

<%@include file="../resources/includes/footer.jsp"%>