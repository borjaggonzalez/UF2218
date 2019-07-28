<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>


<h1>Java Session</h1>

<section class="p-3 mb-3 bg-light text-justify" >

<p><strong>Uno de los conceptos que más problemas produce cuando comenzamos a trabajar con aplicaciones web en Java es el concepto de java session (HttpSession)</strong> que sirve para almacenar información entre diferentes peticiones HTTP  ya que este protocolo es stateless (sin estado). Así pues en muchas ocasiones nos encontraremos con el problema de compartir estado (datos usuario) entre un conjunto amplio de páginas de nuestra Aplicación.</p>
<img src="http://www.campus.formacion.ipartek.com/moodle/pluginfile.php/1996/mod_page/content/1/datosusuario.gif" alt="" width="457" height="374" role="presentation" class="img-responsive atto_image_button_text-bottom" id="yui_3_17_2_1_1564313635320_26">
<p>Para solventar este problema en la plataforma Java EE se usa de forma muy habitual <strong>la clase HttpSession que tiene una estructura de HashMap (Dicccionario)</strong> y  permite almacenar cualquier tipo de objeto en ella de tal forma que pueda ser compartido por las diferentes páginas que como usuarios utilizamos.</p>
<img src="http://www.campus.formacion.ipartek.com/moodle/pluginfile.php/1996/mod_page/content/1/hashmap.gif" alt="" width="499" height="374" role="presentation" class="img-responsive atto_image_button_text-bottom">
</section>

<h2>Funcionamiento</h2>

<section class="p-3 mb-3 bg-light text-justify" >
<p>El funcionamiento del sistema de sessiones es relativamente sencillo. <strong>Cada vez que un usuario crea una session accediendo a una página (que la genere) se crea un objeto a nivel de Servidor con un HashMap vacío que nos permite almacenar la información que necesitamos relativa a este usuario.</strong> Realizado este primer paso se envía al navegador del usuario una Cookie que sirve para identificarle y asociarle el HashMap que se acaba de construir para que pueda almacenar información en él. Este HashMap puede ser accedido desde cualquier otra página permitiéndonos compartir información.</p>
<img src="http://www.campus.formacion.ipartek.com/moodle/pluginfile.php/1996/mod_page/content/1/creacionSession.gif" alt="" width="524" height="374" role="presentation" class="img-responsive atto_image_button_text-bottom">
</section>

<h2>Usuario y Sessiones</h2>

<section class="p-3 mb-3 bg-light text-justify" >
<p> <strong> El concepto de Session es individual de cada usuario que se conecta a nuestra aplicación </strong> y la información no es compartida entre ellos. Así pues cada usuario dispondrá de su propio HashMap en donde almacenar la información que resulte útil entre páginas.  </p>
<img src="http://www.campus.formacion.ipartek.com/moodle/pluginfile.php/1996/mod_page/content/1/sessionesusuarios.gif" alt="" width="533" height="467" role="presentation" class="img-responsive atto_image_button_text-bottom">
</section>

<h3>Acceder a la session de usuario</h3>
<section class="p-3 mb-3 bg-light text-justify" >
<p>Desde una <strong>JSP</strong> se puede acceder a través de la variable <strong>session</strong> que ya esta declarada de forma implícita.</p>
<p>Desde un <strong>Servlet</strong> se puede conseguir la session del usuario desde la <strong>request</strong> con la siguiente linea:</p>
<p>
<code>
 import javax.servlet.http.HttpSession;<br/>
	HttpSession session = request.getSession();
</code>
</p>
<p>Para marcar la caducidad de la session del usuario se puede usar el siguienete metodo:</p>
<p><code>session.setMaxInactiveInterval(60);  // 60 segundos </code></p> 
<p>*En caso de no especificar el propio servidor tiene un tiempo de expiración.</p>
</section>

<%@include file="../resources/includes/footer.jsp"%>