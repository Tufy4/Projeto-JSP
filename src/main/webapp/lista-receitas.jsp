<%@ include file="header.jsp" %>

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
	            	<a href="Receita?id=<%=receita.getId() %>">
	                	<img src="<%= receita.getFotoPath() %>" class="card-img-top" alt="Foto da receita <%= receita.getNomeReceita() %>" style="max-height: 200px; object-fit: cover;">
	                </a>
	                <div class="card-body">
	                    <h5 class="card-title"><%= receita.getNomeReceita() %></h5>
	                    <h6 class="card-subtitle mb-2 text-muted">Autor: <%= receita.getAutor() %></h6>
	                    <p class="card-text">
	                        <strong>Tempo de preparo:</strong> <%= receita.getTempo() %><br>
	                        <strong>Categoria:</strong> <%= receita.getCategoria() %>
	                    </p>
	                </div>
	                <div class="card-footer d-flex justify-content-between">
	                    <a href="/Projeto-Receitas/UpdateReceitaServlet?id=<%= receita.getId() %>" class="btn btn-sm btn-dark">Editar</a>
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

<%@ include file="footer.jsp" %>
