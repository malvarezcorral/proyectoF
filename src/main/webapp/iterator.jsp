<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.iterator.Iterator"%>
<%@page import="jvham.iterator.Container"%>
<%@page import="jvham.iterator.NameRepository"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Figuras de Cristal</title>

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
<br>
<br>
<h1 id="titulo" align=center> Iterator </h1>
<div id="margen">
<br>
<p>El patr&oacute;n Iterator esta siendo aplicado al mostrar los nombres de los empleados, los cuales pueden interpretarse como una colecci&oacute;n de objetos.</p>
<p> Se pretende que estos tengan un secuencia al momento de desplegarlos.</p>
<br>
<br>
<h3>Empleados: </h3>
<br>
<%
NameRepository namesRepository = new NameRepository();

for(Iterator iter = namesRepository.getIterator(); iter.hasNext();){
   String name = (String)iter.next();
   System.out.println("Nombre : " + name);
   %>
   <p>Nombre: <%= name %></p>
   <%
} 
%>
<br>
</div>
</body>
</html>