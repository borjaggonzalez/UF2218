<%@page import="com.ipartek.formacion.controller.AhorcadoController"%>
<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>





<h1 class="text-center">AHORCADO</h1>
<%@include file="../resources/includes/mensaje.jsp"%>	
<c:if test="${palabra == null }">
	<form action="ahorcado" method="post">
		<div class="form-group">
			<input type="hidden" class="form-control" name="op" id="op"
				maxlength="1" value="<%=AhorcadoController.OP_INICIAR%>">
		</div>
		<div class="form-group">
			<label for="palabra">Palabra</label> <input type="password"	class="form-control" name="palabra" id="palabra" placeholder="Introduce la palabra a adiviniar" required>
		</div>
		<button type="submit" class="btn btn-primary">Jugar</button>
	</form>

</c:if>

<c:if test="${palabra != null }">

<div class="row mt-2">
<button type="button" class="btn btn-secondary" data-toggle="tooltip" data-html="true" title="${palabra}">
 Solución
</button></div>



	<div class="row mt-2 pl-3 ">
		<div class="col-6 text-center mt-5 align-middle display-4">
			<c:if test="${0 == vidas  }">
				<h2>GAME OVER</h2>
				<a class="btn btn-success" href="ahorcado">Volver a jugar</a>
			</c:if>
			<c:if test="${ganador}">
				<h2>¡¡¡¡HAS ACERTADO LA PALABRA!!!!</h2>
			</c:if>
			<c:if test="${0 < vidas  }">
				<c:forEach items="${respuesta}" var="letra">
		${letra}
		</c:forEach>
			</c:if>
		</div>

		<div class="col-6 text-center">

			<img src="resources/img/vidas/${fallos}.gif" alt="vidas 7" />
			<h3>VIDAS: ${vidas}</h3>
		</div>

	</div>



	<c:if test="${vidas >0}">
		<c:if test="${ganador != true}">
			<form action="ahorcado" method="post">
				<div class="form-group">
					<input type="hidden" class="form-control" name="op" id="op"	maxlength="1" value="<%=AhorcadoController.OP_LETRA%>">
				</div>
				<div class="form-group">

					<input type="text" class="form-control" name="letra" id="letra"	maxlength="1" placeholder="Introducela la letra" required>
				</div>

				<button type="submit" class="btn btn-primary">Comprobar</button>
			</form>
			<div class="row mt-2"></div>
		</c:if>
	</c:if>
</c:if>

<%@include file="../resources/includes/footer.jsp"%>