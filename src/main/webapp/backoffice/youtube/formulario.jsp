<%@page import="com.ipartek.formacion.controller.backoffice.YoutubeController"%>
<%@include file="../../resources/includes/header.jsp"%>
<%@include file="../../resources/includes/navbar.jsp"%>

<h1>Formulario Youtube</h1>
<form action="backoffice/youtube" method="post">

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
    
    <input type="text" readonly class="form-control" name="id" id="id"  value="${video.id }">
  </div>

  <div class="form-group">
    <label for="inputTitulo">Titulo</label>
    <input type="text" class="form-control" name="nombre" id="inputTitulo" placeholder="Mínimo 3 - Maximo 150" value="${video.nombre }">
  </div>

  
  <div class="form-group">

    <label for="inputCodigo">Código</label>
    <input type="text" class="form-control" name="codigo" id="inputCodigo"  placeholder="Exactamente 11" value="${video.codigo}">
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
  <button type="button" name="borrar"   data-toggle="modal" data-target="#modalBorrar" class="btn btn-dark">Borrar</button>
  
		<!-- Modal -->
		<div class="modal fade" id="modalBorrar" tabindex="-1" role="dialog" aria-labelledby="modalBorrar" aria-hidden="true">
 		 <div class="modal-dialog modal-dialog-centered" role="document">
  		  <div class="modal-content">
    		  <div class="modal-header">
     		   <h5 class="modal-title" id="exampleModalCenterTitle">AVISO</h5>
      		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
       		   <span aria-hidden="true">&times;</span>
      		  </button>
     		 </div>
    	  <div class="modal-body">
    	  Estas seguro de que quieres eliminar el video?
 		 </div>
 		  <div class="modal-footer">
       		  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      		  <button type="submit" name="eliminar" class="btn btn-danger">Borrar</button>
   		  </div>
 	   </div>
  	</div>
</div>
   <%} %>
   
</form>

<%@include file="../../resources/includes/footer.jsp"%>