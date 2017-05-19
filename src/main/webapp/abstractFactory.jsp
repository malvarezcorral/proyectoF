<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="abstractFactory.Cliente"%>
<%@page import="abstractFactory.Tipos"%>
<%@page import="abstractFactory.ColorFactory"%>
<%@page import="abstractFactory.ClearFactory"%>
<%@page import="abstractFactory.Tubos"%>
<%@page import="abstractFactory.TubosColor"%>
<%@page import="abstractFactory.TubosTransparente"%>
<%@page import="abstractFactory.Varillas"%>
<%@page import="abstractFactory.VarillasColor"%>
<%@page import="abstractFactory.VarillasTransparente"%>
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
	<a href="galeria.jsp" class="but" title="">Galer�a</a><div class="but_razd"></div>
	<a href="inventario.jsp" class="but" title="">Inventario</a><div class="but_razd"></div>
	<a href="home.html" class="but" title="">Patrones</a>	
	</div>
</div>

<br>
<br>
<h1 id="titulo" align=center> Abstract Factory </h1>
<br>
<br>
<div id="margen">
<br>
<p>Aqu&iacute; se aplica el patr&oacute;n de dise&ntilde; AbstracT Factory donde se crea la fabrica abstracta GlassFactory que cuenta con dos fabricas concretas ClearFactory para productos transparentes y COlorFactory para productos con color.</p>
<p>LOs productos a realizar son varilla transparente y a color y tubo transparente y a color.</p>
<br>
<h3>Implementaci&oacute;n: </h3>
<%
// Se insertarán los componentes con sal
Cliente cliente = new Cliente( new ColorFactory() );
System.out.println("----------------------------");
// Ahora se insertarán los componentes sin sal
cliente = new Cliente( new ClearFactory() );
//-------------------------------------------------------------------------
Tipos acolor = new ColorFactory();

Tubos tubo = acolor.getTubos();
String ConfigurarTubo = tubo.configurar();
String crearTubo = tubo.crear();

Varillas varilla = acolor.getVarillas();
String ConfigurarVarilla = varilla.configurar();
String crearVarilla = varilla.crear();


%>
<p><%=crearTubo %></p>
<p><%=ConfigurarTubo %></p>
<p><%=crearVarilla %></p
><p><%=ConfigurarVarilla %></p>


<%
Tipos transparente = new ClearFactory();

Tubos tuboclear = transparente.getTubos();
String configurartuboclear = tuboclear.configurar();
String creartuboclear = tuboclear.crear();

Varillas varclear = transparente.getVarillas();
String configurarvarclear = varilla.configurar();
String crearvarclear = varilla.crear();
%>
<p><%=creartuboclear %></p>
<p><%=configurartuboclear %></p>
<p><%=crearvarclear %></p>
<p><%=configurarvarclear %></p>

<br>
</div>
<br>
</body>
</html>