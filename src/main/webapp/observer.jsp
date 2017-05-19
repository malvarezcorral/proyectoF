<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="observer.Observer"%>
<%@page import="observer.Subject"%>
<%@page import="observer.MyTopic"%>
<%@page import="observer.MyTopicSubscriber"%>
<%@page import="observer.Consola"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cristaleria Flores</title>
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
<h1 id="titutlo" align=center>Observer</h1>
<div  id="margen">
<br>
<br>
<p>En la Cristaleria hay diferentes usuarios que deben estar informados de ciertos eventos como la venta de mercancia, proximos materiales a terminar, etc. El patron Observer se aplica en esto permitiendo que los usuarios observen un misto topico en este caso el evento.  </p>
<br>
<br>
<table class="GeneratedTable">
  <thead>
    <tr>
        <th><input type="text" name ="evento" id="texto"></th>      
      <th><input type="submit" name ="ok"></th>
    </tr>
  </thead>
</table>
  
<br>
<br>
<%
//create subject        
                                                       
		MyTopic topic = new MyTopic();
		
		//create observers
		Observer obj1 = new MyTopicSubscriber("Nayeli");
		Observer obj2 = new MyTopicSubscriber("Miguel");
		Observer obj3 = new MyTopicSubscriber("Alejandro");
		
		//register observers to the subject
		topic.register(obj1);
		topic.register(obj2);
		topic.register(obj3);
		
		//attach observer to subject
		obj1.setSubject(topic);
		obj2.setSubject(topic);
		obj3.setSubject(topic);
		
		//check if any update is available
		obj1.update();
		obj2.update();
		obj3.update();
		
		//now send message to subject
		topic.postMessage("Venta realizada");
%>
<div id="consola">
<%=Consola.texto %>
</div>
<%Consola.texto = ""; %>
<br>
</div>
<br>
</body>
</html>