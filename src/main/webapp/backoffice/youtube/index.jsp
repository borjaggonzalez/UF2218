<%@page import="com.ipartek.formacion.controller.YoutubeController"%>
<%@page import="com.ipartek.formacion.model.pojo.Youtube"%>
<%@page import="java.util.ArrayList"%>
<%@include file="../../resources/includes/header.jsp"%>
<%@include file="../../resources/includes/navbar.jsp"%>


<div class="row">
<div class="col-10"> <h1>Listado Youtube</h1> </div>
<div class="col-2 mt-2"> <a class="btn btn-success" href="youtube?op=<%=YoutubeController.OP_FORM%>" title="nuevo"><i class="fas fa-plus"></i> </a> </div>
</div>
	

	<%@include file="../../resources/includes/mensaje.jsp"%>

	<table class="table">
  <thead>
    <tr class="text-center">
      <th scope="col">Video</th>
      <th scope="col">Titulo</th>
      <th scope="col">Operaciones</th>
    
    </tr>
  </thead>
  <tbody class="text-center">
  
		<c:forEach items="${videos}" var="v">	
    <tr>
      
      <td>
      		<img alt="${v.nombre}" class="rounded" src="https://img.youtube.com/vi/${v.codigo}/default.jpg"/>
     
		</td>
		<td class="align-middle">${v.nombre}</td>
		<td class="align-middle">
		
		<a class="btn btn-primary" href="youtube?op=<%=YoutubeController.OP_MODIFICAR%>&id=${v.id}" title="editar"><i class="fas fa-pencil-alt"></i></a>
		<a class="btn btn-danger" href="youtube?op=<%=YoutubeController.OP_DETALLE%>&id=${v.id}" title="borrar"><i class="fas fa-play"></i></i></a>
		<a class="btn btn-warning" href="youtube?op=<%=YoutubeController.OP_BORRAR%>&id=${v.id}" title="borrar"><i class="far fa-trash-alt"></i></a>
		
	
      
      
    </tr>
	  </c:forEach>	
  </tbody>
</table>
	
	
	
	
	
	
	</ul>

<%@include file="../../resources/includes/footer.jsp"%>