<%@page import="adapter.CelciusReporter"%>
<%@page import="adapter.TemperatureClassReporter"%>
<%@page import="adapter.TemperatureInfo"%>
<%@page import="adapter.TemperatureObjectReporter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<h1 align=center id="titulo"> Adapter </h1>
<br>
<br>
<div id="margen">
<br>
<p>El patron adapter lo aplicamos para el control de las temperaturas de los hornos encargados de fundir los materiales necesarios para la crecion del cristal. Se despliega la conversi&oacute;n de grados celsius a fahrenheit.</p>
<br>
<h3>Temperatura del horno: </h3>
<%
System.out.println("class adapter test");
TemperatureInfo tempInfo = new TemperatureClassReporter();

tempInfo.setTemperatureInC(1000);

String m1 = ("Temp en C:" + tempInfo.getTemperatureInC());
String m2 = ("Temp en F:" + tempInfo.getTemperatureInF());

tempInfo.setTemperatureInF(3150);
String m3 = ("Temp en C:" + tempInfo.getTemperatureInC());
String m4 = ("Temp en F:" + tempInfo.getTemperatureInF());

// object adapter
System.out.println("\nobject adapter test");
tempInfo = new TemperatureObjectReporter();

tempInfo.setTemperatureInC(1000);
String m5 = ("Temp en C:" + tempInfo.getTemperatureInC());
String m6 = ("Temp en F:" + tempInfo.getTemperatureInF());

tempInfo.setTemperatureInF(3150);
String m7 = ("Temp en C:" + tempInfo.getTemperatureInC());
String m8 = ("Temp en F:" + tempInfo.getTemperatureInF());
%>
<h4>Adapter de clase: </h4>
<p><%=m1 %></p>
<p><%=m2 %></p>
<p><%=m3 %></p>
<p><%=m4 %></p>
<h4>Adapter de objeto: </h4>
<p><%=m5 %></p>
<p><%=m6 %></p>
<p><%=m7 %></p>
<p><%=m8 %></p>
<br>
</div>
<br>
</body>
</html>