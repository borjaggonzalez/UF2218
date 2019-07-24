<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>




      <div class="row justify-content-center">
      <div class="col-md-8">
	<%@include file="../resources/includes/mensaje.jsp"%>
</div>
      
            <div class="col-md-8 mt-5">
                <div class="card">
                    <div class="card-header">Register</div>
                    <div class="card-body">
                        <form action="login" method="post">
                            <div class="form-group row">
                                <label for="usuario" class="col-md-4 col-form-label text-md-right">Usuario</label>
                                <div class="col-md-6">
                                    <input type="text" id="usuario" class="form-control" placeholder="Tu Nombre Usuario" name="usuario" required autofocus>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">Contraseña</label>
                                <div class="col-md-6">
                                    <input type="password" id="password" class="form-control" placeholder="Contraseña" name="pass" required>
                                </div>
                            </div>

                    	

                            <div class="col-md-6 offset-md-4">
                              <input type="submit" class="btn btn-primary" value="Entrar">
                          
                            </div>
                            </form>
                    </div>
                   
                </div>
            </div>
        </div>
  






 

<%@include file="../resources/includes/footer.jsp"%>