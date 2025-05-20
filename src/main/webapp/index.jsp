<%@ include file="header.jsp" %>



    <!--NOVIDADES DA SEMANA-->
    <div class="container mt-5">
        <h2>NOVIDADES DA SEMANA</h2>

        <!-- Carrossel de Receitas em Destaque -->
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <!-- Novidade 1 -->
                <div class="carousel-item active">
                    <img src="images/plantBased.jpg" class="d-block w-100" alt="Novidade 1" data-bs-toggle="modal"
                        data-bs-target="#novidadeModal1">
                    <div class="carousel-caption d-block d-md-block text-start bg-dark bg-opacity-50 rounded p-3">
                        <h5 class="h5">Cozinha Plant-Based (Baseada em Plantas)</h5>
                    </div>
                </div>
                <!-- Novidade 2 -->
                <div class="carousel-item">
                    <img src="images/tecnologiaNaCozinha.jpg" class="d-block w-100" alt="Novidade 2"
                        data-bs-toggle="modal" data-bs-target="#novidadeModal2">
                    <div class="carousel-caption d-block d-md-block text-start bg-dark bg-opacity-50 rounded p-3">
                        <h5 class="h5">Tecnologia na Cozinha</h5>
                    </div>
                </div>
                <!-- Novidade 3 -->
                <div class="carousel-item">
                    <img src="images/cozinhaFuncional.jpg" class="d-block w-100" alt="Receita 3" data-bs-toggle="modal"
                        data-bs-target="#novidadeModal3">
                    <div class="carousel-caption d-block d-md-block text-start bg-dark bg-opacity-50 rounded p-3">
                        <h5 class="h5">Cozinha Funcional: Alimentação que Cuida do Corpo e da Mente</h5>
                    </div>
                </div>
            </div>

            <!-- BotÃµes de navegaÃ§Ã£o -->
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">PrÃ³ximo</span>
            </button>
        </div>

        <!-- Modais com o conteÃºdo completo das novidades -->
        <!-- Modal 1 -->
        <div class="modal fade" id="novidadeModal1" tabindex="-1" aria-labelledby="novidadeModal1Label"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="novidadeModal1Label">Cozinha Plant-Based (Baseada em Plantas)</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        A cozinha plant-based estão em alta, com alternativas vegetais cada vez mais sofisticadas.
                        Descubra como
                        você pode transformar seus pratos do dia a dia com opções sustentáveis e saudáveis.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 2 -->
        <div class="modal fade" id="novidadeModal2" tabindex="-1" aria-labelledby="novidadeModal2Label"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="novidadeModal2Label">Tecnologia na Cozinha</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        A tecnologia na cozinha estão transformando a maneira como preparamos alimentos, desde utensilios
                        até
                        sistemas automatizados. Explore as novas ferramentas que estão facilitando a vida na cozinha.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 3 -->
        <div class="modal fade" id="novidadeModal3" tabindex="-1" aria-labelledby="novidadeModal3Label"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="novidadeModal3Label">Cozinha Funcional: Alimentação que Cuida do
                            Corpo e da Mente</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        A cozinha funcional está em alta em 2025, combinando sabor e benefí­cios a  saúde. Alimentos que
                        oferecem
                        propriedades que auxiliam na melhora da saúde mental e física.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Receitas Populares -->
    <div class="container mt-5">
        <h2 class="text-center mb-4">RECEITAS POPULARES</h2>
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
            <!-- Card de Receita -->
            <div class="col">
                <div class="card h-100">
                    <img src="images/receita1.jpg" class="card-img-top" alt="Imagem da Receita">
                    <div class="card-body">
                        <h5 class="card-title text-center">Nome da Receita</h5>
                        <p class="card-text">Descrição breve da receita.</p>
                        <button class="btn btn-primary w-100 mt-3" data-bs-toggle="modal"
                            data-bs-target="#modalReceita1">
                            Ver Receita
                        </button>
                    </div>
                    <div class="card-footer text-muted d-flex justify-content-between align-items-center">
                        <small>Tempo de Preparo: A definir</small>
                        <small class="text-muted">Categoria: A definir</small>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal da Receita -->
    <div class="modal fade" id="modalReceita1" tabindex="-1" aria-labelledby="modalReceitaLabel1" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalReceitaLabel1">Nome da Receita</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fechar"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <img src="images/receita1.jpg" class="img-fluid" alt="Imagem da Receita">
                        </div>
                        <div class="col-md-6">
                            <p><strong>Autor:</strong> Nome do Autor</p>
                            <p><strong>Tempo de Preparo:</strong> A definir</p>
                            <p><strong>Rendimento:</strong> A definir</p>
                            <p><strong>Categoria:</strong> A definir</p>
                        </div>
                    </div>
                    <h5>Ingredientes</h5>
                    <ul>
                        <li>Ingrediente 1</li>
                        <li>Ingrediente 2</li>
                        <li>Ingrediente 3</li>
                        <!-- Adicione mais ingredientes conforme necessÃ¡rio -->
                    </ul>
                    <h5>Modo de Preparo</h5>
                    <ol>
                        <li>Passo 1</li>
                        <li>Passo 2</li>
                        <li>Passo 3</li>
                        <!-- Adicione mais passos conforme necessÃ¡rio -->
                    </ol>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>

   
   
  <%@ include file="footer.jsp" %>