<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Algo deu errado - Página de Erro</title>
    <!-- Link para o Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Centraliza a página inteira */
        html, body {
            height: 100%; /* Garante que a altura ocupe toda a tela */
            margin: 0;
            font-family: Arial, sans-serif;
        }

        /* Estilo para centralizar a imagem e o texto dentro da tela */
        .error-page {
            display: flex;
            justify-content: center; /* Centraliza horizontalmente */
            align-items: center;     /* Centraliza verticalmente */
            height: 100vh;           /* Usa 100% da altura da tela */
            text-align: left;        /* Para o texto alinhar à esquerda da imagem */
            padding: 20px;           /* Adiciona um pouco de espaço nas bordas */
        }

        .error-page img {
            width: 150px; /* Ajuste o tamanho do ícone conforme necessário */
            height: auto;
            margin-right: 20px; /* Espaço entre a imagem e o texto */
            animation: bounce 1s infinite; /* Animação de pulso */
        }

        /* Animação de "pulsar" na imagem */
        @keyframes bounce {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.1);
            }
            100% {
                transform: scale(1);
            }
        }

        /* Estilo para o texto de erro */
        .message h1 {
            color: #ff4d4d; /* Cor vermelha para indicar erro */
            font-size: 2rem;
            font-weight: bold;
        }

        .message p {
            font-size: 1.2rem;
            color: #333;
        }

        .message {
            max-width: 500px; /* Limitar a largura da mensagem */
            border-left: 5px solid #ff4d4d; /* Borda vermelha à esquerda */
            padding-left: 20px;
            margin-left: 20px;
        }

        .btn-primary {
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="error-page">
            <!-- Ícone de Ovo Quebrado -->
            <img src="https://static.thenounproject.com/png/897391-200.png" alt="Ovo Quebrado" />
            <div class="message">
                <h1>Algo deu errado!</h1>
                <p>Desculpe, encontramos um erro inesperado. Tente novamente ou volte para a p�gina inicial para tentar outra coisa.</p>
                <a href="index.jsp" class="btn btn-primary">Voltar para a p�gina inicial</a>
            </div>
        </div>
    </div>

    <!-- Scripts do Bootstrap 5 -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>

</html>
