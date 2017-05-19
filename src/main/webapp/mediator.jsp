<%@page import="jvham.mediator.Chat"%>
<%@page import="jvham.mediator.ChatMediator"%>
<%@page import="jvham.mediator.User"%>
<%@page import="jvham.mediator.ChatMediatorImpl"%>
<%@page import="jvham.mediator.UserImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<h1 id="titulo" align=center> Mediator </h1>
<br>
<div id="margen">
<br>
<p>Mediator esta siendo utilizado en el instante en que un usuario requiere acceso al sistema y va a solicitar una consulta de la mercancia existente. En la petici&oacute;n que hace el empleado y al cliente a trav&eacute;s del sistema.Mediator cumple con la funcion establecer la comunicación entre los dos medios sin que estos elementos interactuen directamente.</p>
<br>
<h3>Conversaci&oacute;n: </h3>
<%
ChatMediator mediator = new ChatMediatorImpl();
User user1 = new UserImpl(mediator, "Sistema");
User user2 = new UserImpl(mediator, "Cliente");
mediator.addUser(user1);
mediator.addUser(user2);
Chat.textoChat = "";
user1.send("Cual es la accion que desea realizar?");
user2.send("Visualizar tablas de inventario Enero-Junio 2017");
%>
<div id="consola">
<p><%=Chat.textoChat %></p>
</div>
<br>
</div>
</body>
</html>