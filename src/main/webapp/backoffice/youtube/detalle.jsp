<%@include file="../../resources/includes/header.jsp"%>
<%@include file="../../resources/includes/navbar.jsp"%>

<h1>${video.nombre}</h1>

<!-- 16:9 aspect ratio -->
<div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item"  src="https://www.youtube.com/embed/${video.codigo}?rel=0"></iframe>
</div>




<%@include file="../../resources/includes/footer.jsp"%>