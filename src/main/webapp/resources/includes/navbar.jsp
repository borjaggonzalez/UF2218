	<nav class="navbar  navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
  <a class="navbar-brand" href="#">UF2218</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

 	<div class="collapse navbar-collapse" id="navbarSupportedContent">
   		 <ul class="navbar-nav mr-auto">
    		  <li class="nav-item	">
     	 		  <a class="nav-link" href="index.jsp">Inicio <span class="sr-only">(current)</span></a>
    		  </li>
    	
     	  <li class="nav-item dropdown">
      			  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     			     Youtube
     			   </a>
       		 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        		<a class="dropdown-item" href="backoffice/youtube?op=1">Listado</a>
        		<a class="dropdown-item" href="backoffice/youtube?op=2">Formulario</a>
     	   </div>
      		</li>
      		<c:if test="${usuario != null}">
      			<li class="nav-item">
     	 		  <a class="nav-link" href="backoffice">Backoffice <span class="sr-only">(current)</span></a>
    		  </li>
      		 </c:if>	
		</ul>
		 <ul class="navbar-nav mr-aut ">
		  	<c:if test="${usuario == null}">
	        	<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
	        </c:if>
	        <c:if test="${usuario != null}">
	        	<li class="nav-item"><span class="nav-link text-light">${usuario}</span></li>
	        	<li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
	        </c:if>		       
		</ul>
  	</div>
  </div>
</nav>


 
<!-- Fin Navbar -->
<!-- Inicio Nav idiomas -->
<div class="border-bottom">
	<div class="d-flex flex-row-reverse bd-highlight container mt-2 mb-2 "> 
 		 <div class="pl-2 bd-highlight"><a href="i18n?idiomaSeleccionado=es_ES&ruta=<%=request.getRequestURI().split("uf2218/")[1] %>">es</a></div> 
 		 <div class="pl-2 bd-highlight"><a href="i18n?idiomaSeleccionado=en_GB&ruta=<%=request.getRequestURI().split("uf2218/")[1] %>">en</a></div>
 		 <div class="pl-2 bd-highlight"><a class="active" href="i18n?idiomaSeleccionado=eu_ES&ruta=<%=request.getRequestURI().split("uf2218/")[1] %>">eu</a></div>

	</div>
  </div>



<!-- Fin nav idiomas -->
	<main class="container pt-2 mt-5">