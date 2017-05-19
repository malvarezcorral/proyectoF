<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="factoryMethod.Forma"%>
<%@page import="factoryMethod.Normal"%>
<%@page import="factoryMethod.Color"%>
<%@page import="factoryMethod.Luminati"%>
<%@page import="factoryMethod.FormaFactory"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1 align=center id="titulo"> Factory Method </h1>
    <br>
    <br>
<div id="margen">
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Factory Method para la generacion de paquetes de piezas dependiendo el tipo que sea. Se manda un par&aacute;metro con una palabra clave y el programa despliega tipo de objeto generado.</p>
<br>
<%
FormaFactory shapeFactory = new FormaFactory();
%>
Tipo de comida:
<select id="selectF">
  <option value="null"></option>
  <option value="Paquete Normal">Paquete Normal</option>
  <option value="Paquete Color">Paquete Color</option>
  <option value="Paquete Luminati">Paquete Luminati</option>
</select>
<p id="pMensaje"></p>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
<script src="js/jquery-3.2.0.js"></script>
<script>
$(document).ready(function(){
	
	$("#selectF").change(function(){

		if($("#selectF").val() == "null"){
			$("#pMensaje").empty();
		}
		if($("#selectF").val() == "Paquete Normal"){
			<%
			Forma shape1 = shapeFactory.getShape("Paquete Normal");		
			%>
			$("#pMensaje").html("Mensaje: " + "<%=shape1.fabrica()%>");
		}
		
		if($("#selectF").val() == "Paquete Color"){
			<%
			Forma shape2 = shapeFactory.getShape("Paquete Color");		
			%>
			$("#pMensaje").html("Mensaje: " + "<%=shape2.fabrica()%>");
		}
		
		if($("#selectF").val() == "Paquete Luminati"){
			<%
			Forma shape3 = shapeFactory.getShape("Paquete Luminati");		
			%>
			$("#pMensaje").html("Mensaje: " + "<%=shape3.fabrica()%>");
		}
	});
	
});
</script>
</html>