<%@ include file="header.jsp" %>
<div class="container">
    <div class="login-container">
        <h2 class="text-center mb-4">Faça seu Login</h2>

       <%
   			String msg = (String) request.getAttribute("mensagem");
			if(msg!=null){
				%> <h3><%=msg %></h3>
			<% }
	    %>

        <form action="Login" method="POST">
            <div class="mb-3">
                <label for="usuario" class="form-label">Usuário</label>
                <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Insira seu usuário" required>
            </div>
            <div class="mb-3">
                <label for="senha" class="form-label">Senha</label>
                <input type="password" class="form-control" id="senha" name="senha" placeholder="Insira sua senha" required>
            </div>
            <div class="d-grid">
                <button type="submit" class="btn btn-success">Entrar</button>
            </div>
        </form>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<%@ include file="footer.jsp" %>