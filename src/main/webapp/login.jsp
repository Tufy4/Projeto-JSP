    
<%@page import="java.awt.geom.Path2D"%>
<%@ page import="br.edu.ifsp.arq.model.Usuario" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
  body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }
    header {
        background-color: #333;
        color: white;
        padding: 10px 0;
        text-align: center;
    }
    nav {
        background-color: #555;
        overflow: hidden;
    }
    nav a {
        color: white;
        padding: 14px 20px;
        text-decoration: none;
        display: inline-block;
    }
    nav a:hover {
        background-color: #ddd;
        color: black;
    }
</style>
</head>
<body>
<header>
    <h1>Sistema de Receitas</h1>
</header>
<nav>
    <a href="index.jsp">Home</a>
    <a href="sobre.jsp">Sobre o Sistema</a>
    <a href="login.jsp">Login</a>
    <a href="CadastrarReceitas.jsp">Cadastrar Receitas</a>
</nav>

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