<%@ include file="header.jsp" %>

<!-- Conteúdo Principal -->
<div class="container mt-5">
  <h1 class="text-center mb-4">Sobre o Sistema</h1>

  <!-- Parágrafo de introdução -->
  <p class="lead text-center mb-4">
    Bem-vindo ao Gerenciador de Receitas Culinárias! Este sistema foi desenvolvido para facilitar o cadastro, visualização, edição e remoção de receitas culinárias por usuários registrados.
  </p>
  
  <!-- Seção de Funcionalidades -->
  <div class="row">
    <div class="col-lg-6 mb-4">
      <h3>Funcionalidades Principais</h3>
      <ul class="list-group list-group-flush">
        <li class="list-group-item"><strong>Cadastro de Novas Receitas:</strong> Usuários registrados podem adicionar novas receitas, incluindo nome, autor, tempo de preparo, ingredientes, modo de preparo, categoria, rendimento e avaliação.</li>
        <li class="list-group-item"><strong>Visualização de Receitas:</strong> Todos os usuários podem visualizar as receitas cadastradas, com detalhes completos de cada uma.</li>
        <li class="list-group-item"><strong>Edição e Remoção de Receitas:</strong> Usuários registrados podem editar ou excluir receitas que cadastraram anteriormente.</li>
        <li class="list-group-item"><strong>Busca Avançada:</strong> O sistema oferece uma barra de busca para facilitar a localização de receitas específicas.</li>
        <li class="list-group-item"><strong>Interface Responsiva:</strong> O design do sistema é responsivo, garantindo uma boa experiência em dispositivos móveis e desktops.</li>
      </ul>
    </div>

    <!-- Seção de Objetivo -->
    <div class="col-lg-6">
      <h3>Objetivo do Sistema</h3>
      <p>
        O objetivo principal deste sistema é proporcionar uma plataforma colaborativa onde usuários possam compartilhar suas receitas culinárias, aprender novas preparações e organizar suas receitas favoritas de forma prática e eficiente.
      </p>
    </div>
  </div>

  <!-- Chamada para Ação -->
  <p class="text-center mt-4">
    <a href="CadastrarUsuario.jsp" class="btn btn-success">Comece Agora e Faça seu Cadastro</a>
  </p>
</div>

<!-- Scripts do Bootstrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<%@ include file="footer.jsp" %>

</body>
</html>
