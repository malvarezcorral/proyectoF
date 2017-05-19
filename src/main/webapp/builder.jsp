<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="builder.Item"%>
<%@page import="builder.Chico"%>
<%@page import="builder.Diametro"%>
<%@page import="builder.Gde"%>
<%@page import="builder.Longitud"%>
<%@page import="builder.Luminati"%>
<%@page import="builder.Normal"%>
<%@page import="builder.Prod"%>
<%@page import="builder.ProdBuilder"%>
<%@page import="builder.Producto1"%>
<%@page import="builder.diamch"%>
<%@page import="builder.diamgde"%>
<%@page import="builder.Consola"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" type="text/css" href="styles.css">
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

<br>
<br>
<h1 align=center id="titulo">Builder</h1>
<div id="margen">
<br>
<p>Se utiliza el patr&oacute;n Builder para la descripci&oacute;n de lostipos de productos, incluyendo largo, diametro y precio por producto.</p>
<div>
<%
ProdBuilder prodBuilder = new ProdBuilder();

Prod p1 = prodBuilder.prodNorm();
System.out.println("Normal");
%>
<p>Cristal clásico</p>
<%
p1.showItems();
%>
<%=Consola.texto %>
<%Consola.texto = "";%>
<%
System.out.println("Total Cost: " + p1.getCost());

Prod p2 = prodBuilder.prodCol();
System.out.println("\n\nColor");
%>
<p>Cristal de Color</p>
<%
p2.showItems();
%>
<%=Consola.texto %>
<%
System.out.println("Total Cost: " + p2.getCost());

Prod p3 = prodBuilder.prodLum();
System.out.println("\n\nLuminati");
%>
<p>Cristal Fluorescente</p>
<%
p3.showItems();
%>
<%=Consola.texto %>
<%
System.out.println("Total Cost: " + p3.getCost());
%>

</div>
<%Consola.texto = "";%>
<br>
</div>
<br>

</body>
</html>