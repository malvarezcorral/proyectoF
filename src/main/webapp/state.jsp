<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="state.State"%>
<%@page import="state.VentaDisponible"%>
<%@page import="state.VentaAgotada"%>
<%@page import="state.EstadoVenta"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cristaleria Flores</title>
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
<h1  id="titulo" align=center> State </h1>
<div id="margen">
<br>
<p>El patron State se aplica en el estado de existencia de los productos, si un producto esta disponible o no para su venta</p>
<br>
<%
EstadoVenta context = new EstadoVenta();
State ventaD = new VentaDisponible();
State VentaA = new VentaAgotada();

context.setState(ventaD);
%>
<h3>Estado 1: disponibles para venta </h3>
<p><%=context.doAction() %></p>
<a href="../../ejemplo3/src/java/jvham/memento/EstadoAnterior.java"></a>
<%
context.setState(VentaA);
%>
<br>
<h3>Estado 2: no disponibles para venta</h3>
<p><%=context.doAction() %></p>
<br>
</div>
<br>
</body>
</html>