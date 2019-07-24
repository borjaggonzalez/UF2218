<%@page import="com.ipartek.formacion.controller.AhorcadoController"%>
<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>





<h1>AHORCADO</h1>

<form action="ahorcado"  method="post">
  <div class="form-group">
    <input type="hidden" class="form-control" name="op" id="op" maxlength="1" value="<%=AhorcadoController.OP_INICIAR %>">
  </div>
  <div class="form-group">
    <label for="palabra">Palabra</label>
    <input type="password" class="form-control" name="palabra" id="palabra"  placeholder="Introducela palabra a adiviniar">
  </div>
  
  <button type="submit" class="btn btn-primary">Jugar</button>
</form>


<div class="row mt-2">
${palabra }


</div>



<form action="ahorcado"  method="post">
  <div class="form-group">
    <input type="hidden" class="form-control" name="op" id="op" maxlength="1" value="<%=AhorcadoController.OP_LETRA %>">
  </div>
  <div class="form-group">
    <label for="letra">Letra</label>
    <input type="text" class="form-control" name="letra" id="letra" maxlength="1" placeholder="Introducela la letra">
  </div>
  
  <button type="submit" class="btn btn-primary">Comprobar</button>
</form>


<div class="row mt-2">
<c:forEach items="${respuesta}" var="letra">

${letra}
</c:forEach>

</div>


<%@include file="../resources/includes/footer.jsp"%>