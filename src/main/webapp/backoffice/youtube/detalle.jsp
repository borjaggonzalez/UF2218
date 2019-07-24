<%@page import="com.ipartek.formacion.controller.YoutubeController"%>
<%@include file="../../resources/includes/header.jsp"%>
<%@include file="../../resources/includes/navbar.jsp"%>

<h1>${video.nombre}</h1>

<!-- 16:9 aspect ratio -->
<div class="row">
<div class="col-2"></div>
<div class="col-8">
<div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item "  src="https://www.youtube.com/embed/${video.codigo}?rel=0"></iframe>
</div>
</div>
<div class="col-2"></div>
</div>
 <hr class="my-2">
 <h1>ULTIMOS VIDEOS</h1>
 <hr class="my-2">
<div class="row mb-2">

<c:forEach items="${videos}" var="v">
<div class="col-2	">

<a href="backoffice/youtube?op=<%=YoutubeController.OP_DETALLE%>&id=${v.id}"><img alt="${v.nombre}" title="${v.nombre}" class="rounded" src="https://img.youtube.com/vi/${v.codigo}/default.jpg"/></a>

</div>
</c:forEach>
</div>

<%@include file="../../resources/includes/footer.jsp"%>