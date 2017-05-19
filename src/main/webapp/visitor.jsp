<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="visitor.ItemElement"%>
<%@page import="visitor.Producto"%>
<%@page import="visitor.Figura "%>
<%@page import="visitor.ShoppingCartVisitor"%>
<%@page import="visitor.ShoppingCartVisitorImpl"%>
<%@page import="visitor.ShoppingCartClient"%>
<%@page import="visitor.Consola"%>
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
<h1 id="titulo" align=center>Visitor</h1>
<div id="margen">
<br>
<p>El patron visitor se utiliza para calcular el precio total de una compra de la mercancia disponible</p>
<br>
<div id="consola">
<%
ItemElement[] items = new ItemElement[]{new Figura (20, "1234"),new Figura (15, "5678"),new Figura (25, "5678"),new Producto(10, 2, "Varilla de cristal"), new Producto(5, 5, "Tubo de cristal"), new Producto(8, 3, "Varilla de color")};
double total = ShoppingCartClient.calculatePrice(items);
System.out.println("Costo total : "+total);

%>
<%=Consola.texto %>
<p>Costo total = <%= total %></p>
<%Consola.texto = ""; %>
</div>
<br>
</div>
<br>

</body>
</html>