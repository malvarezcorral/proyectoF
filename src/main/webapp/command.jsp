<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="jvham.command.Consola"%>
<%@page import="jvham.command.Command"%>
<%@page import="jvham.command.LightsOffCommand"%>
<%@page import="jvham.command.LightsOnCommand"%>
<%@page import="jvham.command.Light"%>
<%@page import="jvham.command.RemoteControl"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Figuras de Cristal</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
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

<h1 id="titulo" align="center"> Command </h1>
<br>
<br>
<div id="margen">
<br >
<p>El patr&oacute;n Command es aplicado en el area de horneado del taller. La temperatura de los hornos exceden a los 1000ºC estos procederan a apagarse. En el caso de que los hornos  est&aacute;n a una temperatura menor a los 1000ºC, se encienden. </p>
<br>
<br>
<img src="images/Palanca.gif" >
<%
RemoteControl control = new RemoteControl();
Light light = new Light();
Command lightsOn = new LightsOnCommand(light);
Command lightsOff = new LightsOffCommand(light);

//switch on

control.setCommand(lightsOn);
control.pressButton();
%>
<h3>Hornos apagados: </h3>
<p><%=Consola.estado %>
<%
//switch off

control.setCommand(lightsOff);
control.pressButton();
%>
<br>
<h3>Hornos encendidos: </h3>
<p><%=Consola.estado %>
<br>
<br>
</div>
</body>
</html>