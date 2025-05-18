<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="br.edu.ifsp.arq.model.Receita" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Lista de Receitas</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
    header {
        background-color: #333;
        color: white;
        padding: 10px 0;
        text-align: center;
    }
    nav {
        background-color: #555;
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

<nav class="navbar navbar-expand-lg" style="background-color: #555;">
    <div class="container">
        <a class="navbar-brand text-white" href="#">Receitas</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon" style="filter: invert(1);"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link text-white" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="sobre.jsp">Sobre o Sistema</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="login.jsp">Login</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="CadastrarReceitas.jsp">Cadastrar Receitas</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="/Projeto-Receitas/ReadReceitaServlet">Receitas</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="Logout">Sair</a></li>
          
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
<%
ArrayList<Receita> lista = (ArrayList<Receita>) request.getAttribute("listaReceitas");


    if (lista == null || lista.isEmpty()) {
%>
    <div class="alert alert-warning" role="alert">
        Não há receitas cadastradas.
    </div>
<%
    } else {
%>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
<%
        for (Receita receita : lista) {
%>
        <div class="col">
            <div class="card h-100">
                <img src="<%= receita.getFotoPath() %>" class="card-img-top" alt="Foto da receita <%= receita.getNomeReceita() %>" style="max-height: 200px; object-fit: cover;">
                <div class="card-body">
                    <h5 class="card-title"><%= receita.getNomeReceita() %></h5>
                    <h6 class="card-subtitle mb-2 text-muted">Autor: <%= receita.getAutor() %></h6>
                    <p class="card-text">
                        <strong>Tempo de preparo:</strong> <%= receita.getTempo() %><br>
                        <strong>Categoria:</strong> <%= receita.getCategoria() %>
                    </p>
                </div>
                <div class="card-footer d-flex justify-content-between">
                    <a href="/Projeto-Receitas/UpdateReceitaServlet?id=<%= receita.getId() %>" class="btn btn-sm btn-primary">Editar</a>
                    <a href="/Projeto-Receitas/DeleteReceitaServlet?id=<%= receita.getId() %>" class="btn btn-sm btn-danger">Deletar</a>
                </div>
            </div>
        </div>
<%
        }
%>
    </div>
<%
    }
%>

    <div class="mt-4">
        <a href="/Projeto-Receitas/CadastrarReceitas.jsp" class="btn btn-success">Adicionar Nova Receita</a>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
