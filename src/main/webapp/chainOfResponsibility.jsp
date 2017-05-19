<%@page import="jvham.chainofresponsibility.AtencionAlCliente"%>
<%@page import="jvham.chainofresponsibility.EmpleadoComun"%>
<%@page import="jvham.chainofresponsibility.Supervisor"%>
<%@page import="jvham.chainofresponsibility.Peticion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Figuras de Cristal </title>
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


<h1 id="titulo"> Chain of Responsibility </h1>
<br>
<br>
<div id="margen">
<br>
<p>En el patr&oacute;n Chain of Responsibility se ve una respuesta en la selecci&oacute;n de un servicio, dirigiendo la petici&oacute;n que solicita un empleado, de acuerdo al tipo de petici&oacute;n.</p>
<br>
Tipo de petici&oacute;n:
<select id="selectD">
  <option value="null"></option>
  <option value="consulta">Deseo hacer una consulta</option>
  <option value="galeriamateriales">Quiero acceder a la galer&#237;a de materiales </option>
  <option value="altas">Agregar recepci&#243;n de mercanc&#237;a </option>
</select>
<p id="chainP"></p>
<br>
<%
AtencionAlCliente m1 = new EmpleadoComun();
AtencionAlCliente m2 = new Supervisor();

m1.setSucesor(m2);
//m1.manejarPeticion(new Peticion("Negativo ",-1));
//m1.manejarPeticion(new Peticion("Positivo ",0));

%>
<br>
</div>

<script src="js/jquery-3.2.0.js"></script>

<script>
$(document).ready(function(){
	
	$("#selectD").change(function(){

		if($("#selectD").val() == "null"){
			$("#chainP").empty();
		}
		if($("#selectD").val() == "consulta"){
			$("#chainP").html("Respuesta: " + "<%=m1.manejarPeticion(new Peticion("Tipo 1 ",-1))%>");
		}
		
		if($("#selectD").val() == "galeriamateriales"){
			$("#chainP").html("Respuesta: " + "<%=m1.manejarPeticion(new Peticion("Tipo 1 ",-1))%>");
		}
		
		if($("#selectD").val() == "altas"){
			$("#chainP").html("Respuesta: " + "<%=m1.manejarPeticion(new Peticion("Tipo 2 ",5))%>");
		}
	});
	
});
</script>
</div>
</body>
</html>