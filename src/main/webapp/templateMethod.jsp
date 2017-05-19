<%@page import="templatemethod.HacerFigura"%>
<%@page import="templatemethod.UsoVarilla"%>
<%@page import="templatemethod.UsoTubo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<h1 id="title" align=center> Template Method </h1>
<div id="margen">
<br>
<p>En esta seccion, se aplica el patron Template Method en la creacion de figuras ya sea con tubo de cristal con varilla de cristal donde el material es diferente pero el proceso es similar.</p>
<%
HacerFigura varilla = new UsoVarilla();
HacerFigura tubo = new UsoTubo();
String[] varillaList = varilla.prepararMateriales();
String[] tuboList = tubo.prepararMateriales();
%>
<br>
<table class="GeneratedTable">
  <thead>
    <tr>
        <th>Figura con varilla de cristal</th>      
      <th>Figura con tubo de cristal</th>
    </tr>
  </thead>
  <tbody>
      <tr>
          <td><p><%=varillaList[0] %></p>
                <P><%=varillaList[1] %></P></td>
          <td><p><%=tuboList[0] %></p>
                <p><%=tuboList[1] %></p></td>
      </tr>
  </tbody>
</table>

<br>
</div>
<br>
</body>
</html>