<%@page import="memento.EstadoAnterior"%>
<%@page import="memento.Memento"%>
<%@page import="memento.Inventario"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cristaleria Flores</title>
<!-- <link rel="stylesheet" type="text/css" href="css/mimain.css">-->
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
	<div id="logo">
		<a href="#"></a>
		<h2><a href="#"><small> </small></a></h2>	
	</div>
 <div id="buttons">
	<a href="index.jsp" class="but_home" title=""></a><div class="but_razd"></div>
	<a href="blog.jsp" class="but" title="">Materiales</a><div class="but_razd"></div>
	<a href="galeria.jsp" class="but" title="">Galería</a><div class="but_razd"></div>
	<a href="inventario.jsp" class="but" title="">Inventario</a><div class="but_razd"></div>
	<a href="home.html" class="but" title="">Patrones</a>	
	</div>
</div>

<h1 id="titulo" align=center> Memento </h1>
<br>
<br>
<div id="margen">
<br>
<p>El patron utilizado es Memento y es utilizado para las cantidades de los elementos en el inventario, este patron consiste de 
   una clase llamada Inventario donde los datos son modificados y otra donde se cuarda los estados actuales y asi en la siguiente actualizacion permitir recuperar los datos.
</p>
<br>
<br>
<%
EstadoAnterior caretaker = new EstadoAnterior();
Inventario originator = new Inventario();
int[] vista = originator.getState();
%>

<table class="GeneratedTable">
  <thead>
    <tr>
      <th>Estado inicial</th>
      <th>Estado Anterior</th>
      <th>Estado Actual</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><ul><li>Varilla de cristal: <%=vista[0]%></li><li>Tubo de cristal: <%=vista[1]%></li><li>Varillas de color: <%=vista[2]%></li><li> Tubos de color: <%=vista[3]%></li><li> Tubo de vidrio: <%=vista[4]%></li></ul></td>
      <%
        originator.setState(new int[]{9,8,7,6,5,4});
        caretaker.add( originator.save() );
        vista = originator.getState();
        %>
      <td><ul><li>Varilla de cristal: <%=vista[0]%></li><li>Tubo de cristal: <%=vista[1]%></li><li>Varillas de color: <%=vista[2]%></li><li> Tubos de color: <%=vista[3]%></li><li> Tubo de vidrio: <%=vista[4]%></li></ul></td>
      <%
        originator.setState(new int[]{8,7,6,5,4,3});
        caretaker.add( originator.save() );
        vista = originator.getState();
        %>
      <td><ul><li>Varilla de cristal: <%=vista[0]%></li><li>Tubo de cristal: <%=vista[1]%></li><li>Varillas de color: <%=vista[2]%></li><li> Tubos de color: <%=vista[3]%></li><li> Tubo de vidrio: <%=vista[4]%></li></ul></td>
    </tr>
  </tbody>
</table>

<br>
<br>
<div id=botones></div>
</div>
<div id=divVer></div>
<br>
</body>

</html>