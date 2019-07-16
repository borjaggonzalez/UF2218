<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>

<h1>Formulario Youtube</h1>

<form>
  <div class="form-group">
    <label for="inputTitulo">Titulo</label>
    <input type="text" class="form-control" id="inputTitulo" placeholder="">
  </div>

  
  <div class="form-group">
    <label for="inputCodigo">Código</label>
    <input type="text" class="form-control" id="inputCodigo" placeholder="">
  </div>
  <div class="form-group">
    <label for="inputReproducicones">Reproducciones</label>
    <input type="number" class="form-control" min="0" id="inputReproducicones" placeholder="">
  </div>

  
  <button type="submit" class="btn btn-dark">Guardar</button>
</form>

<%@include file="../resources/includes/footer.jsp"%>