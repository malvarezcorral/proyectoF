<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Patrones de diseño sistema de inventario</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="main_bg">
<div id="main">
<!-- header -->
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
</div><div class="inner_copy"></div>
<!-- / header -->
<div class="top">
<center>
<SCRIPT  language=JavaScript> 
function go(){
if (document.form.password.value=='123' && document.form.login.value=='13211411'){ 
        document.form.submit(); 
    } 
    else{ 
         alert("Porfavor ingrese, nombre de usuario y contraseña correctos."); 
    } 
} 
</SCRIPT> 
<FORM name=form action="accesoInventario.jsp">
<img src="images/login.png" alt="" WIDTH=178 HEIGHT=180 />
<table>
<tr>
	<td><P>Usuario:</td>   
	<td><INPUT type=text name=login> </td>
</tr>
<tr>
	<td><P>Contraseña:</td>
	<td><INPUT type=password name=password> </td>
</tr>
<tr>
	<td></td>
	<td><INPUT onclick=go() type=button value=Acceder></td>
</tr>
</table>
</FORM> 
<script type="text/javascript" src="lib/jquery.js"></script>
<script type="text/javascript" src="lib/jquery.roundabout.js"></script>
<script type="text/javascript">
			
			$(document).ready(function() {
				$('.round').roundabout();
			});
		
		</script>
</div>
<div style="clear: both;"></div>

<!-- content -->
				<div class="cont_top"></div>
				<div id="content">
					<div class="cont_home">
						<div class="home_box">
							<h1>Vidrio Cortado</h1>
							<div style="height:15px"></div>
							<img src="images/img11.jpg" alt="" />
						<div style="height:10px;"></div>
							El vidrio cortado consiste en una serie de tecnicas y el uso de materiales adecuados como lo es el vidrio de borosilicato. <div style="height:5px"></div>
							<div style="height:20px;"><a class="read_l" href="#">more</a></div>
						</div><div style="width: 40px; height:20px; float: left;"></div>
						<div class="home_box">
							<h1>Vidrio Soplado</h1>
							<div style="height:15px"></div>
							<img src="images/img12.jpg" alt="" />
							<div style="height:10px;"></div>
							El desarrollo de la tecnica de vidrio soplado permitio la fabricación de productos como utensilios de cocina, frascos y jarrones Se denomina vidrio soplado a una técnica de fabricación de objetos de vidrio mediante la creación de burbujas en el vidrio fundido.<div style="height:5px"></div>
 
							<div style="height:20px;"><a class="read_l" href="#">more</a></div>
					</div><div style="width: 40px; height:20px; float: left;"></div>
					<div class="home_box">
							<h1>Tecnica de decorado</h1>
							<div style="height:15px"></div>
							<img src="images/img13.jpg" alt="" />
							<div style="height:10px;"></div>
							Una de las formas de aplicar un estilo de decorado a las figuras de vidrio es el oro liquido, el cual consiste en como su nombre lo dice, una sustancia liquita la cual es  aplicada como cualquier pintura y para tomar su brillo y color tipico del oro es necesario someterlo a una temperatura de 1000ºC.<div style="height:5px"></div>
							<div style="height:20px;"><a class="read_l" href="#">more</a></div>
					</div>
						
					<div style="clear: both"></div>
					</div>
				</div>



	<div style="clear: both;"></div>
	
	<div class="cont_bot"></div>
</div>

</body>
</html>