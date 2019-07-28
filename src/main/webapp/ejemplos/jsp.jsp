<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>JSP - JavaServer Pages </h1>



<section class="p-3 mb-3 bg-light">
<p>
<strong>JavaServer Pages (JSP)</strong> es una tecnologia que ayuda a los desarrolladores de software a crear paginas web dinamicas basadas en HTML y XML, entre otros tipos de documentos. JSP es similar a PHP, pero usa el lenguaje de programaci�n Java.
</p>
<p>
Para desplegar y correr JavaServer Pages, se requiere un servidor web compatible con contenedores servlet como Apache Tomcat o Jetty.
</p>
<p>
TagLibs -> JSP -> Servidor Aplicaciones (Servlets) -> Cliente (Navegador)
</p>
<p>
El rendimiento de una p�gina JSP es el mismo que tendr�a el servlet equivalente, ya que el c�digo es compilado como cualquier otra clase Java. A su vez, la m�quina virtual compilar� din�micamente a c�digo de m�quina las partes de la aplicaci�n que lo requieran. Esto hace que JSP tenga un buen desempe�o y sea m�s eficiente que otras tecnolog�as web que ejecutan el c�digo de una manera puramente interpretada.
</p>
<p>
La principal ventaja de JSP frente a otros lenguajes es que el lenguaje Java es un lenguaje de prop�sito general que excede el mundo web y que es apto para crear clases que manejen l�gica de negocio y acceso a datos de una manera prolija. Esto permite separar en niveles las aplicaciones web, dejando la parte encargada de generar el documento HTML en el archivo JSP.
<p>
Otra ventaja es que JSP hereda la portabilidad de Java, y es posible ejecutar las aplicaciones en m�ltiples plataformas sin cambios. Es com�n incluso que los desarrolladores trabajen en una plataforma y que la aplicaci�n termine siendo ejecutada en otra.
</p>
<p>
Los servlets y Java Server Pages (JSPs) son dos m�todos de creaci�n de p�ginas web din�micas en servidor usando el lenguaje Java. En ese sentido son similares a otros m�todos o lenguajes tales como el PHP, ASP o los CGIs, programas que generan p�ginas web en el servidor. Sin embargo, se diferencian de ellos en otras cosas.
</p>
<p>
Para empezar, los JSPs y servlets se ejecutan en una m�quina virtual Java, lo cual permite que, en principio, se puedan usar en cualquier tipo de ordenador, siempre que exista una m�quina virtual Java para �l. Cada servlet (o JSP, a partir de ahora lo usaremos de forma indistinta) se ejecuta en su propio hilo, es decir, en su propio contexto; pero no se comienza a ejecutar cada vez que recibe una petici�n, sino que persiste de una petici�n a la siguiente, de forma que no se pierde tiempo en invocarlo (cargar programa + int�rprete). Su persistencia le permite tambi�n hacer una serie de cosas de forma m�s eficiente: conexi�n a bases de datos y manejo de sesiones, por ejemplo.
</p>
<p>
Las JSPs son en realidad una forma alternativa de crear servlets ya que el c�digo JSP se traduce a c�digo de servlet Java la primera vez que se le invoca y en adelante es el c�digo del nuevo servlet el que se ejecuta produciendo como salida el c�digo HTML que compone la p�gina web de respuesta.
</p>
</section>

<section class="p-3 mb-3 bg-light">
<h2>Ejemplo de documento JSP</h2>
<code>
&lt;%@ page errorPage="myerror.jsp" %&gt;<br/>
&lt;%@ page import="com.foo.bar" %&gt;<br/>
&lt;html&gt;<br/>
&lt;head&gt;<br/>
&lt;%! int serverInstanceVariable = 1;%&gt;<br/>
...<br/>
&lt;%! int localStackBasedVariable = 1;%&gt;<br/>
...<br/>

</code>
</section>
<section class="p-3 mb-3 bg-light">
<h2>Sintaxis</h2>
<h3>Variables impl�citas</h3>
Las p�ginas JSP incluyen ciertas variables privilegiadas sin necesidad de declararlas ni configurarlas:

<table>
<tbody>
<tr align="center">
<th>Variable</th>
<th>Clase</th>
</tr>
<tr>
<td><code>pageContext</code></td>
<td><code>javax.servlet.jsp.PageContext</code></td>
</tr>
<tr>
<td><code>request</code></td>
<td><code>javax.servlet.http.HttpServletRequest</code></td>
</tr>
<tr>
<td><code>response</code></td>
<td><code>javax.servlet.http.HttpServletResponse</code></td>
</tr><tr><td><code>session</code></td>
<td><code>javax.servlet.http.HttpSession</code></td>
</tr>
<tr>
<td><code>config</code></td>
<td><code>javax.servlet.ServletConfig</code></td>
</tr>
<tr>
<td><code>application</code></td>
<td><code>javax.servlet.ServletContext</code></td>
</tr>
<tr>
<td><code>out</code></td>
<td><code>javax.servlet.jsp.JspWriter</code></td>
</tr>
<tr>
<td><code>page</code></td><td><code>java.lang.Object</code></td>
</tr>
<tr>
<td><code>exception</code></td><td><code>java.lang.Exception</code></td>
</tr>
</tbody>
</table>


</section>
<section class="p-3 mb-3 bg-light">
<h3>Declaraciones</h3>
<p>Nos permiten declarar variables, funciones y datos est�ticos.</p>
<code><pre> &lt;%! int maxAlumnosClase = 30;&nbsp;%&gt;</pre></code>
</section>

<section class="p-3 mb-3 bg-light">
<h3>Scriptlets</h3>
<p>Los scriptlets son partes de c�digo Java incrustadas entre los elementos est�ticos de la p�gina....</p>
<code><pre> &lt;% ... c�digo Java ...&nbsp;%&gt;</pre></code>
</section>

<section class="p-3 mb-3 bg-light">
<h3>Expresiones</h3>
<p>Las expresiones se eval�an dentro de la servlet. No deben acabar en ";".</p>
<code><pre> &lt;%= maxAlumnosClase + 1%&gt;</pre></code>
</section>

<%@include file="../resources/includes/footer.jsp"%>