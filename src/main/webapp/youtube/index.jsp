<%@page import="com.ipartek.formacion.controller.YoutubeController"%>
<%@page import="com.ipartek.formacion.model.pojo.Youtube"%>
<%@page import="java.util.ArrayList"%>
<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>


<div class="row">
<div class="col-10"> <h1>Listado Youtube</h1> </div>
<div class="col-2 mt-2"> <a class="btn btn-success" href="youtube?op=<%=YoutubeController.OP_FORM%>" title="nuevo"><i class="fas fa-plus"></i> </a> </div>
</div>
	
	<% 
	ArrayList<Youtube> videos = (ArrayList<Youtube>) request.getAttribute("videos");
		
	%>
	
	<table class="table">
  <thead>
    <tr class="text-center">
      <th scope="col">Video</th>
      <th scope="col">Titulo</th>
      <th scope="col">Operaciones</th>
    
    </tr>
  </thead>
  <tbody class="text-center">
  
		<% for(Youtube v : videos){ %>
    <tr>
      
      <td><div class="embed-responsive embed-responsive-16by9">
 					 <iframe  class="embed-responsive-item"  src="https://www.youtube.com/embed/	
						<%=v.getCodigo() %>?rel=0" ></iframe>
			</div>
		</td>
		<td class="align-middle"><%= v.getNombre() %></td>
		<td class="align-middle">
		
		<a class="btn btn-primary" href="youtube?op=<%=YoutubeController.OP_MODIFICAR%>&id=<%=v.getId() %>" title="editar"><i class="fas fa-pencil-alt"></i></a>
		<a class="btn btn-danger" href="youtube?op=<%=YoutubeController.OP_BORRAR%>&id=<%=v.getId() %>" title="borrar"><i class="far fa-trash-alt"></i></a>
		
	
      
      
    </tr>
	<%	} %>
  </tbody>
</table>
	
	
	
	
	
	
	</ul>

<%@include file="../resources/includes/footer.jsp"%>