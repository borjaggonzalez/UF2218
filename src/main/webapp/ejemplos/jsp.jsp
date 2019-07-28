<%@include file="../resources/includes/header.jsp"%>
<%@include file="../resources/includes/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>JSP - JavaServer Pages </h1>



<section class="p-3 mb-3 bg-light">
<p>
<strong>JavaServer Pages (JSP)</strong> es una tecnologia que ayuda a los desarrolladores de software a crear paginas web dinamicas basadas en HTML y XML, entre otros tipos de documentos. JSP es similar a PHP, pero usa el lenguaje de programación Java.
</p>
<p>
Para desplegar y correr JavaServer Pages, se requiere un servidor web compatible con contenedores servlet como Apache Tomcat o Jetty.
</p>
<p>
TagLibs -> JSP -> Servidor Aplicaciones (Servlets) -> Cliente (Navegador)
</p>
<p>
El rendimiento de una página JSP es el mismo que tendría el servlet equivalente, ya que el código es compilado como cualquier otra clase Java. A su vez, la máquina virtual compilará dinámicamente a código de máquina las partes de la aplicación que lo requieran. Esto hace que JSP tenga un buen desempeño y sea más eficiente que otras tecnologías web que ejecutan el código de una manera puramente interpretada.
</p>
<p>
La principal ventaja de JSP frente a otros lenguajes es que el lenguaje Java es un lenguaje de propósito general que excede el mundo web y que es apto para crear clases que manejen lógica de negocio y acceso a datos de una manera prolija. Esto permite separar en niveles las aplicaciones web, dejando la parte encargada de generar el documento HTML en el archivo JSP.
<p>
Otra ventaja es que JSP hereda la portabilidad de Java, y es posible ejecutar las aplicaciones en múltiples plataformas sin cambios. Es común incluso que los desarrolladores trabajen en una plataforma y que la aplicación termine siendo ejecutada en otra.
</p>
<p>
Los servlets y Java Server Pages (JSPs) son dos métodos de creación de páginas web dinámicas en servidor usando el lenguaje Java. En ese sentido son similares a otros métodos o lenguajes tales como el PHP, ASP o los CGIs, programas que generan páginas web en el servidor. Sin embargo, se diferencian de ellos en otras cosas.
</p>
<p>
Para empezar, los JSPs y servlets se ejecutan en una máquina virtual Java, lo cual permite que, en principio, se puedan usar en cualquier tipo de ordenador, siempre que exista una máquina virtual Java para él. Cada servlet (o JSP, a partir de ahora lo usaremos de forma indistinta) se ejecuta en su propio hilo, es decir, en su propio contexto; pero no se comienza a ejecutar cada vez que recibe una petición, sino que persiste de una petición a la siguiente, de forma que no se pierde tiempo en invocarlo (cargar programa + intérprete). Su persistencia le permite también hacer una serie de cosas de forma más eficiente: conexión a bases de datos y manejo de sesiones, por ejemplo.
</p>
<p>
Las JSPs son en realidad una forma alternativa de crear servlets ya que el código JSP se traduce a código de servlet Java la primera vez que se le invoca y en adelante es el código del nuevo servlet el que se ejecuta produciendo como salida el código HTML que compone la página web de respuesta.
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
<h3>Variables implícitas</h3>
Las páginas JSP incluyen ciertas variables privilegiadas sin necesidad de declararlas ni configurarlas:

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
<p>Nos permiten declarar variables, funciones y datos estáticos.</p>
<code><pre> &lt;%! int maxAlumnosClase = 30;&nbsp;%&gt;</pre></code>
</section>

<section class="p-3 mb-3 bg-light">
<h3>Scriptlets</h3>
<p>Los scriptlets son partes de código Java incrustadas entre los elementos estáticos de la página....</p>
<code><pre> &lt;% ... código Java ...&nbsp;%&gt;</pre></code>
</section>

<section class="p-3 mb-3 bg-light">
<h3>Expresiones</h3>
<p>Las expresiones se evalúan dentro de la servlet. No deben acabar en ";".</p>
<code><pre> &lt;%= maxAlumnosClase + 1%&gt;</pre></code>
</section>

<%@include file="../resources/includes/footer.jsp"%>