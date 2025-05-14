<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Página Inicial - Sistema de Receitas</title>
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

<%
  
    if (session.getAttribute("usuarioNome") == null) {
       
        response.sendRedirect("login.jsp");
    } 


%>

<header>
    <h1>Sistema de Receitas</h1>
</header>


<nav>
    <a href="index.jsp">Home</a>
    <a href="sobre.jsp">Sobre o Sistema</a>
    <a href="login.jsp">Login</a>
    <a href="CadastrarReceitas.jsp">Cadastrar Receitas</a>
    
    <a>Sair</a>
</nav>

<div class="container">
    <h2>Adicionar Receita</h2>
    <form action="CreateReceitaServlet" method="post">
        <label for="nome">Nome da Receita:</label>
        <input type="text" id="nome" name="nome" required>

        <label for="autor">Autor:</label>
        <input type="text" id="autor" name="autor" required>

        <label for="tempo">Tempo de Preparo (em minutos):</label>
        <input type="text" id="tempo" name="tempo" required>

        <label for="ingredientes">Ingredientes:</label>
        <textarea id="ingredientes" name="ingredientes" required></textarea>

        <label for="modo">Modo de Preparo:</label>
        <textarea id="modo" name="modo" required></textarea>

        <label for="categoria">Categoria:</label>
        <select id="categoria" name="categoria" required>
            <option value="sobremesa">Sobremesa</option>
            <option value="pratoPrincipal">Prato Principal</option>
            <option value="entrada">Entrada</option>
        </select>

        <label for="avaliacao">Avaliação:</label>
        <input type="number" id="avaliacao" name="avaliacao" min="1" max="5" required>

        <button type="submit">Adicionar Receita</button>
    </form>
</div>

</body>
</html>
