    
<%@page import="java.awt.geom.Path2D"%>
<%@ page import="br.edu.ifsp.arq.model.Usuario" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<%
   String msg = (String) request.getAttribute("mensagem");
	if(msg!=null){
		%> <h3><%=msg %></h3>
	<% }
%>

	<h1>Faça seu Login</h1>
	
	<form action="Login" method="POST">
		<label>Usuario</label>
		<input type="text" placeholder ="Insira seu usuario" name ="usuario">
		<label>Senha</label>
		<input type="password" placeholder ="Insira sua senha" name ="senha">
		<input type="submit" value="Enviar">
	</form>
	

</body>
</html>