<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="br.edu.ifsp.arq.model.Usuario" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
    Usuario usuario = (Usuario) session.getAttribute("usuario");
    if (usuario == null) {
        response.sendRedirect("index.jsp");
        
    }
%>

<h2>Bem-vindo, <%= usuario.getUsuario() %>!</h2>


<%
    String sessionId = session.getId();
%>

<p>ID da sessão: <%= sessionId %></p>



	<form action="Logout" method="POST">
		<button type="submit">Sair</button>
	</form>
</body>
</html>
