<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Lista de Receitas</title>
</head>
<body>

<h1>Lista de Receitas</h1>


<c:if test="${empty listaReceitas}">
    <p>Não há receitas cadastradas.</p>
</c:if>


<c:if test="${not empty listaReceitas}">
    <table border="1">
        <thead>
            <tr>
                <th>Nome</th>
                <th>Autor</th>
                <th>Tempo de Preparo</th>
                <th>Categoria</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="receita" items="${listaReceitas}">
                <tr>
                    <td>${receita.nomeReceita}</td>
                    <td>${receita.autor}</td>
                    <td>${receita.tempo}</td>
                    <td>${receita.categoria}</td>
                    <td>
                        <a href="/Projeto-Receitas/UpdateReceitaServlet?id=${receita.id}">Editar</a> | 
                        <a href="/Projeto-Receitas/DeleteReceitaServlet?id=${receita.id}">Deletar</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</c:if>

<br>
<a href="/Projeto-Receitas/index.jsp">Adicionar Nova Receita</a>

</body>
</html>
