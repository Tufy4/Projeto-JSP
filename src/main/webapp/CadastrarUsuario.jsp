<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Cadastro Usuario - Sistema de Receitas</title>
<style>
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
    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: white;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    form input, form select, form textarea {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        cursor: pointer;
        font-size: 16px;
        border-radius: 5px;
    }
    button:hover {
        background-color: #45a049;
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
     <a href="/Projeto-Receitas/ReadReceitaServlet">Receitas</a>
    <a href="login.jsp">Login</a>
   
</nav>

<div class="container">
    <h2>Cadastrar Usuario</h2>
    <form action="CreateUsuarioServlet" method="post">
    
        <label for="nome">Nome</label>
        <input type="text" id="nome" name="nome" required>
		
        <label for="password">Senha</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Cadastrar</button>
    </form>
</div>

</body>
</html>
