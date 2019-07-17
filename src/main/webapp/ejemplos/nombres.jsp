<%@page import="java.util.ArrayList"%>
<%@include file="../resources//includes/header.jsp"%>
<%@include file="../resources//includes/navbar.jsp"%>


<h1>Listado Nombres</h1>

<div class="row">
	<div class="col-8 mt-2">
	<div class="alert alert-${mensaje.tipo}" role="alert">
  		${mensaje.texto}
	</div>
		
	</div>
	<div class="col-4">
		<h2>Nuevo</h2>
	</div>
	</div>
<div class="row">
	<div class="col-8">
		
		<form class="form-inline " action="nombres" method="get">
			<input type="search" name="buscar" id="buscar" value="${buscar}"  class="form-control col-md-4" placeholder="Nombre a buscar">
			<button class="btn btn-dark ml-2" type="submit"><i class="fas fa-search"></i></button>
		</form>

<%if(request.getAttribute("buscar")!=null){ %>
		<p class="text-muted">Resultados para la busqueda de <strong>${buscar}</strong></p>
<%} %>



<div class=" shadow bg-dark card mt-4" >
  <div class="card-header text-white">
    <strong>Listado nombres</strong>
  </div>
  <ul class="list-group list-group-flush">
    	<%
				ArrayList<String> nombres;
				nombres = (ArrayList<String>) request.getAttribute("nombres");
				for (String nombre : nombres) {
			%>
			<%="<li class=\"list-group-item\">" + nombre.toString() + "</li>"%>
			<%
				}
				;
			%>
  </ul>
  </div>
	
	</div>
  
  


		<div class="col-4">
			
			<form action="nombres" class="form-inline" method="post">
			<label class="sr-only" for="nombre">Nombre</label>
				<input type="text" name="nombre"  class="form-control col-md-5" placeholder="Nuevo Nombre" required>
				<button class="btn btn-dark ml-2" type="submit">Crear</button>
			</form>
		</div>




		

</div>
<%@include file="../resources//includes/footer.jsp"%>