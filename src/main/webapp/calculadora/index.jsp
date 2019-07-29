<%@page import="com.ipartek.formacion.controller.CalculadoraController"%>
<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>

<h1>Calculadora</h1>

<%@include file="../resources/includes/mensaje.jsp"%>
<form action="calculadora" method="post">
  <div class="form-group">
    <label for="numero1">Numero 1</label>
    <input type="number" class="form-control" name="numero1" id="numero1" step="0.01" placeholder="0.00" value=${num1}>
  </div>
    <div class="form-group">
    <label for="numero2">Numero 2</label>
    <input type="number" class="form-control" name="numero2" id="numero2" step="0.01" placeholder="0.00" value=${num2}>
  </div>
  <div class="form-group">
    <label for="operacion">Operacion</label>
    <select class="form-control" name="op" id="operacion">
   	  <option value="<%= CalculadoraController.OP_SUMAR%>" ${(op==CalculadoraController.OP_SUMAR)?'selected':'' }>Sumar</option>
      <option value="<%= CalculadoraController.OP_RESTAR%>" ${(op==CalculadoraController.OP_RESTAR)?'selected':'' }>Restar</option>
      <option value="<%= CalculadoraController.OP_MULTI%>" ${(op==CalculadoraController.OP_MULTI)?'selected':'' }>Multiplicar</option>
      <option value="<%= CalculadoraController.OP_DIVIDIR%>" ${(op==CalculadoraController.OP_DIVIDIR)?'selected':'' }>Dividir</option>
      
    </select>
  </div>
  

<div class="form-group">
<button type="submit" class="btn btn-primary">Calcular</button>
</div>

<div class="resultado">
<c:if test="${total!=null }">
<h2 class="mb-2">Resultado:<fmt:formatNumber type="number" pattern="#,###.##" value="${total}" /></p></h2>
</c:if>



</div>

</form>













<%@include file="../resources/includes/footer.jsp"%>