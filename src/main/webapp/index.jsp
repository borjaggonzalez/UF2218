
<%@include file="resources/includes/header.jsp"%>
<%@include file="resources/includes/navbar.jsp"%>

	
	
	<h1 class="text-success">Hello Java Web App 3.1</h1>


	<ul class="list-group text-primary">

	
	

	
	</ul>

<div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-link text-dark collapsed" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
          Ejemplos Practicos
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse  " aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
		 <ul class=" mr-4 pr-3">
   		<li class="list-group-item"><a href="ejemplos/basico.jsp">Ejemplo Servlet Basico sin JSP</a></li>
		<li class="list-group-item"><a href="ejemplos/basico2.jsp">Ejemplo Servlet Basico con JSP</a></li>
		<li class="list-group-item"><a href="ejemplos/basico3.jsp">Ejemplo Servlet Response Content Type</a></li>
		<li class="list-group-item"><a href="ejemplos/basico4.jsp">Ejemplo Servlet Get y Post</a></li>
		</ul>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link text-dark" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
			Teoria
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
        <ul class=" mr-4 pr-3">
      		<li class="list-group-item"><a href="jsp">JSP</a></li>
			<li class="list-group-item"><a href="jstl">JSTL - Java Server Tag Libreries</a></li>
			<li class="list-group-item"><a href="ejemplos/el.jsp">EL - Expression Lenguage</a></li>
			<li class="list-group-item"><a href="ejemplos/session.jsp">Session</a></li>
			<li class="list-group-item"><a href="ejemplos/cookie.jsp">Cookies</a></li>
			<li class="list-group-item"><a href="ejemplos/filter.jsp">Filtros</a></li>
			<li class="list-group-item"><a href="ejemplos/listenner.jsp">Listeners o escuchadores de eventos</a></li>
		</ul>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h2 class="mb-0">
        <button class="btn btn-link text-dark collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Ejercicios
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
     	 <ul class=" mr-4 pr-3">
     	 	<li class="list-group-item"><a href="nombres">Nombres</a></li>
       	  	<li class="list-group-item"><a href="calculadora/index.jsp">Calculadora</a></li>
			<li class="list-group-item"><a href="ahorcado/index.jsp">Ahorcado</a></li>
		</ul>
        
      </div>
    </div>
  </div>
</div>




<%@include file="resources/includes/footer.jsp"%>