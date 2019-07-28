<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>


<h1>Java Session</h1>

<section class="p-3 mb-3 bg-light text-justify" >

<p><strong>Uno de los conceptos que m�s problemas produce cuando comenzamos a trabajar con aplicaciones web en Java es el concepto de java session (HttpSession)</strong> que sirve para almacenar informaci�n entre diferentes peticiones HTTP  ya que este protocolo es stateless (sin estado). As� pues en muchas ocasiones nos encontraremos con el problema de compartir estado (datos usuario) entre un conjunto amplio de p�ginas de nuestra Aplicaci�n.</p>
<img src="http://www.campus.formacion.ipartek.com/moodle/pluginfile.php/1996/mod_page/content/1/datosusuario.gif" alt="" width="457" height="374" role="presentation" class="img-responsive atto_image_button_text-bottom" id="yui_3_17_2_1_1564313635320_26">
<p>Para solventar este problema en la plataforma Java EE se usa de forma muy habitual <strong>la clase HttpSession que tiene una estructura de HashMap (Dicccionario)</strong> y  permite almacenar cualquier tipo de objeto en ella de tal forma que pueda ser compartido por las diferentes p�ginas que como usuarios utilizamos.</p>
<img src="http://www.campus.formacion.ipartek.com/moodle/pluginfile.php/1996/mod_page/content/1/hashmap.gif" alt="" width="499" height="374" role="presentation" class="img-responsive atto_image_button_text-bottom">
</section>

<h2>Funcionamiento</h2>

<section class="p-3 mb-3 bg-light text-justify" >
<p>El funcionamiento del sistema de sessiones es relativamente sencillo. <strong>Cada vez que un usuario crea una session accediendo a una p�gina (que la genere) se crea un objeto a nivel de Servidor con un HashMap vac�o que nos permite almacenar la informaci�n que necesitamos relativa a este usuario.</strong> Realizado este primer paso se env�a al navegador del usuario una Cookie que sirve para identificarle y asociarle el HashMap que se acaba de construir para que pueda almacenar informaci�n en �l. Este HashMap puede ser accedido desde cualquier otra p�gina permiti�ndonos compartir informaci�n.</p>
<img src="http://www.campus.formacion.ipartek.com/moodle/pluginfile.php/1996/mod_page/content/1/creacionSession.gif" alt="" width="524" height="374" role="presentation" class="img-responsive atto_image_button_text-bottom">
</section>

<h2>Usuario y Sessiones</h2>

<section class="p-3 mb-3 bg-light text-justify" >
<p> <strong> El concepto de Session es individual de cada usuario que se conecta a nuestra aplicaci�n </strong> y la informaci�n no es compartida entre ellos. As� pues cada usuario dispondr� de su propio HashMap en donde almacenar la informaci�n que resulte �til entre p�ginas.  </p>
<img src="http://www.campus.formacion.ipartek.com/moodle/pluginfile.php/1996/mod_page/content/1/sessionesusuarios.gif" alt="" width="533" height="467" role="presentation" class="img-responsive atto_image_button_text-bottom">
</section>

<h3>Acceder a la session de usuario</h3>
<section class="p-3 mb-3 bg-light text-justify" >
<p>Desde una <strong>JSP</strong> se puede acceder a trav�s de la variable <strong>session</strong> que ya esta declarada de forma impl�cita.</p>
<p>Desde un <strong>Servlet</strong> se puede conseguir la session del usuario desde la <strong>request</strong> con la siguiente linea:</p>
<p>
<code>
 import javax.servlet.http.HttpSession;<br/>
	HttpSession session = request.getSession();
</code>
</p>
<p>Para marcar la caducidad de la session del usuario se puede usar el siguienete metodo:</p>
<p><code>session.setMaxInactiveInterval(60);  // 60 segundos </code></p> 
<p>*En caso de no especificar el propio servidor tiene un tiempo de expiraci�n.</p>
</section>

<%@include file="../resources/includes/footer.jsp"%>