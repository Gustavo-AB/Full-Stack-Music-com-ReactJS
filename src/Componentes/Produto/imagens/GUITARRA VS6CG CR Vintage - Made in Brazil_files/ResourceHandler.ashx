/* FRETE CARRINHO */
.fbits-carrinho-tr-frete td {
    border-bottom: 0 none;
}

tr.fbits-carrinho-tr-frete-calculo td {
    border-bottom: 0 none !important;
    padding: 0 0 0 380px !important;
    text-align: left;
}

.freteDropDown {
    height: 20px;
    position: relative;
}

    .freteDropDown #prazoEntregaExibicao::after {
        border-left: 4px solid transparent;
        border-right: 4px solid transparent;
        border-top: 4px solid #000;
        content: "";
        display: inline-block;
        height: 0;
        margin-left: 5px;
        vertical-align: middle;
        width: 0;
    }

    .freteDropDown #prazoEntregaExibicao {
        background: none repeat scroll 0 0 #ddd;
        border-radius: 3px;
        color: #222;
        cursor: pointer;
        font-size: 12px;
        margin-left: 846px;
        margin-top: -10px;
        padding: 2px 5px;
        position: absolute;
    }

    .freteDropDown ul#opcoesFrete {
        background-clip: padding-box;
        background-color: #fff;
        border: 1px solid rgba(0,0,0,0.2);
        border-radius: 6px;
        box-shadow: 0 5px 10px rgba(0,0,0,0.2);
        font-size: 12px;
        right: 17px;
        line-height: 22px;
        list-style: outside none none;
        margin-top: 8px;
        max-width: 400px;
        min-width: 160px;
        padding: 5px 7px 5px 8px;
        position: absolute;
        text-align: left;
        z-index: 1000;
    }

        .freteDropDown ul#opcoesFrete > li {
            cursor: pointer;
            padding-left: 23px;
            padding-right: 3px;
        }

    .freteDropDown .freteSelecionado {
        background: url("../i/ok.png") no-repeat scroll 1px 3px;
    }

.freteLista {
    padding-bottom: 20px;
    padding-top: 60px;
}

    .freteLista > div:first-child {
        display: table;
        width: 100%;
    }

        .freteLista > div:first-child div {
            color: #4ca702;
            display: inline-block;
            font-size: 16px;
            font-weight: bold;
            height: 20px;
            line-height: 31px;
            margin-bottom: 10px;
            margin-left: 2px;
            margin-right: 0px;
            padding-right: 0;
            text-align: left;
            width: 274px;
        }

            .freteLista > div:first-child div:first-child {
                width: 0;
            }

            .freteLista > div:first-child div:last-child {
                padding-left: 0;
                padding-right: 0;
            }

    .freteLista div[id^="opcaoFrete"] {
        background: #f9f9f9;
        display: table;
        padding: 5px 0 5px 44px;
        width: 100%;
    }


        .freteLista div[id^="opcaoFrete"] > div {
            border-color: #aaa;
            border-image: none;
            border-style: solid none;
            border-width: 1px medium;
            display: inline-block;
            margin-left: -5px;
            padding: 8px;
            text-align: left;
            width: 265px;
        }

            .freteLista div[id^="opcaoFrete"] > div:first-child {
                border-left: 1px solid #aaa;
                height: 17px;
                margin-left: -61px;
                margin-top: 0;
                position: absolute;
                width: 56px;
            }

            .freteLista div[id^="opcaoFrete"] > div:last-child {
                border-right: 1px solid #9ab9c7;
            }

#resultadoFrete .freteLista div[id^="opcaoFrete"] {
    background: none repeat scroll 0 0;
    display: table;
    padding: 0;
    width: 100%;
    border: 0;
    margin-bottom: 8px;
}
/*Pagina Produto*/
.details {
    margin-bottom: 12px;
}

.details, .summary, .summaryDesktop {
    display: block;
}

.summary, .summaryDesktop {
    color: #666;
    cursor: pointer;
    display: block;
    font-size: 13px;
    margin-bottom: 9px;
    margin-left: 2px;
    margin-top: 24px;
    text-decoration: underline;
}

.prodVariante .summaryDesktop, #ulFrete .summaryDesktop {
    color: #666;
    font-size: 12px;
    margin-bottom: 13px;
    margin-top: 7px !important;
    padding-left: 11px;
}

    .prodVariante .summaryDesktop::before, #ulFrete .summaryDesktop::before {
        border-bottom: 6px solid transparent;
        border-left: 7px solid #666;
        border-top: 6px solid transparent;
        content: "";
        display: inline-block;
        height: 0;
        line-height: 1px;
        margin-left: -10px;
        padding-left: 6px;
        position: absolute;
    }

.details .details-content {
    display: none;
}

.colunaProduto .fbits-produto-imagensMinicarrossel-item {
    display: inline-block !important;
    position: relative !important;
    width: 77px !important;
}

.fbits-produto-imagensMinicarrossel-item {
    display: inline-block;
}

.bread-nao-encontrada {
    border-radius: 4px;
    color: #222;
    font-size: 11px;
    margin: 0 auto !important;
    padding-bottom: 5px;
    padding-top: 5px;
    text-align: center;
    width: 300px;
}

    .bread-nao-encontrada a {
        color: #333;
    }

.image404, .text404, .title404 {
    text-align: center;
}

.title404 {
    color: #888;
    font-size: 20px;
    margin-top: 20px;
    margin-bottom: 9px;
}

.text404 {
    color: #888;
    font-size: 14px;
}

.filtroRange {
    padding: 15px;
}

.rangeValores {
    margin-bottom: 9px;
    margin-top: 9px;
    padding-bottom: 19px;
}

    .rangeValores input:first-child {
        color: #626362;
        display: inline;
        float: left;
        width: 49%;
        font-size: 11px;
    }

    .rangeValores input:last-child {
        color: #626362;
        display: inline;
        float: right;
        text-align: right;
        width: 49%;
        font-size: 11px;
    }

.numeroCartaoCredito {
    font-size: 25px;
    width: 288px;
}

.input.normal.numeroCartaoCredito {
    width: 146px;
    font-size: 15px;
    float: left;
    margin-bottom: 10px;
}

.fbits-cartao-credito-erros {
    color: red;
    font-size: 12px;
    line-height: 17px;
}

.bandeiras {
    float: left;
    margin-bottom: 14px;
    width: 240px;
}

.fbits-pedido-pagamento-template2 .bandeiras {
    width: 100% !important;
}

    .fbits-pedido-pagamento-template2 .bandeiras .bandeira {
        display: inline-block;
        height: 40px;
        width: 80px !important;
    }

.fbits-cartao-credito-erros {
    color: red;
    font-size: 12px;
    line-height: 17px;
}

.fbits-pedido-pagamento-template2 .bandeiras .bandeira.inativa {
    opacity: 0.3;
}

.pagamento .fbits-pedido-pagamento-template2 .nomeCartao {
    font-size: 15px;
}

.pagamento .fbits-pedido-pagamento-template2 .validade {
    font-size: 15px;
    width: 80px;
}

.fbits-produtos-acessados-item {
    float: left;
    width: 50%;
}

    .fbits-produtos-acessados-item .iMarcaLinha {
        display: none;
    }

.produtosAcessados img {
    display: table-cell;
    float: left;
    padding-right: 10px;
    width: 50px;
}

.produtosAcessados a {
    color: #535353;
    display: table;
    margin-bottom: 5px;
}

.produtosAcessados.produtosAcessadosGrid {
    width: 468px;
}

.fbits-produtos-acessados-texto {
    font-size: 10px;
    height: 40px;
    line-height: 1.4em;
    overflow: hidden;
}

.filtroRange {
    padding: 15px;
}

.rangeValores {
    margin-bottom: 9px;
    margin-top: 9px;
    padding-bottom: 19px;
}

    .rangeValores input:first-child {
        color: #626362;
        display: inline;
        float: left;
        width: 49%;
        font-size: 11px;
    }

    .rangeValores input:last-child {
        color: #626362;
        display: inline;
        float: right;
        text-align: right;
        width: 49%;
        font-size: 11px;
    }

.spotImg:hover .imagem-primaria {
    display: none !important;
}

.spotImg .imagem-secundaria {
    display: none !important;
}

.spotImg:hover .imagem-secundaria {
    display: block !important;
}

@media (hover: none) {
    .spotImg:hover .imagem-primaria {
        display: block !important;
    }

    .spotImg:hover .imagem-secundaria {
        display: none !important;
    }
}

.mensagem-revendedor {
    background: none repeat scroll 0 0 #911314;
    border-radius: 6px;
    color: white;
    font-size: 14px;
    font-weight: bold;
    opacity: 0.9;
    padding: 10px;
}

.spot .fb_iframe_widget iframe {
    height: 21px !important;
    width: 90px !important;
}

.spot .fb_iframe_widget > span {
    overflow: hidden !important;
}

.mensagem-revendedor-aguarde {
    color: coral;
    font-size: 14px;
    font-weight: bold;
    margin-bottom: 16px;
}

.labelRevendedor > label {
    text-align: left;
    width: 440px;
}

.cadNews {
    line-height: 26px;
    margin-left: 112px;
}

.spotAutor, .spotEditora, .spotGenero {
    color: #666;
}

.fbits-produtos-acessados-texto {
    font-size: 10px;
    height: 40px;
    overflow: hidden;
    line-height: 1.4em;
}

.fbits-produtos-acessados-item {
    float: left;
    width: 50%;
}

.fbits-produto-imagens .jcarousel-container-horizontal {
    margin-left: 33px;
    overflow: hidden;
    width: auto;
}

.fbits-produto-imagens .jcarousel-prev-horizontal {
    background: url("../i/icons.png") repeat scroll -130px -35px;
    cursor: pointer;
    height: 88px;
    left: -12px;
    position: absolute;
    top: 443px;
    width: 50px;
}

.fbits-produto-imagens .jcarousel-next-horizontal {
    background: url("../i/icons.png") repeat scroll -181px -37px;
    cursor: pointer;
    height: 88px;
    position: absolute;
    right: -38px;
    top: 444px;
    width: 50px;
}

.matriz-atributos-aviseMe > a {
    color: #555;
    font-size: 10px;
}

    .matriz-atributos-aviseMe > a:hover {
        text-decoration: underline;
    }

.matriz-atributos-aviseMe, .matriz-atributos-inexistente {
    text-align: center;
}

.matriz-atributos-quantidade {
    min-width: 50px;
    position: relative;
    text-align: center;
}

table.produto-matriz-atributos td input[type="text"] {
    border: 1px solid #bababa;
    border-radius: 0;
    box-shadow: 3px 3px 15px -1px #cbcbcb inset;
    height: 24px;
    line-height: 22px;
    padding-left: 2px;
    vertical-align: middle;
    width: 32px;
}

#fbits-produto-matriz-atributos img {
    border: 1px solid #ccc;
    height: auto;
    width: 50px;
}

.titulo-vertical {
    line-height: 28px;
}

#fbits-produto-matriz-atributos tr:nth-of-type(2n) {
    background: none repeat scroll 0 0 #f5f5f5;
}

.produto-matriz-atributos tr th:first-child {
    max-width: 52px;
    font-size: 10px;
}

.matriz-atributos-inexistente {
    color: #ccc;
    font-size: 19px;
}

table.produto-matriz-atributos td input[type="text"].quantidade-falha {
    border-color: red !important;
}

.matriz-grupo-alterar-quantidade span, .cartItem .fbits-campo-quantidade a {
    background: none repeat scroll 0 0 #eee;
    border-bottom: 1px solid #ccc;
    border-left: 1px solid #ccc;
    color: #222;
    display: block;
    font-family: monospace;
    font-size: 14px;
    font-weight: bold;
    height: 11px;
    line-height: 11px;
    text-align: center;
    width: 11px;
}

    .matriz-grupo-alterar-quantidade span:hover, .cartItem .fbits-campo-quantidade a:hover {
        background: #fff;
    }

.matriz-atributos-quantidade {
    min-width: 50px;
}

.matriz-grupo-alterar-quantidade > a {
    display: block;
}

.produto-matriz-atributos {
    width: 100%;
}

.matriz-grupo-alterar-quantidade {
    display: inline-block;
    margin-left: -17px;
    position: relative;
    top: 7px;
}

.matriz-zoom-atributo {
    position: absolute;
    border: 1px solid black;
}

body.banner-background .center.menu-container {
    background: none;
    padding-top: 0;
}

body.banner-background ul.menu {
    width: 1000px;
    background: #fff;
    padding-left: 10px;
}

body.banner-background .content {
    background: none;
}

    body.banner-background .content.categoria > .center, body.banner-background .content.busca > .center, body.banner-background .content.fabricante > .center {
        background: none;
        padding: 0 15px 15px;
    }

body.banner-background .ie9 .content .center, body.banner-background .ie8 .content .center {
    background: none;
    filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#CCffffff', endColorstr='#CCffffff');
}

body.banner-background .copyright {
    padding-bottom: 20px;
}

body.banner-background .head {
    height: 142px;
    background: none;
}

    body.banner-background .head > .center {
        background: #fff;
        height: 114px;
        padding-left: 5px;
        padding-right: 5px;
    }

body.banner-background .content.categoria {
    border-top: none;
}

    body.banner-background .content.categoria .interna.cf {
        background: #fff;
        padding-left: 5px;
        padding-right: 5px;
        padding-top: 7px;
    }

    body.banner-background .content.categoria .fbits-banner-topo {
        text-align: center;
    }

body.banner-background .fbits-content-topo .bread {
    background: none repeat scroll 0 0 #fff;
    margin-left: -5px;
    padding-left: 5px;
    width: 1005px;
}

body.banner-background .fbits-layout-item, body.banner-background .fbits-layout-categoria {
    background: #fff;
}

body.banner-background .content.home .center .fbits-layout-home .fbits-layout-item:first-child {
    background: none;
}

body.banner-background .content.home {
    border-top: 1px solid transparent;
}

.confirmacao-assinatura {
    clear: both;
}

    .confirmacao-assinatura h2 {
        margin-bottom: 20px;
        margin-top: 20px;
    }

.tooltip-assinatura > span {
    background: none repeat scroll 0 0 #ddd;
    border-radius: 3px;
    box-shadow: 1px 1px 3px #777;
    display: block;
    left: 21px;
    padding: 3px;
    position: absolute;
    top: -2px;
    white-space: nowrap;
}

.tooltip-assinatura:hover > span {
    display: block;
}

.tooltip-assinatura {
    display: inline-block;
    position: relative;
}

.listacompra-comprarselecionados {
    background: none repeat scroll 0 0 #999;
    box-shadow: 0 -3px 0 #666 inset;
    color: #fff;
    font-size: 18px;
    height: 30px;
    line-height: 29px;
    margin-bottom: 10px;
    cursor: pointer;
    text-align: center;
}

#listaProdutos {
    margin-bottom: 10px;
}

.listacompra-produtos-imagem {
    border: 1px solid #ddd;
    float: left;
    margin-right: 5px;
}

.listacompra-produtos-item {
    border-bottom: 1px dashed #ccc;
    clear: both;
    margin-bottom: 7px;
    min-height: 76px;
    padding-bottom: 5px;
}

    .listacompra-produtos-item input[type="checkbox"] {
        display: inline-block;
        float: left;
        margin-bottom: 6px;
        margin-right: 5px;
    }

.listacompra-produtos-nome {
    font-size: 11px;
    font-weight: bold;
    margin-left: 0;
    padding-bottom: 5px;
    top: -2px;
}

.listacompra .prodTitle {
    margin-left: 0;
    margin-top: 10px;
    width: 282px;
}

.listacompra .fbits-calculafrete {
    display: none;
}

.listacompra-descricao {
    clear: both;
}

.fbits-indicar {
    float: left;
    width: 486px;
    padding-top: 5px;
}

.fbits-imagensMinicarrossel-item {
    float: left;
    margin-bottom: 18px;
    margin-right: 5px;
}

.content.listacompra {
    padding-top: 10px;
}

.listacompra-produtos-atributo {
    border: 1px solid #888;
    display: inline-block;
    height: 25px;
    line-height: 25px;
    margin-right: 4px;
    text-align: center;
    width: 27px;
    margin-bottom: 4px;
}

.listacompra-produtos-atributos-opcao {
    border: 1px solid #888;
    display: inline-block;
    height: 25px;
    line-height: 25px;
    margin-right: 4px;
    text-align: center;
    width: 27px;
    margin-bottom: 4px;
    cursor: pointer;
}

.listacompra-produtos-atributos {
    clear: both;
    padding-left: 76px;
    width: 180px;
}

.listacompra-produtos-atributos-opcao.selecionado {
    background: none repeat scroll 0 0 #ddd;
    border: 1px solid #666;
}

.listacompra-produtos-atributos-titulo {
    font-weight: bold;
    margin-bottom: 3px;
}

.listacompra-produtos-precopor {
    color: #333;
    font-weight: bold;
    margin-bottom: 1px;
}

.listacompra-produtos-parcelamento {
    font-size: 11px;
}

.listacompra-produtos-atributos-mensagem {
    color: red;
    font-size: 10px;
    margin-bottom: 3px;
    margin-top: -3px;
}

.fbits-componente-listacompra-preco-por {
    color: #2b2b2c;
    font-size: 19px;
    font-weight: bold;
    margin: 5px 0;
    width: 250px;
}

.fbits-componente-listacompra-preco-de {
    color: #898989;
    font-size: 11px;
    height: 13px;
    line-height: 13px;
    margin-top: 7px;
    text-decoration: line-through;
    display: block;
}

.fbits-hotsite .fbits-estatica-esquerda {
    float: left;
    width: 200px;
}

.fbits-hotsite .fbits-estatica-conteudo {
    float: right;
    width: 780px;
}

.fbits-conteudo-rodape {
    clear: both;
}

.tooltip-assinatura > span {
    background: none repeat scroll 0 0 #ddd;
    border-radius: 3px;
    box-shadow: 1px 1px 3px #777;
    display: none;
    left: 21px;
    padding: 3px;
    position: absolute;
    top: -2px;
    white-space: nowrap;
}

.tooltip-assinatura:hover > span {
    display: block;
}

.tooltip-assinatura {
    display: inline-block;
    position: relative;
}

.spotTamanhos {
    position: relative;
}

.cartTotal td {
    white-space: nowrap;
}

.colunaProduto, .coluna-listacompra {
    float: left;
    min-height: 380px;
    position: relative;
}

    .colunaProduto .prazo-entrega, .prazo-entrega-item, .coluna-listacompra .prazo-entrega {
        background: none repeat scroll 0 0 #eef8fe;
        border: 1px solid #eee;
        color: #777;
        font-size: 10px;
        line-height: 15px;
        margin-bottom: 10px;
        margin-top: 10px;
        padding: 6px 2px 6px 7px;
        text-align: left;
    }

.modalAdicionar .colunaProduto, .modalAdicionar .coluna-listacompra {
    min-height: 468px;
}

.colunaProduto .slidesjs-container .slidesjs-control, .coluna-listacompra .slidesjs-container .slidesjs-control {
    height: 76px;
    width: 1000px;
}

.colunaProduto .fbits-produto-imagensMinicarrossel-item, .coluna-listacompra .fbits-produto-imagensMinicarrossel-item {
    display: inline-block;
    position: relative;
    width: 77px;
}

.coluna-listacompra .slidesjs-previous, .coluna-listacompra .slidesjs-next {
    margin-top: -90px;
    top: auto;
}

.colunaProduto .slidesjs-previous, .coluna-listacompra .slidesjs-previous {
    left: -40px;
    top: auto;
}

.colunaProduto .slidesjs-pagination, .coluna-listacompra .slidesjs-pagination {
    display: none;
}

.colunaProduto .precoParcela, .coluna-listacompra .precoParcela {
    margin-bottom: 9px;
}

.listacompra-comprarselecionados {
    background: none repeat scroll 0 0 #5a981c;
    box-shadow: 0 -3px 0 #4d8118 inset;
    color: #fff;
    font-size: 18px;
    height: 30px;
    line-height: 29px;
    margin-bottom: 10px;
    cursor: pointer;
    text-align: center;
}

#listaProdutos {
    margin-bottom: 10px;
}

.listacompra-produtos-imagem {
    border: 1px solid #ddd;
    float: left;
    margin-right: 5px;
}

.listacompra-produtos-item {
    border-bottom: 1px dashed #ccc;
    clear: both;
    margin-bottom: 7px;
    min-height: 76px;
    padding-bottom: 5px;
}

    .listacompra-produtos-item input[type="checkbox"] {
        display: inline-block;
        float: left;
        margin-bottom: 6px;
        margin-right: 5px;
    }

.listacompra-produtos-nome {
    font-size: 11px;
    font-weight: bold;
    margin-left: 0;
    padding-bottom: 5px;
    top: -2px;
}

.listacompra .prodTitle {
    margin-left: 0;
    margin-top: 10px;
    width: 282px;
}

.listacompra .fbits-calculafrete {
    display: none;
}

.listacompra-descricao {
    clear: both;
}

.content.listacompra {
    padding-top: 10px;
}

.listacompra-produtos-atributos-opcao {
    border: 1px solid #888;
    display: inline-block;
    height: 25px;
    line-height: 25px;
    margin-right: 4px;
    text-align: center;
    width: 27px;
    margin-bottom: 4px;
    cursor: pointer;
}

.listacompra-produtos-atributos {
    clear: both;
    padding-left: 76px;
    width: 180px;
}

.listacompra-produtos-atributos-opcao.selecionado {
    background: none repeat scroll 0 0 #ddd;
    border: 1px solid #66a12d;
}

.listacompra-produtos-atributos-titulo {
    font-weight: bold;
    margin-bottom: 3px;
}

.listacompra-produtos-precopor {
    color: #333;
    font-weight: bold;
    margin-bottom: 1px;
}

.listacompra-produtos-parcelamento {
    font-size: 11px;
}

.listacompra-produtos-atributos-mensagem {
    color: red;
    font-size: 10px;
    margin-bottom: 3px;
    margin-top: -3px;
}

.fbits-componente-listacompra-preco-por {
    color: #2b2b2c;
    font-size: 19px;
    font-weight: bold;
    margin: 5px 0;
    width: 250px;
}

.fbits-componente-listacompra-preco-de {
    color: #898989;
    font-size: 11px;
    height: 13px;
    line-height: 13px;
    margin-top: 7px;
    text-decoration: line-through;
    display: block;
}

.spot .fb-like {
    margin-top: 6px;
    position: absolute;
}

.ordenar.left.fbits-info-bottom.ordenarScrollInfinitoAtivo {
    float: right;
    margin-right: 15px;
}

.scroInfinitoAtivo .mostrando.left.fbits-info-bottom {
    margin-bottom: 9px;
}

.bgResultadosCat.fbits-info-top.scroInfinitoAtivo {
    min-height: 75px !important;
}

.parceiroFechado form {
    padding-top: 20px;
}

.parceiroFechado label {
    display: inline-block;
    text-align: right;
    width: 150px;
}

.parceiroFechado .bt {
    margin-left: 152px;
}

.parceiroFechado label#lblErro {
    color: red;
    font-size: 10px;
    margin-left: 153px;
    text-align: left;
}

.parceiroFechado {
    margin: 0 auto;
    width: 470px;
}

h2.parceiro {
    margin-top: 20px;
    padding-top: 20px;
    text-align: center;
}

.voltarTopo {
    background: #ccc;
    width: 30px;
    height: 30px;
    right: 10px;
    bottom: 10px;
    position: fixed;
    border-radius: 5px;
    box-shadow: 1px 2px 4px -1px #333;
}

a.voltarTopo:before {
    content: "^";
    text-align: center;
    font-size: 28px;
    width: 30px;
    height: 30px;
    display: block;
    padding-top: 6px;
    color: #666;
}

.cartItens {
    margin-left: -4px;
    max-height: 217px;
    overflow: auto;
    padding: 15px 4px 0 0;
    text-shadow: none;
    width: 271px;
}

#fbits-resumo-mensagem-erro {
    color: #911314;
    font-size: 10px;
    font-weight: normal;
    margin-bottom: 8px;
    margin-top: 8px;
    text-align: center;
    text-transform: none;
}

.cartItem .fbits-campo-quantidade a {
    border-right: 1px solid #ccc;
    border-top: 1px solid #ccc;
    color: black;
    display: inline-block;
    height: 16px;
    padding-top: 5px;
    position: absolute;
    vertical-align: middle;
}

.cartItem .fbits-valor {
    border: 1px solid #bababa;
    border-radius: 0;
    box-shadow: 3px 3px 15px -1px #cbcbcb inset;
    display: inline-block;
    font-size: 12px;
    font-weight: normal;
    height: 21px;
    line-height: 21px;
    margin-left: 12px;
    margin-right: -1px;
    text-align: center;
    width: 26px;
}

.cartItem .icon.remover.replace {
    margin-top: 27px;
    position: absolute;
    right: 9px;
}

.fbits-campo-quantidade {
    right: 16px;
    width: 50px;
    position: absolute;
}

.cadRevendedor label {
    width: 500px;
    text-align: left;
}

.spotPreco {
    height: 70px;
}

.produto .resultado-frete td {
    padding-left: 4px;
    padding-right: 4px;
}

.produto .resultado-frete tr td:first-child, .produto .resultado-frete tr td:last-child {
    background: #f9f9f9 none repeat scroll 0 0;
}
/*Banner Rodape*/
.fbits-banner-rodape {
    margin-bottom: 5px;
    display: block;
    float: left;
}

    .fbits-banner-rodape img {
        float: left;
        display: inline-block !important;
    }

/*Banner Topo*/
.fbits-home .fbits-banner-topo {
    margin-top: 10px;
    display: block;
    overflow: hidden;
}

    .fbits-home .fbits-banner-topo img {
        float: left;
    }

.tLined .arrow, .arrow-lista {
    text-decoration: none;
    font-size: 13px !important;
    border-bottom: 0;
    border-right: 1px solid #ccc;
    border-top: 1px solid #ccc;
    color: black;
    display: inline-block;
    height: 23px;
    border-left: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    padding-top: 5px;
    background: none;
    background: none repeat scroll 0 0 #eee;
    padding-left: 0 !important;
    text-align: center;
    width: 12px;
    text-indent: 0;
    line-height: 22px;
    margin-right: -5px;
    margin-left: -8px !important;
    z-index: 2;
    vertical-align: middle;
    top: 0;
    position: relative;
    cursor: pointer;
}

.freteLista div[id^="opcaoFrete"] > div:last-child {
    border-right: 0px;
}

.freteLista div[id^="opcaoFrete"] > div {
    border-color: #FFF;
    border-image: none;
    border-style: none;
    border-width: 0px;
    display: inline-block;
    margin-left: -5px;
    padding: 8px;
    text-align: left;
    width: 265px;
}

    .freteLista div[id^="opcaoFrete"] > div:first-child {
        border-left: 0;
        height: 16px;
        margin-left: 0px;
        margin-top: 0;
        position: relative;
        width: 56px;
    }

.freteLista div[id^="opcaoFrete"] {
    background: none repeat scroll 0 0 #F5F5F5;
    display: table;
    padding: 0px;
    width: 100%;
    border: 1px solid #AAA;
    margin-bottom: 8px;
}

div#fbits-cartao-demo {
    margin-bottom: 10px;
}

    div#fbits-cartao-demo + forminline > label:first-child {
        width: 184px;
    }

.input.normal.numeroCartaoCredito + label {
    width: 60px;
    text-align: left;
}

.fbits-cartoes-identificaveis .input.normal.numeroCartaoCredito, .mainBarInterna .fbits-formularioCartoes-template2 .numeroCartaoCredito {
    width: 184px;
    margin-right: 16px;
    font-size: 15px;
}

.fbits-cartoes-identificaveis div#codigoSeguranca {
    float: left;
    width: 120px;
}

.coluna-fechamento.central .fbits-cartoes-identificaveis .fbits-template-parcelamento-1 label {
    height: 25px;
    top: 4px;
    display: block;
    font-size: 12px;
}

.fbits-cartoes-identificaveis .fbits-template-parcelamento-1 {
    width: 180px;
    float: left;
}

.fbits-cartoes-identificaveis .fbits-parcelamento-dropdown {
    width: 177px;
    height: 33px;
    text-indent: 4px;
    font-size: 11px;
}

.fbits-enderecoCobranca-dropdown {
    width: 300px;
    height: 33px;
    text-indent: 4px;
    font-size: 11px;
}

.fbits-bandeiras-disponiveis img {
    margin-right: 8px;
    margin-left: 18px;
    margin-bottom: 6px;
}

.txtPagamento .fbits-cartoes-identificaveis .forminline label.numcartao {
    width: 223px;
}

.pagamento .fbits-pedido-pagamento-template2 .codigoSeguranca {
    width: 41px !important;
}

.fbits-cartoes-identificaveis .codSeguranca {
    display: inline-block;
    height: 34px;
    width: 39px;
    position: absolute;
    background: url("../i/cod.png") no-repeat #fff;
    margin-left: 4px;
    margin-top: 0;
}

.mainBarInterna .fbits-bandeiras-disponiveis {
    width: 380px;
    margin-left: 108px;
}

.mainBarInterna div#fbits-cartao-demo {
    width: 400px;
    margin-left: 69px;
}

.fbits-confirmacaoPedido .title.biggest {
    text-transform: none;
    font-weight: bold;
}

.fbits-confirmacaoPedido .box-num {
    color: #777;
    font-size: 30px;
    border: 1px solid #ddd;
    margin-left: 30px;
    padding: 24px;
    margin-top: 25px;
    margin-right: 30px;
    padding-bottom: 5px;
    margin-bottom: 22px;
}

.half.right.pedidoStatus {
    width: 569px;
    border: 1px solid #ddd;
    margin-top: 20px;
    padding-bottom: 20px;
    min-height: 280px;
}

.pedidoNumber.half.left {
    border: 1px solid #ddd;
    width: 400px;
    margin-top: 20px;
    min-height: 260px;
    padding-bottom: 25px;
}

.fechamento-boleto {
    text-align: center;
    padding-top: 30px;
    padding-bottom: 20px;
}

.statusBoleto {
    line-height: 20px;
    padding-left: 25px;
    font-size: 13px;
    padding-right: 20px;
    padding-top: 21px;
}

.fbits-confirmacaoPedido .box-head {
    background: #f0f0f0;
    line-height: 38px;
    color: #666;
    font-size: 11px;
    text-indent: 16px;
    font-weight: bold;
}

.fbits-confirmacaoPedido .box-num .bold {
    font-size: 16px;
    margin-bottom: 9px;
}

.fbits-confirmacaoPedido .box-email {
    margin-left: 30px;
    border: 1px solid #ccc;
    margin-right: 30px;
    padding: 18px;
    padding-bottom: 7px;
    background: #f6f6f6;
}

.box-cartao-assinatura .numeroCartaoCredito {
    height: 50px;
    font-size: 25px;
    width: 288px;
    width: 146px;
    margin-bottom: 9px;
    margin-right: 16px;
    height: 30px;
    font-size: 15px;
}

.produto-assinatura .input.normal {
    width: 216px;
}

.mainBarInterna .fbits-formularioCartoes-template2 label {
    width: 200px;
}

label[for="UsarEnderecoEntregaCartaoCredito"] {
    line-height: 27px;
}

#endereco-cobranca label {
    display: block;
    font-weight: bold;
    text-align: left;
    width: 340px;
    margin-bottom: 11px;
}

label[for="UsarEnderecoEntregaCartaoCredito"] input[type="checkbox"] {
    top: 2px;
    position: relative;
}

.fbits-enderecoCobranca-dropdown {
    width: 250px;
    height: 33px;
    text-indent: 4px;
    font-size: 11px;
    margin-left: 202px;
}

.btcartao a.bt.gray {
    margin-left: 202px;
    margin-top: 20px;
}

.btcartao input.bt {
    margin-top: 20px;
}

.fbits-novoEndereco-popup .line span {
    display: none;
}

div#fbits-naoSei-CEP-resultado {
    position: absolute;
    top: 105px;
    left: 320px;
    background: #eee;
    box-shadow: 0px 1px 6px #ccc;
    padding: 10px;
}

.box-cartao-assinatura label[for="UsarEnderecoEntregaCartaoCredito"] {
    margin-left: 2px;
}

.box-cartao-assinatura #endereco-cobranca label {
    margin-left: 1px;
}

.box-cartao-assinatura .fbits-enderecoCobranca-dropdown {
    margin-left: 1px;
}

a#fbits-novoEndereco-popup {
    color: #4CA702;
}

div#mensagemCartaoNaoAutorizado, div#mensagemCarregamentoPedido {
    padding: 15px;
}

.fbits-pedido-naoautorizado-titulo, .fbits-pedido-loading {
    font-size: 20px;
    color: #000;
    font-weight: bold;
    margin-bottom: 10px;
}

.fbits-pedido-naoautorizado-texto {
    font-size: 14px;
    color: #000;
    margin-bottom: 20px;
}

.fbits-pedido-naoautorizado-botao {
    background: #4d8118;
    color: #fff;
    text-align: center;
    height: 38px;
    line-height: 38px;
    cursor: pointer;
}

.coluna-fechamento .fbits-enderecoCobranca-dropdown {
    margin-left: 0;
}

.fbits-gateway-mercadopago .numeroCartaoCredito {
    width: 159px !important;
}

.fbits-gateway-mercadopago label.numcartao {
    width: 171px !important;
}

.fbits-gateway-mercadopago .forminline {
    color: #fff;
}

.fbits-gateway-mercadopago label {
    color: #444;
}

.fbits-gateway-mercadopago input[data-checkout="cardExpirationMonth"] {
    width: 22px !important;
    margin-left: 5px;
}

.fbits-gateway-mercadopago input[data-checkout="cardExpirationYear"] {
    width: 22px !important;
    margin-left: 5px;
}

.fbits-gateway-mercadopago .forminline label {
    height: 24px !important;
    width: 253px;
}

.fbits-gateway-mercadopago-linha3 {
    position: relative;
    display: block;
    height: 58px;
}

    .fbits-gateway-mercadopago-linha3 label {
        width: 260px !important;
    }

.forminlinen.fbits-gateway-mercadopago-linha4 {
    clear: both;
    margin-bottom: 10px;
    padding-top: 1px;
    display: none;
}

    .forminlinen.fbits-gateway-mercadopago-linha4 select {
        height: 36px;
        width: 298px;
    }

    .forminlinen.fbits-gateway-mercadopago-linha4 label {
        display: block;
        height: 23px;
    }

.fbits-gateway-mercadopago-linha3 .fbits-parcelamento-dropdown {
    position: absolute;
    top: 25px;
    height: 34px;
    left: 140px;
}

.fbits-gateway-mercadopago-linha3 .codigoSeguranca + label {
    position: absolute;
    width: 50px !important;
    left: 140px;
    top: 4px;
}

.fbits-gateway-koin {
    border: 2px solid #ddd;
    padding: 10px;
    border-radius: 5px;
    background-color: #f9f9f9;
    font-size: 13px;
    line-height: 18px;
}

    .fbits-gateway-koin a {
        display: inline-block;
        color: #ff7335;
        text-decoration: underline;
        margin-bottom: 7px;
    }

.jp-card-container {
    width: 280px !important;
    max-width: 90% !important;
    height: 144px !important;
    margin-bottom: 16px !important;
}

.jp-card {
    min-width: 100% !important;
}

    .jp-card .jp-card-front, .jp-card .jp-card-back {
        top: 0px !important;
        left: 0 !important;
    }

        .jp-card .jp-card-front .jp-card-logo {
            right: 7% !important;
            top: 9% !important;
        }

        .jp-card .jp-card-front .jp-card-shiny, .jp-card .jp-card-back .jp-card-shiny {
            width: 50px !important;
            height: 34px !important;
        }

        .jp-card .jp-card-front .jp-card-lower .jp-card-number {
            margin-bottom: 26px !important;
            font-size: 17px !important;
        }

        .jp-card .jp-card-front .jp-card-lower .jp-card-name {
            max-height: 45px !important;
            bottom: 23px !important;
            width: 150px !important;
            font-size: 14px !important;
        }

        .jp-card .jp-card-front .jp-card-lower .jp-card-expiry {
            width: 25% !important;
            bottom: 9px !important;
        }

.html-personalizado img {
    max-width: 317px;
    height: auto;
    width: auto;
}

.jp-card .jp-card-front .jp-card-lower {
    bottom: 10px !important;
}

.forminline.fbits-gateway-mercadopago-linha6 {
    display: none;
}

.popUp-News input[type="text"] {
    width: 150px;
}

.coluna-fechamento.central input.nowide {
    float: left;
    width: 42px;
}

input.listacompra-produtos-quantidade {
    height: 28px;
    border: 1px solid #ddd;
    top: 2px;
    position: relative;
    text-align: center;
    width: 3.1em;
    padding-left: 0;
    padding-right: 1px;
}

label.label-qtd-lista {
    width: 84px;
    display: inline-block;
}

.spot li {
    position: relative;
}

.fbits-opcao-frete-nome.pointer {
    text-align: left;
    width: 300px;
    top: 49px;
    position: absolute;
    position: relative;
}

label[for="OpcoesFreteRetiradaLoja"] span {
    color: #4ca702;
    display: inline-block;
    font-size: 16px;
    font-weight: bold;
    height: 30px;
    line-height: 31px;
    margin-bottom: 10px;
    margin-left: 1px;
    margin-right: 9px;
    padding-right: 0;
    text-align: left;
    width: 239px;
}

label[for="pickupstore-selecionar"] {
    margin-left: 679px;
    text-align: left;
    font-weight: bold;
    margin-right: 8px;
}

div#fbits-pickupstore-lojas {
    padding-top: 10px;
    padding-bottom: 0px;
    display: block;
    overflow: hidden;
    width: 1000px;
}

select#pickupstore-selecionar {
    border: 1px solid #c1c1c1;
    height: 32px;
    background-color: #ebebe4;
    padding-left: 7px;
    color: dimgray;
}

.fbits-pickupstore-loja-estado {
    display: none;
}

.fbits-pickupstore-loja label {
    border: 1px solid #ccc;
    margin-top: 10px;
    padding: 5px;
    text-align: left;
    display: block;
    cursor: pointer;
    min-height: 86px;
}

    .fbits-pickupstore-loja label:hover {
        background: #f1f1f1;
    }

td#resultadoFrete {
    padding-right: 0;
    padding-top: 0;
}

input[name="lojaId"] {
    float: left;
    margin-right: 4px;
    top: 2px;
    position: relative;
}

input[name="RetiradaAgendadalojaId"] {
    float: left;
    margin-right: 4px;
    top: 2px;
    position: relative;
}

span.fbits-pickupstore-loja-nome {
    font-weight: bold;
    display: block;
    color: #4ca702;
}

span.fbits-pickupstore-loja-logradouro:before {
    content: "Endere\00e7o:";
    font-weight: bold;
    margin-left: 0px;
    margin-right: 3px;
    clear: both;
    display: inline-block;
}

.fbits-pickupstore-loja {
    width: 488px;
    float: left;
    margin-right: 10px;
}

span.fbits-pickupstore-loja-cep:before {
    content: "CEP:";
    font-weight: bold;
    margin-left: 3px;
    margin-right: 3px;
}

span.fbits-pickupstore-loja-textoComplementar:before {
    content: "Hor\00e1rio:";
    font-weight: bold;
    clear: both;
    display: inline-block;
    margin-right: 3px;
}

span.fbits-pickupstore-loja-telefone:before {
    content: "Tel:";
    font-weight: bold;
    display: inline-block;
    margin-right: 3px;
}

span.fbits-pickupstore-loja-prazoEntrega {
    color: #982222;
    float: left;
    font-weight: bold;
    margin-right: 5px;
}

span.fbits-pickupstore-loja-cidade {
    display: block;
    margin-right: 5px;
}

.coluna-fechamento div#fbits-pickupstore-lojas {
    width: 315px;
}

.coluna-fechamento label[for="pickupstore-selecionar"] {
    margin-left: 0;
    text-transform: uppercase;
    text-align: left;
    font-weight: bold;
    width: 147px;
    text-align: right;
    margin-right: 8px;
}

.coluna-fechamento .fbits-pickupstore-loja {
    width: 315px;
    float: none;
    margin-right: 0;
    display: block;
    clear: both;
}

.coluna-fechamento.inicial .fbits-pickupstore-loja label {
    border: 1px solid #ccc;
    margin-top: 10px;
    padding: 5px;
    text-align: left;
    display: block;
    cursor: pointer;
    width: 300px;
    min-height: 123px;
    height: auto;
}


.fbits-carrinho-calcularFrete-cep:disabled, .fbits-carrinho-calcularFrete-botao:disabled {
    background: rgba(175, 175, 175, 0.41);
    color: rgba(128, 128, 128, 0.41);
}

.fbits-botoes-esquerda {
    display: table;
    float: left;
    height: 80px;
    position: relative;
}

    .fbits-botoes-esquerda > div {
        display: table-cell;
        vertical-align: middle;
        position: relative;
    }

.fbits-botoes-direita {
    display: table;
    height: 80px;
    position: relative;
}

    .fbits-botoes-direita > div {
        display: table-cell !important;
        padding-left: 20px;
        vertical-align: middle;
        height: 80px;
        position: relative;
    }

.botoes-carrinho-bottom {
    height: 86px;
    margin-bottom: 20px;
}

input#btnVoltarCompras2, input#btnFinalizarPedido2 {
    margin-bottom: 0 !important;
}

div.btpaypal.saiba-mais {
    z-index: 5;
}

.btpaypal.saiba-mais.imagem {
    left: -562px;
}

.matriz-zoom-atributo {
    z-index: 1;
}

.produto .produto-matriz-atributos .matriz-zoom-atributo img {
    width: auto !important;
}

span.fbits-spot-atributo-nome {
    display: none;
}

.fbits-spot-atributos-cor {
    width: 16px;
    height: 16px;
    border-radius: 16px;
    font-size: 0;
    display: inline-block;
    margin-right: 8px;
}

.input-spot-quantidade {
    border: 1px solid #ccc;
    width: 3em;
}

.spotListHome .fbits-carrossel-setas {
    height: 410px;
    position: relative;
    width: 1000px;
}

.jcarousel-prev {
    background: url("../i/icons.png") repeat scroll -130px -35px;
    cursor: pointer;
    height: 88px;
    left: -10px;
    position: absolute;
    margin-top: 0;
    width: 50px;
    top: 110px;
}

.fbits-carrossel {
    position: relative;
    overflow: hidden;
    width: 900px;
    height: 430px;
    margin: 0 auto;
}

.jcarousel-next {
    background: url("../i/icons.png") repeat scroll -181px -37px;
    cursor: pointer;
    height: 88px;
    position: absolute;
    right: 0;
    margin-top: 0px;
    top: 110px;
    width: 50px;
}

.fbits-carrossel ul {
    width: 20000em;
    position: relative;
    /* Optional, required in this case since it's a <ul> element */
    list-style: none;
    margin: 0;
    padding: 0;
}

.fbits-carrossel li {
    float: left;
}


.carousel .jsCarrousel {
    overflow: visible !important;
}

.produto .carousel {
    height: 460px;
}

div#produtos-relacionados {
    margin-left: 46px;
    width: 939px;
    overflow: hidden !important;
    height: 410px;
}

.produto .carousel {
    overflow: visible !important;
}

.produto #produtos-relacionados.jsCarrousel, .produto #produtos-autor.carousel {
    height: 455px;
    width: 940px;
    margin-left: 50px;
    margin-bottom: 30px;
    overflow: hidden;
}

.bt-next-fab {
    background: url("../i/icons.png") repeat scroll -181px -57px;
    cursor: pointer;
    height: 55px;
    position: absolute;
    right: 0;
    margin-top: 0;
    top: 0;
    width: 50px;
}

.bt-prev-fab {
    background: url("../i/icons.png") repeat scroll -130px -55px;
    cursor: pointer;
    height: 58px;
    left: 0;
    position: absolute;
    width: 50px;
    top: 0;
}

#carrossel-fabricantes.jcarousel li {
    float: left;
}

#carrossel-fabricantes.jcarousel {
    height: 50px;
    overflow: hidden;
    margin: 0;
    margin-left: 0;
    width: 980px;
    padding-top: 2px;
    margin: 0 auto;
}

.jcarousel ul {
    left: 0px;
    top: 0px;
    width: 20000em !important;
    position: relative;
    list-style: none;
    margin: 0;
    padding: 0;
}


.modalConteudo #produtos-relacionadosModal {
    margin-left: 30px;
    width: 765px !important;
    height: 430px;
    overflow: hidden;
}

.jcarousel-wrapper .carousel {
    margin-left: 30px;
    padding-left: 0 !important;
}


.spot .spotHoverPanel .produtosSimilares {
    margin-top: 27px;
    overflow: hidden;
    height: 347px;
}

.fixed-bar .headerSearch {
    top: 21px;
}

.produto-imagem-eazyZoom .fbits-componente-imagemvariantethumb .jcarousel-prev {
    background: url('../i/icons.png') no-repeat -65px -75px;
    width: 15px;
    height: 18px;
    position: absolute;
    cursor: pointer;
    margin-top: 0;
}

.produto-imagem-eazyZoom .fbits-componente-imagemvariantethumb .jcarousel-next {
    background: url('../i/icons.png') no-repeat -89px -75px;
    width: 15px;
    height: 18px;
    position: absolute;
    cursor: pointer;
    margin-top: 0;
}

.categoria .jcarousel-next {
    right: -26px;
}

#bodyProduto .jsCarrousel-prev.jcarousel-prev-horizontal {
    background: url("../i/icons.png") repeat scroll -130px -35px;
    cursor: pointer;
    height: 88px;
    left: 0;
    position: absolute;
    margin-top: 0;
    width: 50px;
    top: 111px;
}

#bodyProduto .jsCarrousel-next.jcarousel-next-horizontal {
    background: url("../i/icons.png") repeat scroll -181px -37px;
    cursor: pointer;
    height: 88px;
    position: absolute;
    right: -28px;
    margin-top: 0;
    top: 110px;
    width: 50px;
}

.spotHoverPanel .jsSpotPrev {
    top: 10px;
    background: url('../i/icons.png') no-repeat -267px -115px;
    width: 74px;
    left: 3px;
    height: 11px;
    position: absolute;
    cursor: pointer;
}

.spotHoverPanel .jsSpotNext {
    bottom: 10px;
    background: url('../i/icons.png') no-repeat -267px -127px;
    width: 74px;
    left: 3px;
    height: 11px;
    position: absolute;
    cursor: pointer;
}

#fancybox-content .fbits-produto-produtosrecomendados .carousel {
    position: relative;
    overflow: hidden;
    height: 420px;
    width: 777px;
    left: 0;
    padding-left: 30px;
}

.modalConteudo .fbits-produto-produtosrecomendados .jcarousel-next-horizontal {
    background: url("../i/icons.png") repeat scroll -181px -37px;
    cursor: pointer;
    height: 88px;
    position: absolute;
    right: -17px !important;
    top: 120px !important;
    width: 50px;
}

.modalConteudo #produtos-relacionadosModal {
    margin-left: 10px;
    width: 761px !important;
    height: 430px;
    overflow: hidden !important;
    position: relative;
}

.liCores.checked {
    background: #ccc;
}

.listaProdutos-mensagem {
    color: red;
    font-size: 10px;
    margin-bottom: 3px;
    margin-top: -3px;
}

/*Boto add embalagem -->*/
.tLined a.botao-add-embalagem {
    display: block;
    color: #000;
    text-decoration: none;
    font-weight: bold;
    letter-spacing: .075em;
    height: 35px;
    line-height: 35px;
}

    .tLined a.botao-add-embalagem:hover {
        opacity: 0.8;
    }

.title-embalagem {
    display: block;
    width: 100%;
    float: left;
    height: 56px;
    line-height: 56px;
    font-size: 20px;
    font-weight: bold;
    color: #000;
    margin-bottom: 10px;
}

span.icone-embalagem {
    background: url('../i/icons.png') no-repeat -283px -322px;
    width: 49px;
    height: 56px;
    display: block;
    float: left;
    margin-right: 10px;
}

.conteudo-modal-embalagem {
    display: block;
    position: relative;
}

table.tabela-add-embalagem {
    border: 1px solid #d4d4d4;
}

    table.tabela-add-embalagem tr td {
        border-bottom: 1px solid #d4d4d4;
    }

        table.tabela-add-embalagem tr td img.imagem-embalagem {
            display: inline-block;
            float: left;
            padding: 10px;
        }

        table.tabela-add-embalagem tr td span.embNome {
            color: #1a1a1a;
            display: block;
            font-size: 13px;
            line-height: 16px;
            text-align: left;
            width: 225px;
        }

        table.tabela-add-embalagem tr td span.embAtributo {
            font-size: 12px;
            display: block;
        }

        table.tabela-add-embalagem tr td.emb-box {
            padding-right: 10px;
            width: 278px;
        }

    table.tabela-add-embalagem span.txt-seleciona-embalagem {
        color: #000;
        font-size: 12px;
        font-weight: bold;
        display: block;
        line-height: 18px;
        width: 100%;
    }

    table.tabela-add-embalagem .seleciona-embalagem {
        display: block;
        width: 100%;
    }

    table.tabela-add-embalagem p.valor-embalagem {
        display: block;
        width: 100%;
        color: #000;
        margin-bottom: 8px;
    }

    table.tabela-add-embalagem .area-cartao-presente {
        width: 100%;
    }

        table.tabela-add-embalagem .area-cartao-presente input.input-cartao-presente {
            float: left;
            margin-top: 5px;
            margin-right: 5px;
        }

        table.tabela-add-embalagem .area-cartao-presente text.texto-cartao-presente {
            display: inline-block;
            color: #000;
            font-size: 12px;
            line-height: 22px;
        }

        table.tabela-add-embalagem .area-cartao-presente .textarea-cartao-presente {
            border: 1px solid #7c7c7c;
            padding: 10px;
            width: 255px;
            margin: 10px 0px;
            color: #000;
        }

.modalEmbalagem .modalAcoes {
    display: block;
    width: 100%;
    text-align: right;
    margin: 15px 0px;
}

    .modalEmbalagem .modalAcoes span.botao-cancelar-embalagem {
        background: #c4c4c4;
        width: 140px;
        height: 45px;
        display: inline-block;
        text-align: center;
        line-height: 45px;
        color: #707070;
        cursor: pointer;
    }

    .modalEmbalagem .modalAcoes input.botao-salvar-embalagem {
        background: #5f5f5f;
        width: 140px;
        height: 45px;
        display: inline-block;
        text-align: center;
        line-height: 45px;
        color: #fff;
        cursor: pointer;
        margin-left: 10px;
    }

        .modalEmbalagem .modalAcoes span.botao-cancelar-embalagem:hover, .modalEmbalagem .modalAcoes input.botao-salvar-embalagem:hover {
            opacity: 0.9;
        }

table.tabela-add-embalagem .seleciona-embalagem .img-embalagem {
    border: 1px solid #D2D2D2;
    width: 50px;
    height: 50px;
}

table.tabela-add-embalagem .seleciona-embalagem .img-embalagem-selecionada {
    border: 1px solid #2B2B2C;
    width: 50px;
    height: 50px;
}

.jsCarrousel-prev-historico.jcarousel-prev-horizontal {
    background: url("../i/icons.png") repeat scroll -130px -35px;
    cursor: pointer;
    height: 88px;
    left: -10px;
    position: absolute;
    margin-top: 0;
    width: 50px;
    top: 82px;
}

.jsCarrousel-next-historico.jcarousel-next-horizontal {
    background: url("../i/icons.png") repeat scroll -181px -37px;
    cursor: pointer;
    height: 88px;
    position: absolute;
    left: 440px;
    margin-top: 0;
    top: 82px;
    width: 50px;
}

.fbits-carrossel-historico li {
    width: 135px !important;
    text-align: center;
}

/*Carrinho responsivo*/
.fbits-responsive-carrinho-center {
    width: 80%;
    margin: auto;
    clear: both;
}

.fbits-responsive-carrinho-item {
    list-style-type: none;
    padding-left: 0px;
    padding-right: 0px;
    display: table-row;
}

    .fbits-responsive-carrinho-item > div {
        display: table-cell;
        vertical-align: middle;
        padding: 1.2em 0em;
        color: #000;
        white-space: nowrap;
        font-size: 12px;
        border-bottom: 1px #E4E4E4 solid;
    }


.fbits-responsive-carrinho-item-titulo {
    width: 58%;
    text-align: left;
}

.fbits-responsive-carrinho-item-imagem {
    float: left;
    border: #E4E4E4 1px solid;
}

.fbits-responsive-carrinho-item-descricao {
    float: left;
    padding-left: 15px;
}

.fbits-responsive-carrinho-item-remover {
    width: 10%;
    text-align: center;
}

.fbits-responsive-carrinho-item-quantidade {
    width: 10%;
    text-align: center;
}

.fbits-responsive-carrinho-item-valor-unitario {
    width: 10%;
    text-align: center;
}

.fbits-responsive-carrinho-item-total {
    width: 10%;
    text-align: center;
    color: #1F1F1F;
    font-size: 14px;
    font-weight: bold;
}

.fbits-responsive-carrinho {
    float: left;
}

.fbits-responsive-carrinho-items {
    display: table;
    border-collapse: collapse;
    width: 100%;
}

.fbits-responsive-carrinho-header {
    background-color: #CECDCD;
    list-style-type: none;
    padding-left: 0px;
    padding-right: 0px;
    display: table-row;
}

    .fbits-responsive-carrinho-header > li {
        text-align: center;
        display: table-cell;
        padding: 1.2em 0em;
        color: #000;
        text-align: center;
        white-space: nowrap;
        font-size: 12px;
        font-weight: normal;
        border: 1px solid #E4E4E4;
    }

.fbits-responsive-carrinho-header-coluna-descricao {
    width: 58%;
}

.fbits-responsive-carrinho-header-coluna-remover {
    width: 10%;
}

.fbits-responsive-carrinho-header-coluna-quantidade {
    width: 10%;
}

.fbits-responsive-carrinho-header-coluna-preco {
    width: 10%;
}

.fbits-responsive-carrinho-header-coluna-total {
    width: 10%;
}

.fbits-responsive-carrinho-produtos {
    list-style-type: none;
    padding-left: 0px;
    padding-right: 0px;
    display: table-row-group;
}

    .fbits-responsive-carrinho-produtos li {
        display: table-row;
        vertical-align: middle;
        padding: 1.2em 0em;
        color: #000;
        white-space: nowrap;
        font-size: 12px;
        border-bottom: 1px #E4E4E4 solid;
    }

.fbits-responsive-carrinho-adicional {
    float: left;
}

.fbits-responsive-carrinho-detalhes {
    float: left;
}

.fbits-responsive-carrinho-frete {
    width: 100%;
    float: left;
    padding-left: 0px;
    padding-right: 0px;
    display: table-row;
    border-bottom: 1px #E4E4E4 solid;
    padding-top: 10px;
    padding-bottom: 15px;
}

.fbits-responsive-carrinho-frete-texto {
    width: 40%;
    float: left;
    text-align: left;
    font-size: 13px;
}


.fbits-responsive-carrinho-frete-calculo {
    float: left;
}

.fbits-responsive-carrinho-frete-total {
    color: #1F1F1F;
    font-size: 12px;
    font-weight: normal;
    float: right;
}

.fbits-responsive-carrinho-frete-header {
    width: 100%;
    font-size: 12px;
    font-weight: normal;
    float: right;
    text-align: right;
}

.fbits-responsive-carrinho-frete-prazo {
    float: right;
    width: 100%;
    text-align: right;
}

.fbits-responsive-carrinho-frete-valor {
    text-align: center;
    float: right;
}

.fbits-responsive-carrinho-frete-input {
    float: left;
}

.fbits-responsive-carrinho-frete-erros {
    float: left;
}

.fbits-responsive-carrinho-frete #prazoEntregaExibicao::after {
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
    border-top: 4px solid #000;
    content: "";
    display: inline-block;
    height: 0;
    margin-left: 5px;
    vertical-align: middle;
    width: 0;
}

.fbits-responsive-carrinho-frete #prazoEntregaExibicao {
    background: none repeat scroll 0 0 #ddd;
    border-radius: 3px;
    color: #222;
    cursor: pointer;
    font-size: 12px;
    margin-left: 50%;
    margin-top: -35px;
    padding: 2px 5px;
    position: absolute;
}

.fbits-responsive-carrinho-frete ul#opcoesFrete {
    background-clip: padding-box;
    background-color: #fff;
    border: 1px solid rgba(0,0,0,0.2);
    border-radius: 6px;
    box-shadow: 0 5px 10px rgba(0,0,0,0.2);
    font-size: 12px;
    margin-left: 50%;
    line-height: 22px;
    list-style: outside none none;
    margin-top: -17px;
    max-width: 400px;
    min-width: 160px;
    padding: 5px 7px 5px 8px;
    position: absolute;
    text-align: left;
    z-index: 1000;
}

    .fbits-responsive-carrinho-frete ul#opcoesFrete > li {
        cursor: pointer;
        padding-left: 23px;
        padding-right: 3px;
    }

.fbits-responsive-carrinho-frete .freteSelecionado {
    background: url("../i/ok.png") no-repeat scroll 1px 3px;
}

.fbits-responsive-carrinho-frete-opcoes {
    float: left;
    width: 100%;
}

.fbits-responsive-carrinho-desconto {
    float: left;
    width: 100%;
    padding-left: 0px;
    padding-right: 0px;
    display: table-row;
    border-bottom: 1px #E4E4E4 solid;
    padding-top: 10px;
    padding-bottom: 15px;
}

.fbits-responsive-carrinho-desconto-texto {
    text-align: left;
    font-size: 13px;
    float: left;
    width: 40%;
}

.fbits-responsive-carrinho-desconto-total {
    width: 15%;
    color: #1F1F1F;
    font-size: 12px;
    font-weight: normal;
    float: right;
}

.fbits-responsive-carrinho-desconto-header {
    float: left;
    padding-right: 10px;
}

.fbits-responsive-carrinho-desconto-valor {
    float: left;
}

.fbits-responsive-carrinho-desconto-input {
    float: left;
}

.fbits-responsive-carrinho-desconto-erros {
    float: left;
}

.fbits-responsive-carrinho-subtotal {
    color: #000;
    font-size: 12px;
    font-weight: normal;
    padding-top: 5px;
    text-align: center;
    white-space: nowrap;
    float: right;
    width: 100%;
    background-color: #CECDCD;
    height: 26px;
}

.fbits-responsive-carrinho-subtotal-header {
}

.fbits-responsive-carrinho-subtotal-valor {
    margin: 10px;
}

.fbits-responsive-carrinho-total {
    width: 100%;
    float: right;
    background-color: #f0f0f0;
    height: 35px;
    padding-top: 10px;
    color: #555;
    font-size: 15px;
    font-weight: normal;
    text-align: center;
    white-space: nowrap;
}

.fbits-responsive-carrinho-total-header {
    color: #555;
    font-size: 15px;
    font-weight: normal;
    padding: 0;
    text-align: center;
    white-space: nowrap;
}

.fbits-responsive-carrinho-total-valor {
    margin: 10px;
}

.fbits-responsive-carrinho-item-brinde-header > div {
    text-align: center;
}

.fbits-responsive-carrinho-item-brinde {
    text-align: center;
}

span.fbits-carrinho-item-precoDe-unitario {
    display: block;
    text-decoration: line-through;
    color: #999;
}

span.fbits-carrinho-item-precoDe-total {
    display: block;
    text-decoration: line-through;
    color: #999;
    font-weight: normal;
}

/* login parceiro */

.lista-parceiros.center {
    display: block;
    overflow: hidden;
    padding-top: 20px;
    padding-bottom: 20px;
}

.lista-parceiros-identificacao {
    display: block;
    float: left;
    width: 50%;
    text-align: left;
    line-height: 36px;
    font-size: 14px;
    font-weight: bold;
    padding-bottom: 25px;
}

    .lista-parceiros-identificacao a {
        color: #000;
        font-weight: normal;
    }

.lista-parceiros-busca {
    display: block;
    float: right;
    width: 50%;
    line-height: 36px;
    text-align: right;
    padding-bottom: 25px;
}

    .lista-parceiros-busca input#txt-busca-parceiro {
        padding: 0 10px 0 30px;
        height: 34px;
        border: 1px solid #ccc;
        background: url('../i/ico-campoBusca.png') no-repeat rgba(0, 0, 0, 0);
        background-size: 25px !important;
        background-position: 0px 2px;
    }

dl#dl-lista-parceiros {
    display: block;
    float: left;
    width: 100%;
    clear: both;
    margin-top: 20px;
    padding-bottom: 30px;
}

    dl#dl-lista-parceiros dd {
        display: block;
        float: left;
        width: 34%;
        margin-left: 14%;
        line-height: 30px;
        font-size: 14px;
        color: #535353;
    }

        dl#dl-lista-parceiros dd a {
            color: #535353;
            display: block;
            float: left;
            position: relative;
            padding-bottom: 25px;
        }

            dl#dl-lista-parceiros dd a img {
                display: inline-block;
                margin-right: 15px;
                height: 69px;
                float: left;
            }

            dl#dl-lista-parceiros dd a span {
                display: inline-block;
                line-height: 69px;
            }

.coluna-fechamento.titulocentro.central.indisponivel {
    opacity: 0.4;
}

.coluna-fechamento.titulocentro.final.indisponivel {
    opacity: 0.4;
}

.fbits-responsive-login {
    text-align: center;
    font-size: 14px;
    font-size: 0.875rem;
    line-height: 1.25rem;
}

    .fbits-responsive-login label {
        height: 25px;
        line-height: 20px;
        text-align: left;
        width: 100%;
    }

    .fbits-responsive-login .btRealizarLogin {
        margin-top: 15px;
        margin-bottom: 10px;
    }

    .fbits-responsive-login .btCadastrar {
        width: 100%;
        margin-top: 10px;
    }

.fbits-responsive-cadastro-box {
    width: 90%;
    margin: auto;
}

    .fbits-responsive-cadastro-box .line span {
        display: none;
    }

    .fbits-responsive-cadastro-box .line .title {
        font-size: 14px;
    }

    .fbits-responsive-cadastro-box label {
        width: 100%;
        height: 25px;
        line-height: 20px;
    }

    .fbits-responsive-cadastro-box input[type="text"] {
        width: 270px;
        border: 1px solid #c1c1c1;
        color: #696969;
        height: 32px;
        padding: 0 13px;
        vertical-align: middle;
    }

    .fbits-responsive-cadastro-box .cadastro-botoes {
        padding-top: 10px;
        display: block;
    }

        .fbits-responsive-cadastro-box .cadastro-botoes button {
            float: left;
            margin-right: 10px;
        }

        .fbits-responsive-cadastro-box .cadastro-botoes .cadastro-anterior {
            clear: both;
        }

    .fbits-responsive-cadastro-box .painel-cadastro-pessoa.fisica,
    .fbits-responsive-cadastro-box .painel-cadastro-pessoa.juridica {
        padding-top: 20px;
    }

    .fbits-responsive-cadastro-box .fbits-responsive-cadastro input#TipoSexoId-Masc,
    .fbits-responsive-cadastro-box .fbits-responsive-cadastro input#TipoSexoId-Fem {
        float: left;
        margin-top: 5px;
        margin-right: 5px;
    }

    .fbits-responsive-cadastro-box .fbits-responsive-cadastro label {
        width: 100%;
        height: 25px;
    }

        .fbits-responsive-cadastro-box .fbits-responsive-cadastro label.wauto {
            float: left;
        }

    .fbits-responsive-cadastro-box input#DDDRes, .fbits-responsive-cadastro-box input#DDDCom {
        width: 20%;
    }

    .fbits-responsive-cadastro-box input#TelefoneResidencial, .fbits-responsive-cadastro-box input#TelefoneComercial {
        width: 58%;
        margin-left: 2%;
    }

    .fbits-responsive-cadastro-box .cadNews {
        margin-left: 0px;
        width: 100%;
    }

    .fbits-responsive-cadastro-box .fbits-responsive-linha #naoSeiCep {
        margin-left: 0px;
        line-height: 20px;
        height: 25px;
        display: block;
    }

    .fbits-responsive-cadastro-box .fbits-responsive-linha input#enderecoInfo_Endereco {
        width: 58%;
        margin-right: 2%;
    }

    .fbits-responsive-cadastro-box .fbits-responsive-linha input#enderecoInfo_Numero {
        width: 20%;
    }


/*Filtros selecionados*/

.fbits-filtroSelecionados {
    background: none repeat scroll 0 0 #fff;
    box-shadow: 0 0 5px 0 rgba(0,0,0,0.3);
    margin-bottom: 15px;
    padding-bottom: 15px;
}

dl#dl-lista-parceiros dd a span {
    display: inline-block;
    line-height: 69px;
}

li.fbits-filtroSelecionados-pai {
    padding: 12px;
}

.tituloPai {
    color: #323a45;
    font-weight: bold;
}

.fbits-filtroSelecionados-filho {
    background: #eee;
    padding: 3px;
}

    .fbits-filtroSelecionados-filho a {
        float: left;
        font-weight: bold !important;
        width: 17px;
        text-align: center;
        margin-right: 9px !important;
    }

    .fbits-filtroSelecionados-filho label {
        font-size: 12px;
        top: -1px;
        position: relative;
    }

span.fbits-filtro-limpar {
    text-align: center;
    display: block;
    color: #000;
}

.fbits-filtroSelecionados .titulo {
    background: #888;
    height: 35px;
    line-height: 35px;
    font-size: 16px;
    color: #FFF;
    padding: 0 15px;
    font-weight: normal;
    margin-bottom: 15px;
}

/*Escopo Fechado para Parceiros*/
.content.login.sidebarLogin .center.acenter.painel1, .content.login.sidebarLogin .center.acenter.painel2 {
    background: #fff;
    border-bottom: 0px;
}

    .content.login.sidebarLogin .center.acenter.painel1 .loginbox {
        border: 1px solid #cdcdcd;
        padding: 2em;
        -moz-box-sizing: border-box;
        -ms-box-sizing: border-box;
        -webkit-box-sizing: border-box;
        -o-box-sizing: border-box;
        box-sizing: border-box;
        width: 33%;
    }

        .content.login.sidebarLogin .center.acenter.painel1 .loginbox .stronginput {
            width: 100%;
            -moz-box-sizing: border-box;
            -ms-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            -o-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content.login.sidebarLogin .center.acenter.painel1 .loginbox button#btnLogin {
            margin: auto;
            float: none;
        }

.paginacao-ver-mais {
    clear: both;
    height: 4em;
    padding-top: 9em;
}

a#btnVerMais {
    display: block;
    background: #666;
    clear: both;
    height: 2em;
    width: 6em;
    margin: 0 auto;
    color: #fff;
    text-align: center;
    line-height: 2em;
}

.fbits-carrinho .fbits-banner-topo {
    width: 1000px;
    margin: 0 auto;
    display: block;
    margin-bottom: 2em;
}

.fbits-carrinho .fbits-banner-lateraldireita {
    display: block;
    clear: both;
    width: 1000px;
    background: #ccc;
    margin-bottom: 1em;
}

.fbits-carrinho .fbits-banner-rodape {
    margin: 0 auto;
    width: 1000px;
    float: none;
    padding-top: 1em;
    overflow: hidden;
    margin-bottom: 1em;
    clear: both;
}

.atributos-container {
    position: relative;
}

.colunaProduto .atributo-div {
    text-align: center;
    position: relative;
    z-index: 0;
}

.colunaProduto a.jcarousel-control-prev-atributos-COR,
.colunaProduto a.jcarousel-control-next-atributos-COR,
.colunaProduto a.jcarousel-control-prev-atributos-TAMANHO,
.colunaProduto a.jcarousel-control-next-atributos-TAMANHO {
    color: #000;
    position: absolute;
    top: 0px;
    z-index: 15;
}

.colunaProduto a.jcarousel-control-prev-atributos-COR,
.colunaProduto a.jcarousel-control-prev-atributos-TAMANHO {
    left: 0px;
}

.colunaProduto a.jcarousel-control-next-atributos-COR,
.colunaProduto a.jcarousel-control-next-atributos-TAMANHO {
    right: 0px;
}

    .colunaProduto a.jcarousel-control-prev-atributos-COR.inactive,
    .colunaProduto a.jcarousel-control-next-atributos-COR.inactive,
    .colunaProduto a.jcarousel-control-prev-atributos-TAMANHO.inactive,
    .colunaProduto a.jcarousel-control-next-atributos-TAMANHO.inactive {
        opacity: 0.3;
    }

.colunaProduto .jcarousel-atributos-COR,
.colunaProduto .jcarousel-atributos-TAMANHO {
    margin: auto;
}

.campo-cadastro {
    width: auto;
    float: left;
    margin-bottom: 1em;
}

    .campo-cadastro input#cpf-validar, .campo-cadastro input#cnpj-validar {
        width: 390px;
        margin-right: 1em;
    }

    .campo-cadastro input#email-validar {
        width: 390px;
        margin-right: 1em;
    }

button#validar-pf, button#validar-pj {
    width: 134px;
    height: 2.5em;
}

.campo-cadastro input#Nome {
    width: 390px;
    margin-right: 1em;
}

.campo-cadastro input#txtRg {
    margin-right: 1em;
    width: 200px;
}

.campo-cadastro input#txtNasc {
    width: 296px;
}

input#regulamento-aceito {
    clear: both;
    display: block;
}

.campo-cadastro label.wauto {
    margin-right: 1em;
    height: 2em;
    line-height: 3em;
    display: inline-block;
}

.campo-cadastro input#TipoSexoId-Masc {
    margin-left: 0.6em;
}

.campo-cadastro input#TelefoneResidencial {
    width: 119px;
    margin-right: 1em;
}

.campo-cadastro .erroCadastro {
    position: absolute;
    margin-left: 0;
    margin-top: -1px;
    font-size: 9px;
}

.campo-cadastro input#txtCEP {
    width: 390px;
}

.campo-cadastro a#naoSeiCep {
    margin-right: 280px;
    color: #666;
}

.campo-cadastro input#txtEndereco {
    width: 390px;
    margin-right: 1em;
}

.campo-cadastro input#enderecoInfo_Numero {
    width: 100px;
    margin-right: 1em;
}

.campo-cadastro input#txtBairro {
    width: 396px;
}

.campo-cadastro input#txtCidade {
    width: 390px;
    margin-right: 1em;
}

.campo-cadastro input#txtEstado {
    width: 100px;
    margin-right: 1em;
}

.campo-cadastro input#enderecoInfo_Complemento {
    width: 396px;
}

.campo-cadastro input#regulamento-aceito {
    clear: both;
    display: block;
    float: left;
    margin-right: 0.5em;
    top: 11px;
    position: relative;
}

.campo-cadastro label.wauto[for="regulamento-aceito"] {
    width: 80% !important;
}

.texto-regulamento {
    margin-top: 1em;
    color: #000;
    font-weight: bold;
    margin-bottom: 1em;
}

    .texto-regulamento + button#cadastrar {
        margin: 0;
        float: left;
        margin-bottom: 3em;
        background: #888;
    }

label.label-termo-regulamento {
    width: 212px;
}

.fechamento.fbits-geral .fbits-banner-centro {
    position: relative;
    margin: 0 auto;
    width: 1000px;
}

.fechamento.fbits-geral .fbits-banner-rodape {
    display: block;
    float: none;
    margin: 0 auto;
    width: 1000px;
    margin-top: 7em;
    margin-bottom: 4em;
    overflow: hidden;
}

span.login-identificado-bemvindo {
    text-align: left;
    display: block;
    font-weight: bold;
    margin-bottom: 1em;
}

    span.login-identificado-bemvindo:after {
        content: "Para criar sua conta no Clube, primeiro acesse sua conta e realize seu cadastro.";
        font-size: 12px;
        font-weight: normal;
        display: block;
        line-height: 15px;
        margin-top: 0.6em;
    }

.campo-cadastro select {
    width: 300px;
    height: 2.6em;
    margin-right: 1em;
}

input#regulamento-aceito {
    clear: both;
    display: block;
    width: 20px;
    float: left;
    top: 3px;
    margin-right: 3px;
    position: relative;
}

    input#regulamento-aceito + label {
        width: 540px !important;
        display: block;
    }

.minhaconta select {
    width: 213px;
    height: 2.4em;
}

label.label-termo-regulamento {
    width: 210px !important;
}

.content-personalizado .formBox span, .content-personalizado .formBox a {
    margin-right: 2em;
    color: #333;
}


.campo-cadastro input#RazaoSocial {
    margin-right: 1em;
    width: 390px;
}

.campo-cadastro input#inscricaoEstadual {
    margin-right: 1em;
}

.aceite-regulamento {
    display: block;
    clear: both;
}

.campo-cadastro input#RazaoSocial {
    width: 390px;
}

.campo-cadastro input#TelefoneComercial {
    margin-right: 142px;
}

.fbits-responsive-aliquota {
    display: block;
    width: 100%;
    float: left;
    clear: both;
    height: 35px;
    line-height: 35px;
}

    .fbits-responsive-aliquota h3.fbits-responsive-aliquota-header {
        text-align: left;
        float: left;
    }

    .fbits-responsive-aliquota .valorAliquotas.fbits-responsive-carrinho-aliquota-valor {
        text-align: right;
        float: right;
    }

.fbits-responsive-carrinho-item-valor-unitario span.aliquotasProduto {
    display: block;
    padding: 0px 10px;
}

.fbits-responsive-carrinho-item-total span.aliquotasProduto {
    display: block;
    padding: 0px 10px;
}

.coluna-fechamento.final .tLined.carrinho td .cartNome {
    min-height: 60px;
}

.coluna-fechamento.final .tLined.carrinho td span.linha-texto-aliquota {
    width: 150px;
    font-size: 12px;
    display: block;
    height: 30px;
    line-height: 30px;
    margin-left: -55px;
    font-weight: bold;
    text-align: left;
    clear: both;
    float: left;
}

.coluna-fechamento.final table td.valor-total-colunas {
    position: relative;
}

    .coluna-fechamento.final table td.valor-total-colunas span.linha-valor-total-final {
        display: block;
    }

    .coluna-fechamento.final table td.valor-total-colunas span.linha-valor-total-aliquota {
        display: block;
        position: absolute;
        bottom: 19px;
        width: 100%;
    }

.fbits-responsive-aliquota {
    display: block;
    width: 100%;
    float: left;
    clear: both;
    text-align: right;
    height: 35px;
    line-height: 35px;
    margin-bottom: 1em;
}

    .fbits-responsive-aliquota h3.fbits-responsive-aliquota-header {
        width: 84%;
        font-size: 14px;
    }

    .fbits-responsive-aliquota .valorAliquotas.fbits-responsive-carrinho-aliquota-valor {
        padding-right: 3em;
    }

.coluna-fechamento.final table.tLined.carrinho .produto-linha td.valor-total-colunas {
    line-height: 1.6em;
    text-align: right;
}

span.linha-valor-total-aliquota:before {
    width: 100%;
    display: block;
}

.coluna-fechamento.final .tLined.carrinho td span.linha-texto-aliquota {
    display: none;
}

.coluna-fechamento tr.noborder.cartLinetr.bgSubt td {
    padding-right: 0 !important;
}

.jcarousel-prev-historico {
    background: url("../i/icons.png") repeat scroll -130px -35px;
    cursor: pointer;
    height: 88px;
    left: -10px;
    position: absolute;
    margin-top: 0;
    width: 50px;
    top: 110px;
}

.fbits-carrossel-historico {
    position: relative;
    overflow: hidden;
    width: 395px;
    height: 140px;
    margin: 0 auto;
}

.jcarousel-next-historico {
    background: url("../i/icons.png") repeat scroll -181px -37px;
    cursor: pointer;
    height: 88px;
    position: absolute;
    right: 0;
    margin-top: 0px;
    top: 110px;
    width: 50px;
}

.fbits-carrossel-historico ul {
    width: 20000em;
    position: relative;
    list-style: none;
    margin: 0;
    padding: 0;
}

.fbits-carrossel-historico li {
    float: left;
    width: 200px;
}



/*Etiqueta atacado Mobile Responsivo*/
.fbits-etiqueta-atacado {
    background: #f2f2f2;
    border: 1px solid #ccc;
    display: block;
    float: left;
    clear: both;
    margin: 1em 0;
    width: 100%;
    padding: 1em;
}

    .fbits-etiqueta-atacado .fbits-etiqueta-atacado-economize {
        display: block;
        float: left;
        clear: both;
        background: #7f7f7f;
        padding: 1em;
        width: 100%;
        text-align: center;
        font-size: 0.8em;
        margin-bottom: 0.5em;
    }

        .fbits-etiqueta-atacado .fbits-etiqueta-atacado-economize a#btnEconomize {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            text-transform: none;
        }

            .fbits-etiqueta-atacado .fbits-etiqueta-atacado-economize a#btnEconomize span {
                font-size: 1.5em;
            }

    .fbits-etiqueta-atacado .fbits-etiqueta-atacado-valores {
        display: block;
        float: left;
        clear: both;
        width: 100%;
    }

        .fbits-etiqueta-atacado .fbits-etiqueta-atacado-valores .fbits-etiqueta-atacado-preco-de {
            display: block;
            float: left;
            width: 46%;
            text-align: right;
            color: #666;
            font-size: 0.8em;
            height: 25px;
            line-height: 25px;
            text-decoration: line-through;
        }

        .fbits-etiqueta-atacado .fbits-etiqueta-atacado-valores .fbits-etiqueta-atacado-preco-por {
            display: block;
            float: right;
            width: 51%;
            text-align: left;
            color: #000;
            font-size: 1em;
            height: 25px;
            line-height: 25px;
            font-weight: bold;
        }

    .fbits-etiqueta-atacado .fbits-etiqueta-atacado-economizou {
        display: block;
        float: left;
        clear: both;
        background: #7f7f7f;
        padding: 1em;
        width: 100%;
        text-align: center;
        font-size: 0.8em;
        margin-bottom: 0.5em;
        color: #fff;
        font-weight: bold;
        text-decoration: none;
        border-radius: 20px 0;
    }

        .fbits-etiqueta-atacado .fbits-etiqueta-atacado-economizou span {
            font-size: 1.5em;
        }

.fbits-responsive-carrinho-item > div.fbits-responsive-carrinho-item-atacado .economize-valor-economizar {
    display: block;
    float: left;
    clear: both;
    background: #7f7f7f;
    padding: 1em;
    width: 100%;
    text-align: center;
    font-size: 0.8em;
    margin-bottom: 0.5em;
    color: #fff;
    text-decoration: none;
    font-weight: bold;
}

.fbits-responsive-carrinho-item > div.fbits-responsive-carrinho-item-atacado {
    background: #f2f2f2;
    border: 1px solid #ccc;
    display: block;
    float: left;
    clear: both;
    margin: 1em 0;
    width: 100%;
    padding: 1em;
    height: auto;
    text-transform: none;
    font-size: initial;
}

    .fbits-responsive-carrinho-item > div.fbits-responsive-carrinho-item-atacado .economize-valor-economizado {
        display: block;
        float: left;
        clear: both;
        background: #7f7f7f;
        padding: 1em;
        width: 100%;
        text-align: center;
        font-size: 0.8em;
        margin-bottom: 0.5em;
        color: #fff;
        font-weight: bold;
        text-decoration: none;
        border-radius: 20px 0;
    }

    .fbits-responsive-carrinho-item > div.fbits-responsive-carrinho-item-atacado .economize-precoDe {
        display: block;
        float: left;
        width: 46%;
        text-align: right;
        color: #666;
        font-size: 0.8em;
        height: 25px;
        line-height: 25px;
        text-decoration: line-through;
    }

    .fbits-responsive-carrinho-item > div.fbits-responsive-carrinho-item-atacado .economize-precoPor {
        display: block;
        float: right;
        width: 51%;
        text-align: left;
        color: #000;
        font-size: 1em;
        height: 25px;
        line-height: 25px;
        font-weight: bold;
    }



/*Assinatura*/
.fechamento.fbits-assinatura .content.center {
    padding: 20px 32px 0;
    max-width: 1100px;
    margin: auto;
    text-align: center;
}

.fechamento .produto-assinatura {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}

    .fechamento .produto-assinatura div#produto, .fechamento div#produto {
        display: block;
        float: left;
        width: 100%;
        clear: both;
        text-align: center;
        margin-bottom: 1rem;
    }

        .fechamento .produto-assinatura div#produto h2, .fechamento div#produto h2 {
            text-transform: none;
            color: #000;
            padding-bottom: 1rem;
        }

        .fechamento .produto-assinatura div[id^="produto-item"], .fechamento div#produto div[id^="produto-item"] {
            display: block;
            float: left;
            width: 100%;
        }

            .fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-foto,
            .fechamento div#produto div[id^="produto-item"] .produto-assinatura-foto {
                display: block;
                float: none;
                margin-right: 0;
            }

            .fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info,
            .fechamento div#produto div[id^="produto-item"] .produto-assinatura-info {
                display: block;
                float: left;
                width: 100%;
            }

                .fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info h1.prodTitle,
                .fechamento div#produto div[id^="produto-item"] .produto-assinatura-info h1.prodTitle {
                    text-align: center;
                }

                .fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info span.red,
                .fechamento div#produto div[id^="produto-item"] .produto-assinatura-info span.red {
                    display: block;
                    float: left;
                    width: 100%;
                }

                .fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info div,
                .fechamento div#produto div[id^="produto-item"] .produto-assinatura-info div {
                    display: block;
                    clear: both;
                    float: left;
                    width: 100%;
                }

        .fechamento .produto-assinatura .fbits-responsive-container-cadastro,
        .fechamento div#produto .fbits-responsive-container-cadastro {
            display: block;
            float: left;
            width: 100%;
            clear: both;
        }

            .fechamento .produto-assinatura .fbits-responsive-container-cadastro .painel-cadastro,
            .fechamento div#produto .fbits-responsive-container-cadastro .painel-cadastro {
                display: block;
                width: 100%;
                margin: 1rem auto 0;
                float: none;
            }

                .fechamento .produto-assinatura .fbits-responsive-container-cadastro .painel-cadastro label,
                .fechamento div#produto .fbits-responsive-container-cadastro .painel-cadastro label {
                    display: none;
                }

        .fechamento .produto-assinatura #left, .fechamento .produto-assinatura #right,
        .fechamento div#produto #left, .fechamento div#produto #right {
            display: block;
            float: left;
            width: 100%;
            margin-top: 1rem;
        }

.fechamento.fbits-assinatura .coluna-fechamento.inicial #divFormNovoEndereco input.input {
    width: 100%;
}

.fechamento.fbits-assinatura .btCadastroEndereco.right {
    padding-top: 1rem;
    padding-bottom: 1rem;
    display: block;
    float: left;
    clear: both;
    width: 100%;
}

    .fechamento.fbits-assinatura .btCadastroEndereco.right .bt {
        width: 49%;
        float: left;
    }

        .fechamento.fbits-assinatura .btCadastroEndereco.right .bt.btCancelarNovoCad {
            margin-right: 2%;
        }

        .fechamento.fbits-assinatura .btCadastroEndereco.right .bt.btNovoEndereco {
            width: 100%;
        }

.fechamento.fbits-assinatura div#lista-cartoes {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}

    .fechamento.fbits-assinatura div#lista-cartoes ul#meus-cartoes,
    .fechamento.fbits-assinatura div#enderero.fbits-assinatura-enderecos div#lista-enderecos ul {
        display: block;
        float: left;
        clear: both;
        width: 100%;
    }

        .fechamento.fbits-assinatura div#lista-cartoes ul#meus-cartoes li.item label,
        .fechamento.fbits-assinatura div#enderero.fbits-assinatura-enderecos div#lista-enderecos ul li,
        .fechamento.fbits-assinatura div#enderero.fbits-assinatura-enderecos div#lista-enderecos ul li label {
            display: block;
            width: 100%;
            height: auto;
        }

            .fechamento.fbits-assinatura div#enderero.fbits-assinatura-enderecos div#lista-enderecos ul li label {
                float: left;
                margin: 0;
                line-height: 1rem;
                text-align: left;
                padding-left: 1.5em;
            }

            .fechamento.fbits-assinatura div#lista-cartoes ul#meus-cartoes li.item label div {
                display: block;
                float: left;
                clear: both;
            }

.fechamento.fbits-assinatura .box-cartao-assinatura .forminline input.input {
    width: 100%;
    float: left;
    margin-left: 0 !important;
    height: 2.5rem;
}

.fechamento.fbits-assinatura a.helpCep {
    padding-top: 1rem;
    display: block;
    float: left;
    width: 100%;
    color: #000;
}

.fechamento.fbits-assinatura .fbits-responsive-cadastro-box .fbits-responsive-linha #naoSeiCep {
    height: auto;
    padding-top: 0;
}

.fechamento.fbits-assinatura .fbits-enderecoCobranca-dropdown {
    max-width: 100%;
    width: 100%;
    border: 1px solid #ccc;
    margin: 1rem 0;
}

.fechamento.fbits-assinatura .center.confirmaAssinatura input.fechaAssinatura {
    width: 100%;
    margin: 1rem 0;
}

.fechamento.fbits-assinatura .fbits-responsive-cadastro-box input#enderecoInfo_CEP {
    width: 100%;
}

.fechamento.fbits-assinatura input#cadastroPessoaFisica,
.fechamento.fbits-assinatura input#cadastroPessoaJuridica,
.fechamento.fbits-assinatura input#TipoSexoId-Masc,
.fechamento.fbits-assinatura input#TipoSexoId-Fem {
    margin-right: 0px;
    margin-left: 5px;
}

.fechamento.fbits-assinatura .fbits-responsive-cadastro-box .fbits-responsive-linha label[for="cadastroPessoaFisica"],
.fechamento.fbits-assinatura .fbits-responsive-cadastro-box .fbits-responsive-linha label[for="cadastroPessoaJuridica"] {
    padding: 0 .2rem;
    font-size: 12px;
    font-size: 0.75rem;
}

.fechamento.fbits-assinatura .box-cartao-assinatura input.cancelarPadraoAssinatura,
.fechamento.fbits-assinatura .box-cartao-assinatura input.bt.btMedium {
    padding: 0 1rem;
}

.fechamento.fbits-assinatura label[for="input-lembrarsenha"] {
    display: none;
}

div#enderero.fbits-assinatura-enderecos {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}

h2.titleColumn.fbits-assinatura-title-enderecos {
    text-align: left;
    font-size: 18px;
    font-size: 1.125rem;
    margin: 0 0 1rem;
}

div#enderero.fbits-assinatura-enderecos div#lista-enderecos {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}

.fechamento .produto-assinatura #right {
    float: right;
    clear: none;
}

.fechamento .produto-assinatura div#left #enderero + br.clear {
    display: none;
}

.fechamento .produto-assinatura .box-cartao-assinatura h2.titleColumn {
    clear: both;
    text-align: center;
    font-size: 18px;
    font-size: 1.125rem;
    margin: 0 0 1rem;
    padding-top: 1rem;
}

.fechamento .produto-assinatura div#left div#lista-cartoes {
    display: block;
    clear: both;
    padding-top: 0;
    float: left;
    width: 100%;
}

.fechamento .produto-assinatura div#right .ou {
    display: none;
}

.fechamento .produto-assinatura div#right .box-cartao-assinatura input.bt.btMedium {
    width: 48%;
    float: right;
}

.fechamento .produto-assinatura div#right .box-cartao-assinatura input#btn-cancelar-cartao-credito {
    color: #333;
    background: #ccc;
    width: 48%;
    float: left;
}

.fechamento .produto-assinatura .center.confirmaAssinatura {
    display: block;
    float: left;
    width: 100%;
    text-align: center;
    padding: 1rem 0;
}

    .fechamento .produto-assinatura .center.confirmaAssinatura input.fechaAssinatura {
        height: 45px;
        padding: 0 1rem;
        background: #333;
        color: #fff;
        font-weight: normal;
    }

.fechamento .produto-assinatura .fbits-responsive-tipo-cadastro.subpassos.subpasso1 {
    display: block;
    float: left;
    width: 100%;
    clear: both;
    padding-bottom: 1rem;
}

.fechamento .produto-assinatura #right.fbits-assinatura-cadastro-endereco-cartao .forminline input#txtCEP {
    width: 50%;
}

/*Minha Conta detalhe do pedido*/
.meusPedidos .pedidoStatus {
    line-height: 1.4rem;
    margin-top: 1rem;
    background: #fff;
    padding-left: 1rem;
    padding-bottom: 1rem;
    padding-top: 1rem;
    border-bottom: 1px solid #ccc;
    margin-bottom: 1rem;
    display: block;
    float: left;
    width: 100%;
}

    .meusPedidos .pedidoStatus .bt.recompra {
        width: 250px;
        height: 2.5rem;
        line-height: 2.5rem;
        background: #333;
        color: #fff;
        display: block;
        float: left;
        text-decoration: none;
    }

    .meusPedidos .pedidoStatus a.boletoImprimir.bt {
        width: 250px;
        height: 2.5rem;
        line-height: 2.5rem;
        background: #333;
        color: #fff;
        display: block;
        float: right;
        text-decoration: none;
    }

.fbits-pedido-minha-conta-boleto {
    display: block;
    clear: both;
    text-align: center;
}

    .fbits-pedido-minha-conta-boleto a.bt.boletoImprimir {
        width: 250px;
        height: 2.5rem;
        line-height: 2.5rem;
        background: #333;
        color: #fff;
        display: block;
        text-decoration: none;
        clear: both;
        margin: 20px auto;
    }

.meusPedidos .boxes {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}

    .meusPedidos .boxes table.tLined.carrinho {
        margin-left: -1rem;
        margin-right: 0;
        background: #fff;
        padding-left: 1rem;
        padding-top: 1rem;
        position: relative;
        border-bottom: 0;
    }

        .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho thead {
            display: block;
            float: left;
            width: 100%;
        }

            .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho thead .headerTabela {
                height: 30px;
                width: 100%;
                line-height: 30px;
                display: table-row;
            }

        .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho th {
            font-size: 15px;
            font-size: .9375rem;
            float: left;
            display: table-cell;
            width: 20%;
        }

            .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho th.txtCenter.fbits-responsive-carrinho-header-ean {
                width: 10%;
            }

            .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho th.fbits-responsive-carrinho-header-coluna-descricao {
                width: 30%;
            }

        .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr {
            display: block;
            float: left;
            width: 100%;
        }

            .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td.photo.fbits-responsive-carrinho-item-imagem {
                width: 10%;
            }

            .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td.name.fbits-responsive-carrinho-item-descricao {
                width: 20%;
            }

            .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td.txtCenter.fbits-responsive-carrinho-item-ean {
                width: 10%;
            }

            .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td {
                width: 20%;
                min-width: inherit;
            }

                .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td.preco.fbits-responsive-carrinho-item-valor-unitario,
                .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td.preco.last.fbits-responsive-carrinho-item-total {
                    /*  width: 20% !important; */
                    text-align: center !important;
                }

    .meusPedidos .boxes tfoot.fbits-responsive-carrinho-adicional tr td:first-child {
        width: 50%;
        text-align: left;
        float: left;
        display: block;
    }

    .meusPedidos .boxes tfoot.fbits-responsive-carrinho-adicional tr td:last-child {
        width: 50%;
        float: right;
        text-align: right;
    }

    .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr.footTable.noborder.cartTotal td:last-child {
        display: none;
    }

    .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr.footTable.noborder.cartTotal td.total {
        width: 50%;
        float: right;
        text-align: right;
    }

.meusPedidos .boxDefault.confirmacao {
    padding-top: 1rem;
    color: #000;
    background: #fff;
    margin-left: -1rem;
    padding-left: 1rem;
    padding-bottom: 1rem;
    margin-bottom: 1.7rem;
    border-bottom: 0;
    font-size: 16px;
    font-size: 1rem;
    clear: both;
}

.meusPedidos .buttons {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    padding: 1rem 0;
}

    .meusPedidos .buttons .bt.btcontinuar {
        margin: 0;
        text-decoration: none;
        padding-left: 1rem !important;
        padding-right: 1rem !important;
        text-align: center !important;
        width: 250px;
        line-height: 2.2rem;
        height: 2.2rem;
        font-size: 20px;
        font-size: 1.25rem;
    }

    .meusPedidos .buttons .bt.btfinalizar {
        text-decoration: none;
        color: #fff;
        padding-left: 1rem !important;
        padding-right: 1rem !important;
        text-align: center !important;
        width: 250px;
        line-height: 2.2rem;
        height: 2.2rem;
        font-size: 20px;
        font-size: 1.25rem;
    }





@media (min-width: 768px) {
    .coluna-fechamento .noborder.cartLinetr.bgSubt td.destaqueGridTotalS.aright {
        font-size: 16px;
    }

    /*Etiqueta atacado Tablet Responsivo*/
    .fbits-etiqueta-atacado .fbits-etiqueta-atacado-economize, .fbits-etiqueta-atacado .fbits-etiqueta-atacado-economizou {
        font-size: 0.6em;
    }

        .fbits-etiqueta-atacado .fbits-etiqueta-atacado-economize a#btnEconomize span, .fbits-etiqueta-atacado .fbits-etiqueta-atacado-economizou span {
            font-size: 1.2em;
        }

    .fbits-etiqueta-atacado .fbits-etiqueta-atacado-valores .fbits-etiqueta-atacado-preco-de {
        font-size: 0.6em;
    }

    .fbits-etiqueta-atacado .fbits-etiqueta-atacado-valores .fbits-etiqueta-atacado-preco-por {
        font-size: 0.7em;
    }

    .fbits-responsive-carrinho-item > div.fbits-responsive-carrinho-item-atacado {
        width: 50%;
        float: right;
    }



    /*Assinatura*/
    .fechamento.fbits-assinatura .content.center {
        padding: 20px 15px 0;
    }

    .fechamento .produto-assinatura {
        display: block;
        clear: both;
        margin: auto;
        padding-bottom: 2rem;
        max-width: 1200px;
        float: none;
    }

        .fechamento .produto-assinatura .fbits-responsive-container-cadastro {
            float: none;
            max-width: 500px;
            margin: auto;
        }

        .fechamento .produto-assinatura #left {
            width: 32%;
            margin-right: 2%;
            margin-top: 0;
        }

        .fechamento .produto-assinatura #right {
            float: right;
            clear: none;
            width: 66%;
            margin: 0;
        }

        .fechamento .produto-assinatura .fbits-responsive-container-cadastro .painel-cadastro {
            max-width: 300px;
        }

        .fechamento .produto-assinatura #right .box-endereco-assinatura {
            float: left;
            width: 48%;
        }

        .fechamento .produto-assinatura #right .box-cartao-assinatura {
            width: 50%;
            float: right;
        }

            .fechamento .produto-assinatura #right .box-cartao-assinatura h2.titleColumn {
                padding-top: 0;
            }

    .confirmacao-assinatura {
        clear: both;
        display: block;
        max-width: 1200px;
        margin: auto;
    }
}


@media (min-width: 1025px) {
    /*Etiqueta atacado*/
    .fbits-etiqueta-atacado .fbits-etiqueta-atacado-economize, .fbits-etiqueta-atacado .fbits-etiqueta-atacado-economizou {
        font-size: .8em;
    }

        .fbits-etiqueta-atacado .fbits-etiqueta-atacado-economize a#btnEconomize span, .fbits-etiqueta-atacado .fbits-etiqueta-atacado-economizou span {
            font-size: 1.5em;
        }

    .fbits-etiqueta-atacado .fbits-etiqueta-atacado-valores .fbits-etiqueta-atacado-preco-de {
        font-size: .8em;
    }

    .fbits-etiqueta-atacado .fbits-etiqueta-atacado-valores .fbits-etiqueta-atacado-preco-por {
        font-size: 1em;
    }

    .fbits-responsive-carrinho-item > div.fbits-responsive-carrinho-item-atacado .economize-valor-economizar {
        width: 60%;
    }

    .fbits-responsive-carrinho-item > div.fbits-responsive-carrinho-item-atacado {
        width: 30%;
    }

        .fbits-responsive-carrinho-item > div.fbits-responsive-carrinho-item-atacado .economize-valor-economizado {
            width: 60%;
        }

        .fbits-responsive-carrinho-item > div.fbits-responsive-carrinho-item-atacado .economize-precoDe {
            clear: none;
            float: left;
            width: 40%;
            height: 20px;
            line-height: 20px;
            text-align: center;
        }

        .fbits-responsive-carrinho-item > div.fbits-responsive-carrinho-item-atacado .economize-precoPor {
            width: 40%;
            text-align: center;
            float: left;
            height: 20px;
            line-height: 20px;
        }



    /*Assinatura*/
    .fechamento.fbits-assinatura .content.center {
        padding: 20px 32px 0;
    }

    .fechamento .produto-assinatura div[id^="produto-item"] {
        display: -webkit-flex;
        -webkit-align-items: center;
        display: flex;
        align-items: center;
    }

        .fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-foto {
            float: left;
            padding-right: 1rem;
            width: 45%;
            text-align: right;
        }

        .fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info {
            width: 55%;
            text-align: left;
        }

            .fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info h1.prodTitle {
                text-align: left;
            }

    .fechamento .produto-assinatura .fbits-responsive-container-cadastro .painel-cadastro {
        max-width: 500px;
    }
}

.itemPage, .itemFirstPage {
    padding: 0;
    padding: 0;
    margin: 0;
    position: relative;
    display: inline;
}
/* The Modal (background) */
.fbits-Contraproposta-modal {
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* The Close Button */
.fbits-Contraproposta-close {
    color: #000;
    float: right;
    font-size: 28px;
    font-weight: normal;
    margin-top: 4px;
}

    .fbits-Contraproposta-close:hover,
    .fbits-Contraproposta-close:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }

.fbits-Contraproposta-modal-header {
    padding: 2px 16px;
    background-color: #E7E7E7;
    color: black;
}

.fbits-Contraproposta-modal-body {
    padding: 15px 30px;
}

.fbits-Contraproposta-input-group-addon {
    padding: 6px 5px;
    font-size: 14px;
    font-weight: 400;
    line-height: 1;
    color: #555;
    text-align: center;
    background-color: #eee;
    border: 1px solid #ccc;
    width: 1%;
    display: inline;
    font-weight: bold;
}

.fbits-Contraproposta-form-control {
    display: inline;
    width: 84%;
    padding: 6px 12px;
    font-size: 14px;
    color: #555;
    background-color: #fff;
    border: 1px solid #ccc;
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    margin-left: -4px;
}

.fbits-Contraproposta-labelInline {
    display: inline;
}

.fbits-Contraproposta-bold {
    font-weight: bold;
}

.fbits-Contraproposta-info {
    color: white;
    background-color: #D44D4A;
    text-align: center;
    font-size: 12px;
    padding: 5px;
    margin-bottom: 15px;
    display: none;
}

.fbits-Contraproposta-center {
    text-align: center;
}

.fbits-Contraproposta-titulo {
    text-align: left;
    padding: 5px;
}

.fbits-Contraproposta-img-coin {
    width: 25px;
    float: left;
    margin-top: 7px;
    margin-right: 8px;
}

.fbits-Contraproposta-coluna-esquerda {
    width: 46%;
    text-align: right;
    line-height: 50px;
    float: left;
}

.fbits-Contraproposta-coluna-direita {
    float: right;
    width: 50%;
    line-height: 50px;
    text-align: left;
}

.fbits-Contraproposta-div-inputs {
    width: 100%;
}

.fbits-Contraproposta-envelope-i {
    padding: 4px 3px;
}

#BtnGeraContraProposta {
    background-color: #757575;
    color: white;
    font-size: 16px;
}

.fbits-Contraproposta-precoProduto {
    background-color: #EEEEEE;
}

.fbits-Contraproposta-url-Label {
    margin-top: 5px;
}

.fbits-Contraproposta-div-url {
    margin-top: 10px;
}

.fbits-Contraproposta-div-url-input {
    margin-top: 10px;
}

.fbits-Contraproposta-url-span {
    padding: 6px 7px;
}

.fbits-Contraproposta-url-input {
    width: 84%;
    margin-right: 1px;
}

.fbits-Contraproposta-info-textarea {
    margin-top: 10px;
    width: 99.8%;
    margin-bottom: 10px;
    margin-left: 1px;
}

.fbits-Contraproposta-gerar-button {
    background-color: #757575;
    color: #fff;
    height: 2.5rem;
    border: 0;
    text-align: center;
    font-weight: normal;
    border-radius: 0;
    cursor: pointer;
    user-select: none;
    -webkit-appearance: none;
    padding: 10px;
}

.fbits-Contraproposta-resposta-div {
    display: none
}




.meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho th.txtCenter.fbits- responsive-carrinho-header-ean {
    display: none !important;
}

.meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho th {
    width: 16%;
}

.meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td {
    width: 15%;
}

.meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho td.preco.fbits-responsive- carrinho-item-total {
    text-align: center !important;
}

.meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td.preco.fbits- responsive-carrinho-item-valor-unitario, .meusPedidos .boxes table.tLined.carrinho.fbits- responsive-carrinho tr td.preco.last.fbits-responsive-carrinho-item-total {
    width: 17% !important;
    text-align: center !important;
}

.meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td {
    width: 16%;
}

.meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho td.status.last.fbits- responsive-carrinho-item-status {
    width: 15% !important;
}

.meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td.txtCenter.fbits- responsive-carrinho-item-ean {
    display: none;
}

.historicoPedido input.bt.btGrande {
    width: 100%;
    background: #eeeeee;
    color: #000;
    font-size: 1.2em;
}

body.minhaConta .content.minhaconta .mainBarInterna .meusPedidos .boxes td.preco {
    width: auto !important;
    text-align: center !important;
    min-width: 10.1em;
}

.meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td {
    width: 16%;
    line-height: 1.5em;
}

    .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td.txtCenter.fbits-responsive-carrinho-item-ean {
        width: 10%;
        line-height: 1.5em;
    }

    .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td.name.fbits-responsive-carrinho-item-descricao {
        width: 20% !important;
        text-align: left;
        line-height: 1.5em;
    }

.meusPedidos td.txtCenter.fbits-responsive-carrinho-item-quantidade.tLined {
    width: 10% !important;
    line-height: 1.5em;
}

.meusPedidos td.preco.fbits-responsive-carrinho-item-valor-unitario {
    width: 15% !important;
    line-height: 1.5em;
}

.meusPedidos td.preco.fbits-responsive-carrinho-item-total {
    width: 11% !important;
    line-height: 1.5em;
}

.meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho th {
    width: 11%;
    white-space: nowrap;
}

    .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho th.fbits-responsive-carrinho-header-coluna-descricao {
        width: 30%;
    }

    .meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho th.txtCenter.fbits-responsive-carrinho-header-ean {
        width: 10%;
    }

.meusPedidos th.txtCenter.fbits-responsive-carrinho-header-coluna-quantidade {
    width: 10% !important;
}

.meusPedidos th.last.txtCenter.fbits-responsive-carrinho-header-coluna-preco {
    width: 15% !important;
}

.meusPedidos .btGrande {
    width: 100%;
    padding: 0 4px;
    font-size: 1em;
    margin-top: 1em;
    height: 2.5em;
}

@media (min-width: 768px) {
    .meusPedidos .boxes td.name + td.txtCenter {
        display: inline-block !important;
    }

    .meusPedidos .boxes table.tLined.carrinho {
        border-bottom: 0;
    }

    tr.produtosCart {
        height: 132px;
    }
}

.meusPedidos .fbits-responsive-carrinho-item-descricao span.fbits-responsive-carrinho-item-atributos {
    font-weight: normal;
}

.content.minhaconta .meusPedidos .boxes tfoot.fbits-responsive-carrinho-adicional td {
    padding: 0.6em 0;
    white-space: nowrap;
}

.content.minhaconta .meusPedidos .fbits-responsive-carrinho-item-imagem img {
    margin: 0;
}

.fbits-minhaconta-produto.produtosCart.fbits-responsive-carrinho-item.rastreamento td {
    padding: 0;
    margin: 0;
    min-width: 100% !important;
}

.fbits-minhaconta-produto.produtosCart.fbits-responsive-carrinho-item.rastreamento {
    height: 4em;
    margin-top: -4em;
}

.pedidoStatus a.bt.btMedium {
    float: left;
    width: 45%;
}

.pedidoStatus a[href="Recompra"] {
    color: #fff;
    background: #333;
    text-decoration: none;
    width: 45%;
    display: block;
    height: 32px;
    line-height: 32px;
    margin: 1em auto 0;
    float: right;
}

.fechamento.fbits-assinatura .coluna-fechamento {
    width: 33%;
    margin-right: 1em;
}

    .fechamento.fbits-assinatura .coluna-fechamento.titulocentro.final {
        width: 27%;
        position: absolute;
        right: 0;
        top: 186px;
    }

.fechamento.fbits-assinatura input[type="radio"] {
    float: left;
    position: relative;
    top: 17px;
}

.fechamento.fbits-assinatura .meusEnderecos input[type="radio"] {
    margin-bottom: -14px;
    top: 4px;
    position: relative;
}

.fechamento.fbits-assinatura div#produto * {
    text-align: left;
}

.fechamento.fbits-assinatura input#EditarRecompra {
    max-width: 250px;
    text-align: center;
}

.fechamento.fbits-assinatura ul#meusEnderecos {
    max-height: 370px;
    overflow-y: scroll;
    padding-right: 1em;
}

.fechamento.fbits-assinatura ul#meus-cartoes {
    max-height: 370px;
    overflow-y: scroll;
    padding-right: 1em;
}

.fechamento.fbits-assinatura .coluna-fechamento.central label {
    margin-right: 2px;
    text-align: left;
    width: 100%;
    line-height: 1em;
    height: 2em;
    margin-top: 0.5em;
}

.fechamento.fbits-assinatura div#lista-cartoes ul#meus-cartoes li.item label div {
    line-height: 1.4em;
}

.fechamento.fbits-assinatura .meus-cartoes .item a[data-ajax-update="#formulario-cartao-credito"] {
    display: block;
    float: right;
    color: #000;
    font-size: 0;
    text-decoration: none;
    display: inline-block;
    background: url(../i/SVG-diversos/icone-alterar-endereco.svg) no-repeat;
    background-size: 20px;
    width: 20px;
    height: 26px;
    position: absolute;
    right: 0;
    margin-right: 0;
    margin-top: 0;
    top: 4px;
    opacity: 1;
}

.fechamento.fbits-assinatura .meus-cartoes .item {
    border-bottom: 1px solid #ccc;
    position: relative;
}

.fechamento.fbits-assinatura .item label[for^="rbCartaoCredito"] {
    display: inline-block;
    clear: none;
    float: none;
    padding-left: 2.1em;
    top: -16px;
}

.fechamento.fbits-assinatura div#pagamento.fbits-assinatura-pagamento h2.titleColumn {
    text-align: left;
}

.fechamento.fbits-assinatura .fbits-bandeiras-disponiveis {
    clear: both;
    padding-top: 1em;
}

.fechamento.fbits-assinatura div#formulario-cartao-credito .forminline {
    padding: 0em 2em;
}

.fechamento.fbits-assinatura .forminline input#CodigoSeguranca {
    width: 6.4rem !important;
}

.fechamento.fbits-assinatura h2.titleColumn {
    float: left;
    font-size: 1.125rem;
}

.fechamento.fbits-assinatura div#produto-itens {
    float: left;
}

.fechamento.fbits-assinatura #produto-itens > div {
    text-align: left;
}

.fechamento.fbits-assinatura input#btnFinalizarPedidoFinal2 {
    max-width: 300px;
    margin-top: 3em;
    font-size: .9375rem;
}

.fechamento.fbits-assinatura div#valores {
    float: left;
    clear: both;
    text-align: left;
    margin-top: 1em;
    font-weight: bold;
}

.fechamento.fbits-assinatura .coluna-fechamento.final #valorTotal {
    font-size: 1em;
}

.fechamento.fbits-assinatura .fbits-div-precos-assinatura {
    clear: both;
    font-size: 0.9em;
    margin-bottom: 1em;
}

.fechamento.fbits-assinatura span.preoPor-assinatura {
    clear: both;
    display: block;
}

.fechamento.fbits-assinatura table .arrow {
    text-decoration: none;
    font-size: 14px;
    font-size: .875rem;
    border: 1px solid #000;
    color: #fff;
    display: inline-block;
    text-indent: 0;
    height: 32px;
    padding: 0;
    width: 25px;
    line-height: 32px;
    margin-right: 0;
    margin-left: 0;
    z-index: 2;
    vertical-align: middle;
    top: 0;
    position: relative;
    background: #000;
    background-position: 0 6px;
    background-size: contain;
    text-align: center;
}

.fechamento.fbits-assinatura a[id^="removerProdutoRecompra"] {
    background: url(../i/SVG-diversos/icone-remover-carrinho.svg) no-repeat;
    width: 1.2rem;
    height: 1.2rem;
    background-size: cover;
    display: block;
    float: none;
    margin: auto;
    text-indent: -9999px;
    border: 0;
    cursor: pointer;
}

.fechamento.fbits-assinatura #fancybox-content td, .fechamento.fbits-assinatura #fancybox-content th {
    font-size: 0.9em;
    text-align: center;
}

.fechamento.fbits-assinatura #fancybox-content th {
    font-size: .9em;
    padding-top: 2em;
}

.fechamento.fbits-assinatura #fancybox-content table {
    width: 100%;
    margin-bottom: 1em;
}

    .fechamento.fbits-assinatura #fancybox-content table input.qtdCarrinho {
        margin-left: -4px;
        margin-right: -4px;
    }

.fechamento.fbits-assinatura #fancybox-content {
    padding: 10px;
}

.box-endereco-assinatura label {
    text-align: left;
}

.box-cartao-assinatura label {
    text-align: left;
}

.fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info h1.prodTitle, .fechamento div#produto div[id^="produto-item"] .produto-assinatura-info h1.prodTitle {
    text-align: left;
}

.fechamento .produto-assinatura #right.fbits-assinatura-cadastro-endereco-cartao .forminline a.helpCep {
    float: left;
    display: inline;
    height: 1.9875rem;
    line-height: 0.6875rem;
    font-size: 15px;
    font-size: 0.7375rem;
    color: #000;
    width: auto;
    margin-left: 1em;
}

td.recompra-foto img {
    max-width: 54px;
}

td.recompra-nomeVariante {
    text-align: left !important;
}

.recompra-titulo {
    font-size: 1.2em;
    background: #eee;
    padding: 4px;
    padding-left: 0.5em;
}

.produto-assinatura.pedidoLinhas .fbits-assinatura-texto-valor-frete {
    display: none;
}

.produto-assinatura.pedidoLinhas h1.prodTitle {
    text-align: left !important;
}

.produto-assinatura.pedidoLinhas .produto-assinatura-foto {
    float: left !important;
    width: 14em !important;
}

.produto-assinatura.pedidoLinhas .produto-assinatura-info {
    float: left;
    display: inline-block;
    width: 60% !important;
}

@media (max-width: 360px) {
    .fbits-Div-BtnContraproposta {
        width: 230px;
    }

    .fbits-Img-BtnContraproposta {
        margin-left: 20px;
    }
}

.fbits-Div-BtnContraproposta {
    background-color: white;
    border: 1px solid;
    padding: 2px;
    width: 100%;
    max-width: 300px;
    margin-left: auto;
    margin-right: auto;
    margin-top: 1em;
    margin-bottom: 1.5em;
    clear: both;
}

.fbits-Img-BtnContraproposta {
    width: 25px;
    float: left;
    margin-left: 60px;
}

.fbits-Btn-BtnContraproposta {
    background-color: transparent;
    height: 2em;
    display: inline-block;
    padding-left: 10px;
    cursor: pointer;
}

.fbits-Contraproposta-modal-content {
    width: 90%;
    border: 0;
    margin: 0 auto;
    background: #fff;
}

.fbits-Contraproposta-url-Label {
    margin-top: 5px;
    clear: both;
    display: block;
}

.fbits-Contraproposta-bold {
    font-weight: bold;
    clear: both;
    display: block;
}

.fbits-Contraproposta-coluna-direita {
    float: left;
    width: 47%;
    line-height: 50px;
    text-align: left;
    margin-left: 1em;
}

.fbits-Contraproposta-input-group-addon {
    min-width: 31px;
    display: inline-block;
    margin-right: 2px;
    font-weight: bold;
    height: 30px;
    top: -1px;
    position: relative;
    width: auto;
}

.fbits-Contraproposta-form-control {
    width: 57%;
}

.fbits-Contraproposta-div-url, .fbits-Contraproposta-div-url + br + div {
    margin-top: 10px;
    clear: both;
    width: 90%;
    margin: 0 auto;
    border: 0;
    padding-top: 0.7em;
    padding: 0.6em;
    position: relative;
    top: 1em;
}

.fbits-Contraproposta-info-textarea {
    margin-top: 10px;
    width: 96%;
    margin-bottom: 40px;
    margin-left: 1px;
}

.fbits-Contraproposta-gerar-button {
    min-width: 250px;
    max-width: 320px;
    margin: 0 auto;
}

#BtnGeraContraProposta {
    cursor: pointer;
}

div#ContrapropostaResult {
    padding: 4em 0;
}

.fbits-Contraproposta-modal {
    z-index: 9999;
}

.fbits-Contraproposta-div-url, .fbits-Contraproposta-div-url + br + div {
    position: static !important;
}

.fbits-Contraproposta-input-group-addon {
    min-width: 31px;
    display: block;
    margin-right: 7px;
    font-weight: bold;
    float: left;
    height: 30px;
    top: 10px;
    position: relative;
    width: auto;
}

.fbits-Contraproposta-url-span {
    padding: 6px 7px;
    position: relative !important;
    top: 0px !important;
}

@media (max-width: 767px) {
    .fbits-Contraproposta-bold {
        font-weight: bold;
        clear: both;
        display: block;
        white-space: normal;
        font-size: 0.8em;
        text-align: right;
        line-height: 1em;
        margin-top: 1em;
        margin-bottom: 2.7em;
    }

    .fbits-Contraproposta-modal-body {
        padding: 0;
    }

    label#info-campo {
        padding: 0;
        margin: 0;
        text-align: center;
    }

    label.fbits-Contraproposta-bold.fbits-Contraproposta-url-Label {
        margin-bottom: 0;
        text-align: left;
    }

    label.fbits-Contraproposta-bold.infos {
        margin-bottom: 0;
        text-align: left;
    }
}

button#btnAlertaValores {
    padding-left: 1em;
    padding-right: 1em;
}

.tituloAlertaValores {
    display: block;
    width: 50vw;
    margin-top: 0.5em;
    margin-bottom: 1em;
    text-align: center;
    font-weight: bolder;
}

@media (max-width: 767px) {
    .tituloAlertaValores {
        width: 90vw;
    }
}

button#btnAlertar {
    padding-left: 1em;
    padding-right: 1em;
    margin: 0 auto;
    margin-top: 1em;
    margin-bottom: 1em;
    display: block;
}

label[for="alertPrecoAtual"], label[for="alertPrecoDesejado"], label[for="alertPrecoEmail"] {
    width: 200px;
    font-size: 0.9em;
    display: inline-block;
    margin-top: 0.9em;
    margin-bottom: 1.7em;
    text-align: right;
}

input#alertEmail {
    max-width: 13em;
}

input#alertPrecoAtual, input#alertPrecoDesejado {
    max-width: 9em;
}

.minhaconta .historicoPedido table.tLined.carrinho.histPed {
    border-bottom: 1px solid #ccc !important;
}

@media (min-width: 768px) {
    .histPed tr, .bgGrupo tr {
        border-bottom: 0;
    }
}

.tituloAlertaValores {
    padding: 2px 16px;
    background-color: #E7E7E7;
    color: black;
    font-size: 1.2em;
    margin-top: 0;
}

.fbits-componente-listacompra-preco-varejo {
    clear: both;
    margin-left: 35%;
}

.fbits-componente-listacompra-preco-atacado {
    margin-left: 35%;
}

.fbits-componente-listacompra-apenas-revendedor {
    margin-left: 35%;
}

input.input.nowide[name="inputCartaoCodigoSeguranca"] {
    max-width: 48%;
}

div#divTrayCheckout .forminline {
    margin-bottom: 1em;
}

    div#divTrayCheckout .forminline input[type="radio"] {
        float: left;
    }

h2.titulo-recompra {
    clear: both;
    margin-top: 1em;
    position: relative;
    display: block;
    top: 1em;
    margin-left: 1.5em;
}

.detalhe-recompra {
    text-align: left;
    margin: 30px 0px 1rem;
}

div#accordion-recompra {
    margin-bottom: 3em;
}

input[type="tel"] {
    border: 1px solid #dcdcdc;
    height: 2.5rem;
    text-indent: 1rem;
}

/* ---> Carrossel Compre Junto */
.divCompreJuntoCarrossel .slick-arrow:hover {
    color: dimgray;
    background: darkgray;
}

.divCompreJuntoCarrossel .slick-prev, .divCompreJuntoCarrossel .slick-next {
    position: absolute;
    display: block;
    height: 50px;
    width: 35px;
    line-height: 0px;
    font-size: 0px;
    cursor: pointer;
    background: #e1e1e1;
    top: 50%;
    margin-top: -10px;
    padding: 0;
    border: none;
    outline: none;
    z-index: 2;
    text-align: center;
}

    .divCompreJuntoCarrossel .slick-next:before {
        content: ">";
    }

    .divCompreJuntoCarrossel .slick-prev:before {
        content: "<";
    }

    .divCompreJuntoCarrossel .slick-prev:before, .divCompreJuntoCarrossel .slick-next:before {
        font-family: 'slick';
        font-size: 20px;
        line-height: 1;
        color: black;
        opacity: .75;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }

    .divCompreJuntoCarrossel .slick-prev:hover, .divCompreJuntoCarrossel .slick-next:hover {
        background: #e1e1e1;
        opacity: .8;
    }

.divCompreJuntoCarrossel .spotRecomendadoText, .divCompreJuntoCarrossel #divFormaPagamento {
    text-align: center;
}

.divPaiCarrosselCompreJunto {
    background-color: #F6F6F6;
    border: solid rgba(47, 46, 46, 0);
    margin-left: auto;
    margin-right: auto;
    clear: both;
    max-width: 350px;
}

.spotCompreJuntoPagamento {
    clear: both;
    text-align: center;
}
/* ---> Fim Carrossel Compre Junto */

.fbits-botaoComoChegar {
    border: solid;
    border-color: black;
    border-width: 1px;
    text-decoration: none;
    color: black;
    padding: 1em;
    font-size: 10px;
    font-size: .8125rem;
    line-height: 1.5rem;
}


span.fbits-retirada-agendada-espaco {
    padding-left: 15px;
}

span.fbits-retirada-agenda-padding-top {
    padding-top: 10px;
}

.fbits-retirada-agenda-exibe-informacoes-retirada-agendada {
    margin-top: 10px;
    margin-left: 25%;
}

span.fbits-informacoes-retirada-agendada {
    overflow: hidden;
    display: none;
}

span.fbits-informacoes-retirada-agendada-nome-label {
    padding-top: 10px;
}

.fbits-informacoes-retirada-agendada-nome-text {
    float: none;
    display: inline-block;
    width: 87%;
    margin-left: 10px;
}

.fbits-informacoes-retirada-agendada-numero-documento-text {
    float: none;
    display: inline-block;
    width: 53%;
    margin-left: 12px;
}

.fbits-informacoes-retirada-agendada-observacoes {
    text-align: center;
    padding-top: 10px;
}


.fbits-retirada-agendada-box-periodo {
    border-left: 2px solid #808080;
    width: 100px;
    height: auto;
    float: right;
    padding-left: 20px;
}

.fbits-responsive-carrinho-item-descricao a.botao-add-embalagem {
    display: block;
    float: none;
    width: 100%;
    padding-top: 0;
    /*line-height: 25px;
    height: 30px;*/
}

.fbits-responsive-carrinho-item-descricao span.fbits-responsive-carrinho-item-atributos, .coluna-fechamento.final .spnAtributos {
    height: 32px;
    overflow: visible;
}


/**LISTA EVENTOS*/

.mg-t-0 {
    margin-top: 0px !important;
}

.pd-t-0 {
    padding-top: 0px !important;
}

.mg-b-0 {
    margin-bottom: 0px !important;
}

.pd-b-0 {
    padding-bottom: 0px !important;
}

.mg-l-0 {
    margin-left: 0px !important;
}

.pd-l-0 {
    padding-left: 0px !important;
}

.mg-r-0 {
    margin-right: 0px !important;
}

.pd-r-0 {
    padding-right: 0px !important;
}

.mg-t-5 {
    margin-top: 5px !important;
}

.pd-t-5 {
    padding-top: 5px !important;
}

.mg-b-5 {
    margin-bottom: 5px !important;
}

.pd-b-5 {
    padding-bottom: 5px !important;
}

.mg-l-5 {
    margin-left: 5px !important;
}

.pd-l-5 {
    padding-left: 5px !important;
}

.mg-r-5 {
    margin-right: 5px !important;
}

.pd-r-5 {
    padding-right: 5px !important;
}

.mg-t-10 {
    margin-top: 10px !important;
}

.pd-t-10 {
    padding-top: 10px !important;
}

.mg-b-10 {
    margin-bottom: 10px !important;
}

.pd-b-10 {
    padding-bottom: 10px !important;
}

.mg-l-10 {
    margin-left: 10px !important;
}

.pd-l-10 {
    padding-left: 10px !important;
}

.mg-r-10 {
    margin-right: 10px !important;
}

.pd-r-10 {
    padding-right: 10px !important;
}

.mg-t-15 {
    margin-top: 15px !important;
}

.pd-t-15 {
    padding-top: 15px !important;
}

.mg-b-15 {
    margin-bottom: 15px !important;
}

.pd-b-15 {
    padding-bottom: 15px !important;
}

.mg-l-15 {
    margin-left: 15px !important;
}

.pd-l-15 {
    padding-left: 15px !important;
}

.mg-r-15 {
    margin-right: 15px !important;
}

.pd-r-15 {
    padding-right: 15px !important;
}

.mg-t-20 {
    margin-top: 20px !important;
}

.pd-t-20 {
    padding-top: 20px !important;
}

.mg-b-20 {
    margin-bottom: 20px !important;
}

.pd-b-20 {
    padding-bottom: 20px !important;
}

.mg-l-20 {
    margin-left: 20px !important;
}

.pd-l-20 {
    padding-left: 20px !important;
}

.mg-r-20 {
    margin-right: 20px !important;
}

.pd-r-20 {
    padding-right: 20px !important;
}

.mg-t-25 {
    margin-top: 25px !important;
}

.pd-t-25 {
    padding-top: 25px !important;
}

.mg-b-25 {
    margin-bottom: 25px !important;
}

.pd-b-25 {
    padding-bottom: 25px !important;
}

.mg-l-25 {
    margin-left: 25px !important;
}

.pd-l-25 {
    padding-left: 25px !important;
}

.mg-r-25 {
    margin-right: 25px !important;
}

.pd-r-25 {
    padding-right: 25px !important;
}

.mg-t-30 {
    margin-top: 30px !important;
}

.pd-t-30 {
    padding-top: 30px !important;
}

.mg-b-30 {
    margin-bottom: 30px !important;
}

.pd-b-30 {
    padding-bottom: 30px !important;
}

.mg-l-30 {
    margin-left: 30px !important;
}

.pd-l-30 {
    padding-left: 30px !important;
}

.mg-r-30 {
    margin-right: 30px !important;
}

.pd-r-30 {
    padding-right: 30px !important;
}

.mg-t-50 {
    margin-top: 50px !important;
}

.pd-t-50 {
    padding-top: 50px !important;
}

.mg-b-50 {
    margin-bottom: 50px !important;
}

.pd-b-50 {
    padding-bottom: 50px !important;
}

.mg-l-50 {
    margin-left: 50px !important;
}

.pd-l-50 {
    padding-left: 50px !important;
}

.mg-r-50 {
    margin-right: 50px !important;
}

.pd-r-50 {
    padding-right: 50px !important;
}

.tray-w, .tray-r, .tray-w::after, .tray-r::after {
    *zoom: 1;
}

    .tray-w:before, .tray-r:before, .tray-w:after, .tray-r:after {
        content: " ";
        display: table;
    }

    .tray-w:after, .tray-r:after {
        clear: both;
    }

* {
    margin: 0;
    padding: 0;
    border-sizing: border-box;
}

[class*='tray-c-'] {
    min-height: 1px;
    float: left;
    padding: 0 15px;
}

.tray-w {
    width: 100%;
    margin: 0 auto;
}

@media (min-width: 576px) {
    .tray-w {
        width: 95%;
        max-width: 1200px;
    }
}

.tray-c-1 {
    width: 8.33333%;
}

.tray-c-2 {
    width: 16.66667%;
}

.tray-c-3 {
    width: 25%;
}

.tray-c-4 {
    width: 33.33333%;
}

.tray-c-5 {
    width: 41.66667%;
}

.tray-c-6 {
    width: 50%;
}

.tray-c-7 {
    width: 58.33333%;
}

.tray-c-8 {
    width: 66.66667%;
}

.tray-c-9 {
    width: 75%;
}

.tray-c-10 {
    width: 83.33333%;
}

.tray-c-11 {
    width: 91.66667%;
}

.tray-c-12 {
    width: 100%;
}

@media (min-width: 768px) {
    .tray-c-md-1 {
        width: 8.33333%;
    }

    .tray-c-md-2 {
        width: 16.66667%;
    }

    .tray-c-md-3 {
        width: 25%;
    }

    .tray-c-md-4 {
        width: 33.33333%;
    }

    .tray-c-md-5 {
        width: 41.66667%;
    }

    .tray-c-md-6 {
        width: 50%;
    }

    .tray-c-md-7 {
        width: 58.33333%;
    }

    .tray-c-md-8 {
        width: 66.66667%;
    }

    .tray-c-md-9 {
        width: 75%;
    }

    .tray-c-md-10 {
        width: 83.33333%;
    }

    .tray-c-md-11 {
        width: 91.66667%;
    }

    .tray-c-md-12 {
        width: 100%;
    }
}

@media (min-width: 1200px) {
    .tray-c-lg-1 {
        width: 8.33333%;
    }

    .tray-c-lg-2 {
        width: 16.66667%;
    }

    .tray-c-lg-3 {
        width: 25%;
    }

    .tray-c-lg-4 {
        width: 33.33333%;
    }

    .tray-c-lg-5 {
        width: 41.66667%;
    }

    .tray-c-lg-6 {
        width: 50%;
    }

    .tray-c-lg-7 {
        width: 58.33333%;
    }

    .tray-c-lg-8 {
        width: 66.66667%;
    }

    .tray-c-lg-9 {
        width: 75%;
    }

    .tray-c-lg-10 {
        width: 83.33333%;
    }

    .tray-c-lg-11 {
        width: 91.66667%;
    }

    .tray-c-lg-12 {
        width: 100%;
    }
}

.evento-w {
    width: 100%;
    height: auto;
    position: relative;
}

.evento-r {
    content: " ";
    width: 100%;
    display: table;
    clear: both;
}

[class*='evento-c-'] {
    min-height: 1px;
    float: left;
    padding: 0 1%;
}

.evento-c-12 {
    width: 98%;
}

.evento-c-6 {
    width: 48%;
}

.evento_input {
    width: 98%;
    height: 40px;
    margin-bottom: 10px;
    padding: 0 1%;
}

.evento_btn {
    width: 100%;
    height: 44px;
    border: none;
    cursor: pointer;
    font-size: 14px;
    font-weight: bold;
    text-transform: uppercase;
    text-decoration: none;
    color: #fff;
}

    .evento_btn:focus,
    .evento_btn:active,
    .evento_btn:hover {
        text-decoration: none;
        color: #fff;
        opacity: 0.9;
    }

.evento_btn-primary {
    background: #a8b525;
}

.evento_btn-secondary {
    background: #6d6d5f;
}

.evento_criar-lista {
    padding: 0 15px;
    position: relative;
}

.evento_btn-criar {
    padding: 10px 15px;
}

.evento_title {
    font-size: 24px;
    font-weight: bold;
}

.evento_description {
    font-size: 16px;
    font-weight: normal;
    line-height: normal;
}

@media (max-width: 576px) {
    [class*='evento-c-'] {
        width: 98%;
        margin: auto;
        display: block;
    }
}

.border-right {
    border-right: 1px solid #ddd;
}

.border-dashed {
    border: 3px dashed #c7c7c7 !important;
}

.border-white {
    border: 10px solid #fff;
}

.evento_footer-flutuante {
    background: rgba(168, 181, 37, 0.9);
    width: 100%;
    padding: 15px 0;
    position: fixed;
    bottom: 0;
    left: 0;
    border-top: 2px solid #fff;
    color: #fff;
    z-index: 99;
}

    .evento_footer-flutuante a {
        color: #383d06;
        font-weight: bold;
        text-decoration: underline;
        line-height: 25px;
    }

.evento_card {
    width: 24%;
    height: 250px;
    overflow: hidden;
    float: left;
    margin: 0.5%;
    position: relative;
    border: 1px solid #ddd;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

    .evento_card .evento_card-footer {
        width: 100%;
        position: absolute;
        bottom: 0;
        z-index: 1;
        background: rgba(15, 33, 52, 0.9);
    }

    .evento_card .eventos_card-title {
        font-size: 18px;
        font-weight: bold;
        text-align: center;
        color: #fff;
        padding: 15px 0;
    }

    .evento_card .evento_card-img {
        -webkit-transition: all .2s ease-in-out;
        transition: all .2s ease-in-out;
        width: 100%;
        height: auto;
    }

        .evento_card .evento_card-img:hover {
            -webkit-transform: scale(1.1);
            transform: scale(1.1);
            cursor: pointer;
        }

.evento_menu-footer {
    width: 50%;
    margin: 0 auto;
}

@media (max-width: 576px) {
    .evento_menu-footer {
        width: 90%;
    }
}

.evento_menu-footer .nav-item {
    width: 32%;
    margin: 0 .5%;
}

    .evento_menu-footer .nav-item a {
        background-color: #fff;
        border: 1px solid;
        border-color: #fff;
        border-radius: 0;
    }

@media (max-width: 576px) {
    .evento_menu-footer .nav-item {
        width: 100%;
        margin: 5px 0;
    }
}

.evento_menu-footer li.active > a {
    background-color: #a8b525 !important;
    border-color: #ffffff !important;
}

    .evento_menu-footer li.active > a:focus, .evento_menu-footer li.active > a:hover {
        background-color: #a8b525 !important;
        border-color: #fff !important;
    }

@media (max-width: 992px) {
    .evento_card {
        width: 32%;
        height: 200px;
    }
}

@media (max-width: 768px) {
    .evento_card {
        width: 49%;
        height: 200px;
    }
}

@media (max-width: 576px) {
    .evento_card {
        width: 48%;
        height: 200px;
        margin: 1%;
    }

    .evento_card-img {
        width: 100%;
        height: auto;
    }

    .evento_card-footer {
        background: #0f2134;
    }
}

.retornoVinculoEvento {
    font-size: 18px;
}

.tray-w.evento h2 {
    padding-top: 25px;
    font-family: 'Open Sans', Helvetica, Arial, sans-serif;
    font-size: 28px;
    color: #0f2134;
    font-weight: bold;
    line-height: 1;
}

.tray-w.evento h3 {
    padding-bottom: 25px;
    font-family: 'Open Sans', Helvetica, Arial, sans-serif;
    font-size: 20px;
    color: #0f2134;
    font-weight: normal;
    line-height: 1;
}

.current.error {
    clear: none !important;
}

.evento-modal_header {
    background: rgba(168, 181, 37, 0.9);
    position: relative;
}

    .evento-modal_header img {
        position: absolute;
        top: 15px;
        border: 1px solid #ddd;
        border-radius: 50%;
    }

.evento-modal_title {
    padding: 15px 0;
    color: #fff;
}

.evento-modal p {
    text-align: center;
}

.evento-expirado {
    margin: 100px auto;
}

.evento-logo {
    width: 100%;
    height: auto;
    max-width: 150px;
    max-height: 150px;
    display: block;
    background: #ddd;
    margin: 2.5em auto;
    overflow: hidden;
    border-radius: 50%;
}

    .evento-logo img {
        width: 100%;
        height: 100%;
    }

.evento-text {
    margin: 25px 0;
    padding: 0 25px;
    font-size: 24px;
    font-weight: 400;
    text-align: center;
}

.btn-acessar-evento {
    width: 300px;
    display: block;
    margin: 1em auto;
    font-size: 14px;
}

/** FIM LISTA EVENTOS*/

td.txtdestaqueSub.aright.fbits-td-embalagem-texto {
    display: table-cell !important;
}

.fbits-responsive-carrinho-produtos li, .sidebarLogin .cartProd, .coluna-fechamento.final table.tLined.carrinho .produto-linha {
    overflow: hidden;
}

.fbits-responsive-carrinho-item-descricao span.fbits-responsive-carrinho-item-atributos, .coluna-fechamento.final .spnAtributos {
    line-height: inherit !important;
    height: auto !important;
    overflow: inherit !important;
}

.fbits-box-prazoConsumo {
    /* background: none repeat scroll 0 0 #eef8fe; */
    background: none repeat scroll 0 0 #eef8fe;
    color: #777;
    font-size: 11px;
    line-height: 15px;
    margin-bottom: 10px;
    margin-top: 10px;
    padding: 6px 2px 6px 7px;
    text-align: left;
    display: inline-block;
    width: 100%;
    text-transform:none;
}

.fbits-box-titulo-prazoConsumo {
    color: #005ba1;
    display: block;
    font-size: 11px;
    font-weight: normal;
}
/*!* Font Awesome 4.7.0 by @davegandy 
- http://fontawesome.io - @fontawesome 
* License - http://fontawesome.io/license(Font:SIL OFL 1.1,CSS:MIT License) */ 
@font-face{
    font-family:'FontAwesome';
    src:url('../../f/fontawesome-webfont.eot?v=4.7.0');
    src:url('../../f/fontawesome-webfont.eot?#iefix&v=4.7.0') format('embedded-opentype'),
    url('../../f/fontawesome-webfont.woff2?v=4.7.0') format('woff2'),
    url('../../f/fontawesome-webfont.woff?v=4.7.0') format('woff'),
    url('../../f/fontawesome-webfont.ttf?v=4.7.0') format('truetype'),
    url('../../f/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular') format('svg');
    font-weight:normal;
    font-style:normal;
}
@font-face {
    font-family: 'icofont';
    src: url('../../f/icofont.eot?v=1.0.0-beta');
    src: url('../../f/icofont.eot?v=1.0.0-beta#iefix') format('embedded-opentype'),
    url('../../f/icofont.ttf?v=1.0.0-beta') format('truetype'),
    url('../../f/icofont.woff?v=1.0.0-beta') format('woff'),
    url('../../f/icofont.svg?v=1.0.0-beta#icofont') format('svg');
    font-weight: normal;
    font-style: normal;
}
@font-face { 
    font-family: "Ionicons"; 
    src: url("../../f/ionicons.eot?v=2.0.0"); 
    src: url("../../f/ionicons.eot?v=2.0.0#iefix") format("embedded-opentype"), 
         url("../../f/ionicons.ttf?v=2.0.0") format("truetype"), 
         url("../../f/ionicons.woff?v=2.0.0") format("woff"), 
         url("../../f/ionicons.svg?v=2.0.0#Ionicons") format("svg"); 
    font-weight: normal; 
    font-style: normal; 
}
@font-face {
  font-family: "foundation-icons";
  src: url("../../f/foundation-icons.eot");
  src: url("../../f/foundation-icons.eot?#iefix") format("embedded-opentype"),
       url("../../f/foundation-icons.woff") format("woff"),
       url("../../f/foundation-icons.ttf") format("truetype"),
       url("../../f/foundation-icons.svg#fontcustom") format("svg");
  font-weight: normal;
  font-style: normal;
}
@font-face{
    font-family:'nbicon';
    src:url("../../f/nbicon.eot?#iefix") format("embedded-opentype"),
    url("../../f/nbicon.woff") format("woff"),
    url("../../f/nbicon.ttf") format("truetype"),
    url("../../f/nbicon.svg#nbicon") format("svg");
}
@font-face {
    font-family: "linea-ecommerce-10";
    src:url("../../f/linea-ecommerce-10.eot");
    src:url("../../f/linea-ecommerce-10.eot?#iefix") format("embedded-opentype"),
    url("../../f/linea-ecommerce-10.woff") format("woff"),
    url("../../f/linea-ecommerce-10.ttf") format("truetype"),
    url("../../f/linea-ecommerce-10.svg#linea-ecommerce-10") format("svg");
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: "linea-arrows-10";
    src:url("../../f/linea-arrows-10.eot");
    src:url("../../f/linea-arrows-10.eot?#iefix") format("embedded-opentype"),
    url("../../f/linea-arrows-10.woff") format("woff"),
    url("../../f/linea-arrows-10.ttf") format("truetype"),
    url("../../f/linea-arrows-10.svg#linea-arrows-10") format("svg");
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: "linea-basic-10";
    src:url("../../f/linea-basic-10.eot");
    src:url("../../f/linea-basic-10.eot?#iefix") format("embedded-opentype"),
    url("../../f/linea-basic-10.woff") format("woff"),
    url("../../f/linea-basic-10.ttf") format("truetype"),
    url("../../f/linea-basic-10.svg#linea-basic-10") format("svg");
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: "linea-basic-elaboration-10";
    src:url("../../f/linea-basic-elaboration-10.eot");
    src:url("../../f/linea-basic-elaboration-10.eot?#iefix") format("embedded-opentype"),
    url("../../f/linea-basic-elaboration-10.woff") format("woff"),
    url("../../f/linea-basic-elaboration-10.ttf") format("truetype"),
    url("../../f/linea-basic-elaboration-10.svg#linea-basic-elaboration-10") format("svg");
    font-weight: normal;
    font-style: normal;
}

@font-face{
    font-family:'avenir-lt-55-roman';
    src:url('../../f/avenir-lt-55-roman.eot?v=4.7.0');
    src:url('../../f/avenir-lt-55-roman.eot?#iefix&v=4.7.0') format('embedded-opentype'),
    url('../../f/avenir-lt-55-roman.woff2?v=4.7.0') format('woff2'),
    url('../../f/avenir-lt-55-roman.woff?v=4.7.0') format('woff'),
    url('../../f/avenir-lt-55-roman.ttf?v=4.7.0') format('truetype'),
    url('../../f/avenir-lt-55-roman.svg?v=4.7.0#avenir-lt-55-roman') format('svg');
    font-weight:normal;
    font-style:normal;
}

html::-webkit-scrollbar-track-piece {
    width: 6px;
    height: 5px;
    margin: 1px;
    padding: 0px;
    background: rgba(255, 255, 255, 0.298039);
}
/*
html::-webkit-scrollbar-thumb {
    z-index: 9999;
    background-clip: content-box;
    width: 5px;
    background-color: rgba(0, 0, 0, 0.4);
    border-width: 2px;
    border-style: solid;
    border-color: transparent;
    border-image: initial;
    border-radius: 12px;
    margin: 1px !important;
}
html::-webkit-scrollbar-corner {
    background: rgba(255, 255, 255, 0.298039);
    border-width: 1px;
    border-style: solid;
    border-color: transparent;
    border-image: initial;
}
html::-webkit-scrollbar {
    width: 9px;
    height: 9px;
}
*/
* {
    margin: 0;
    padding: 0;
    border: 0;
    outline: none;
    list-style: none;
    -moz-box-sizing: border-box;
    -ms-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -o-box-sizing: border-box;
    box-sizing: border-box;   
}
html {
    font-size: 14px;
}
body {
    font-family: 'avenir-lt-55-roman', 'Arial', sans-serif;
    color: #6d6d5f;
    padding: 0;
    margin: 0 auto;
    width: 100%;
    overflow-x: hidden;
}
input, textarea, button, select {font-family: Arial;}
a {
    text-decoration: none;
    cursor: pointer;
}
button, input[type="submit"] {
    cursor: pointer;
}
h1, h2, h3, h4, h5, h6, tr, th, td, b {
    font-weight: normal;
}
address.fbits-dadosEmpresa {
    font-style: normal;
}
.fbits-layout-item {
    display: block;
    clear: both;
}
/* HEADER */
.head {
    width: 100%;
    position: relative;
    z-index: 1000;
    float: left;
    display: block;
    background-color: #0d0c0d;
}
.head .center {
    display: block;
    clear: both;
    max-width: 1280px;
    padding: 0 3vw;
    background-color: #0d0c0d;
}
.headerLogo {
    text-align: center;
    display: block;
}
.headerLogo img {
    width: 80%;
    max-width: 274px;
    margin-top: 1rem;
}

/* HEADER FECHAMENTO */
.head.headFechamento {
    /*border-bottom: 3px solid #e9d237;*/
    margin-bottom: 0.6875rem;
}
.head.headFechamento .fbits-center-responsivo {
    margin: 0.8125rem auto 1rem;
}
.fechamento .headerLogo {
    text-align: center;
    width: 100%;
}
.fechamento .headerLogo img {
    max-width: 164px;
}

/* TOP BAR */
.topBar, .fbits-fechamento .topBar, .head.head-carrinho.headFechamento .topBar {
    display: none;
}
.top-icons  {
    text-align: center;
    margin: 1rem auto;
    display: flex;
    position: relative;
    display: -webkit-flex;
    -webkit-align-items: center;
    align-items: center;
    width: 255px;
}
.top-icons>div {
    width: 35px;
    height: 35px;
    display: block;
    padding: 0;
    float: none;
    margin-left: 0px;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-family: 'FontAwesome';
    text-align: center;
    line-height: 35px;
    font-size: 30px;
    position: relative;
}
.top-icons>div:before {
    content: "";
    color: #0F2134;
    display: block;
}
.top-icons .ico-menu {
    margin-left: 0;
}
.top-icons .ico-menu:before {
    content: "";
    /*background: url(../i/menu-mobile.png) 50% 50% no-repeat;*/
    background: url(../i/menu.svg) 50% 50% no-repeat;
    background-size: 20px;
    height: 35px;
}
.top-icons .ico-minha-conta a {
    display: block;
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
}
.top-icons .ico-minha-conta:before {
    /*content: "\f007";*/
    content: "";
    width: 28px;
    height: 28px;
    display: block;
    /*background: url(../i/login-mobile.png) 0 0 no-repeat;*/
    background: url(../i/minha-conta.svg) 50% 2px no-repeat;
    background-size: 15px;
    margin: 2px auto 0;
}
.top-icons .ico-lista-desejos a {
    display: block;
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
}
.top-icons .ico-lista-desejos:before {
    content: "\f08a";
}
.top-icons .ico-carrinho {
    position: relative;   
}
.top-icons .ico-carrinho:before {
    /*content: "\f07a";*/
    content: "";
    width: 28px;
    height: 28px;
    display: block;
    /*background: url(../i/carrinho-mobile.png) 0 0 no-repeat;*/
    background: url(../i/carrinho.svg) 0 1px no-repeat;
    background-size: 24px;
    margin: 2px auto 0;
}
.top-icons .ico-busca:before {
    content: "\f002";
}

/* ajustes ACupula */
.top-icons.menu-mobile {
    width: auto;
    display: inline-block;
    vertical-align: middle;
}
.header-log {
    display: none;
}
.top-icons.icons-mobile .ico-menu, .top-icons.icons-mobile .ico-lista-desejos, .top-icons.icons-mobile .ico-busca {
    display: none;
}
.top-icons.icons-mobile .ico-minha-conta {
    margin-left: 0;
}

.carrinho.carrinhoHead {
    font-size: 0;
    width: 100%;
    height: 100%;
    margin: 0;
    padding: 0;
    position: absolute;
    top: 0;
}
.carrinho.carrinhoHead a {
    display: block;
    float: left;
    width: 100%;
    height: 100%;
}
span.minicart-txt-itens {
    display: none;
}
span.minicart-qtde-itens {
    position: absolute;
    background: #e9d237;
    color: #0d0c0d;
    padding: 0;
    width: 22px;
    height: 22px;
    line-height: 22px;
    text-align: center;
    font-size: 13px;
    font-size: .8125rem;
    border-radius: 100%;
    top: 0;
    right: -20px;
}
/* header busca */
.div-busca-topo-oculta {
    display: none;
    width: 100%;  
    display: block !important;    
}
.headerSearch {   
    margin-bottom: 1rem;
    clear: both;
}
.headerSearch form#searchFormHeader {
    position: relative;
}
.headerSearch form#searchFormMobile {
    position: relative;
}
.footerSearchBox {
    position: relative;
}
input.inputSearch[type="text"] {
    width: 100%;
    border: 1px solid #eaeaea;
    height: 34px;
    font-size: 14px;
    font-size: 0.875rem;
}
input.inputSearch::-webkit-input-placeholder {
   color: #848484;
}
input.inputSearch:-moz-placeholder { /* Firefox 18- */
   color: #848484;  
}
input.inputSearch::-moz-placeholder {  /* Firefox 19+ */
   color: #848484;  
}
input.inputSearch:-ms-input-placeholder {  
   color: #848484;  
}
.headerSearch button#btnBusca, button#btnBuscaBarraFixa, button#btnBuscaFooter, .headerSearch button#btnBuscaMobile {
    display: block;
    position: absolute;
    top: 0;
    right: 0;
    height: 35px;
    width: 42px;
    text-transform: uppercase;
    font-size: 0;
    background: #e9d237;
    border-radius: 0;
}
.headerSearch button#btnBuscaMobile {
    height: 44px;
}
button#btnBusca i.icon.isearch, button#btnBuscaBarraFixa i.icon.isearch, button#btnBuscaFooter i.icon.isearch {
    position: absolute;
    right: 0;
    top: 0;
    width: 100%;
    height: 100%;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-family: 'FontAwesome';
    text-align: center;
    color: #ffffff;
}
button#btnBusca i.icon.isearch:before, button#btnBuscaBarraFixa i.icon.isearch:before, button#btnBuscaFooter i.icon.isearch:before, button#btnBuscaMobile i.icon.isearch:before {
    content: "";
    display: block;
    width: 42px;
    height: 35px;
    /*background: url(../i/header-lupa-busca.png) 50% 50% no-repeat;*/
    background: url(../i/lupa.svg) 50% 50% no-repeat;
    background-size: 17px;
}
.bt, .listacompra-comprarselecionados {
    /*background: #009045;*/
    background: #00bf5c;
    color: #fff;
    height: 40px;
    line-height: 40px;
    border: 0;
    border-radius: 0;
    text-align: center;
    font-weight: normal;
    text-decoration: none;
    text-transform: uppercase;
    display: inline-block;
    cursor: pointer;
    box-shadow: none;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    -webkit-appearance: none;
}
.bt:hover {opacity: 0.9;}
.content  {
    overflow: visible;
    clear: both;
}
span.minicart-valor-total-ext {
    display: none;
}
.fixed-bar.nohead, .fixed-bar.nohead .bar-content {
    height: 16px!important;
}
input[type="text"], input[type="password"], input[type="tel"], .coluna-fechamento.central .parcelas select, .coluna-fechamento .fbits-enderecoCobranca-dropdown  {
    border: 1px solid #acacac;
    height: 40px;
    text-indent: 1rem;
    font-size: 12px;
    font-size: .75rem;
    color: #6d6d5f;
    border-radius: 0;
}
.coluna-fechamento.central .parcelas select, .coluna-fechamento .fbits-enderecoCobranca-dropdown {
    text-indent: inherit;
    width: 100%;
    margin: 0;
    color: #303030;
    border: solid 1px #bebebe;
    height: 32px;
    margin-bottom: 7px;
}
input[type="text"]::-webkit-input-placeholder,
input[type="password"]::-webkit-input-placeholder{
   color: #6d6d5f;
}
input[type="text"]:-moz-placeholder,
input[type="password"]:-moz-placeholder { /* Firefox 18- */
   color: #6d6d5f;  
}
input[type="text"]::-moz-placeholder,
input[type="password"]::-moz-placeholder {  /* Firefox 19+ */
   color: #6d6d5f;  
}
input[type="text"]:-ms-input-placeholder,
input[type="password"]:-ms-input-placeholder {  
   color: #6d6d5f;  
}
.fbits-banner-centro .slidesjs-control, .fbits-banner-centro .slidesjs-control a.slidesjs-slide {
    width: 100% !important;
    height: auto !important;
    display: block;
    float: left;
}
.fbits-layout-home div[data-layout-item="1"] {
    background: #3a3a3a;
}
.fbits-home .fbits-banner-topo {
    margin-top: 0;
    margin-bottom: 10px;
    width: 100%;
    text-align: center;
}
.fbits-home .fbits-banner-topo a {
    /*display: block!important;*/
    display: none !important;
    width: 100%;
    float: left;
    padding: 0;
}
.fbits-home .fbits-banner-topo img  {
    margin: 0 auto;
    max-width: 100%;
    float: none;
}
.fbits-banner-rodape {
    margin-bottom: 1.5rem;
    display: block;
    float: left;
    width: 100%;
}
.fbits-banner-rodape a {
    display: block !important;
    float: left;
    width: 100%;
    text-align: center;
    clear: both;
}
.fbits-banner-rodape img {
    float: none;
    display: block!important;
    width: 100%;
    /*max-width: 480px;*/
    max-width: none;
    margin: auto;
    margin-bottom: 0.5rem;
}
.slidesjs-play, .slidesjs-stop, #escolhaFrabricante, .lnkVejaMais, .headerBanner {
    display: none!important;
}
.line, .lineHistBusca, .tagsTitle, .divOpinioes, .title-fechamento, .title-escolha-frete, .divTitleLogin {
    display: table;
    width: 100%;
    margin-bottom: 15px;
    position: relative;
    z-index: 0;
}
.title-escolha-frete {
    margin-bottom: 35px;
}
.line h3, .line h2, h2.titleHistBusca, h3.title.titleTag, .titleOpinioes, h3.titleFechamento, h3.titleFrete, .fechamento .produto-assinatura h2.mainTitle, .titleLogin, .carrinhoVazio h2.titlePage, .fbits-confirmacaoPedido .title.title-confirmacao-pedido, .cadastro h1.title.biggest, .center.listadesejos h1.title.big, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna h1.title.big, .fechamento .produto-assinatura h2.title-produto-assinatura {
    display: block;
    white-space: nowrap;
    padding: 0 0 5px 0;
    font-weight: normal;
    margin: 0;
    position: relative;
    background: #FFF;
    z-index: 1;
    color: #4c4c4c;
    text-transform: uppercase;
    font-size: 22px;
    font-size: 1.375rem;
    text-align: left;
}
.fbits-home .line h2, #bodyProduto .line h3 {
    text-align: center;
    font-size: 25px;
    font-size: 1.563rem;
}
.fbits-home .line h2:after {
    content: "";
    display: block;
    height: 3px;
    background-color: #e9d237;
    width: 25%;
    max-width: 300px;
    margin: 0 auto;
}
.cadastro h1.title.biggest {
    text-align: center;
    margin: 0 auto;
}
.carrinhoVazio h2.titlePage {
    margin: 0 auto;
    text-align: center;
}
.line h3::before, .line h2::before, h2.titleHistBusca::before, h3.title.titleTag::before, .titleOpinioes::before, h3.titleFechamento::before, h3.titleFrete::before, .fechamento .produto-assinatura h2.mainTitle::before, .titleLogin::before, .carrinhoVazio h2.titlePage::before, .fbits-confirmacaoPedido .title.title-confirmacao-pedido::before, .cadastro h1.title.biggest::before, .center.listadesejos h1.title.big::before, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna h1.title.big::before, .fechamento .produto-assinatura h2.title-produto-assinatura::before {
    content: "";
    width: 100%;
    height: 3px;
    display: block;
    background-color: #e9d237;
    padding-right: 10px;
    position: absolute;
    left: 0;
    bottom: -3px;
    display: none;
}
h2.titleHistBusca, h3.title.titleTag {
    font-size: 18px;
    font-size: 1.125rem;
}
.titleOpinioes, .fbits-confirmacaoPedido .title.title-confirmacao-pedido, .textoInterna .line h3.title {
    font-size: 16px;
    font-size: 1rem;
    line-height: 22px;
    /*margin: 0 auto;*/
}
.lineHistBusca:after, .tagsTitle:after, .txtLoja .line:after, .divOpinioes:after, .divTitleLogin:after {
    content: "";
}
.line .title+span, .lineHistBusca:after, .tagsTitle:after, .txtLoja .line:after, .divOpinioes:after, .title-fechamento .titleFechamento+span, .title-escolha-frete h3.titleFrete+span, .divTitleLogin:after {
    border-bottom: 3px solid #e9d237;
    display: block;
    height: 1px;
    top: 9px;
    width: 100%;
    left: 0;
}
#bodyProduto .lineHistBusca:after, #bodyProduto .divOpinioes:after, #bodyProduto .divTitleLogin:after {
   display: none;
}
.fbits-home .line .title+span, #bodyProduto .line .title+span {
    display: none;
}
div#historyBoard {
    margin-bottom: 2.5rem !important;
}

.content div[data-layout-item="10"] {
    margin: 5rem 0 0;
}
.footerNews {
    background: #e9d237;
    width: 100%;
    padding: 1rem 3vw;
    /*overflow: hidden;*/
    clear: both;
    margin: 1rem 0 0;
    position: relative;
}
.footerNewsletter {
    display: block;
    width: 80vw;
    margin: auto;
}
.footerNews .centerContent {
    display: block;
    width: 100%;
}
.news.left {
    display: block;
    float: left;
    width: 100%;
}
i.icon.inews {
    width: 72px;
    height: 74px;
    line-height: 40px;
    display: block;
    margin: 0 auto;
    font-family: 'FontAwesome';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    font-style: normal;
    color: #fff;
    font-size: 35px;
    text-align: center;
}
i.icon.inews:before {
    content: "";
    width: 26.56rem;
    height: 14.56rem;
    display: block;
    /*background: url(../i/news-icone.png) 0 0 no-repeat;*/
    background: url(../i/news-icone.svg) 0 0 no-repeat;
    background-size: contain;
    position: absolute;
    top: -42%;
}
input.btNews {
    background: #000000;
    color: #ffffff;
    float: none;
    height: 40px;
    width: 50%;
    text-transform: uppercase;
    margin: auto;
    display: block;
    clear: both;
    border-radius: 0;
    -webkit-appearance: none;
}
input.btNews:hover {
    opacity: 0.9;
}
.txtNews.left {
    text-align: center;
    display: block;
    clear: both;
    font-size: 0;
    color: #000000;
    margin-bottom: 1rem;
}
.txtNews.left::after {
    content: "Cadastre seu e-mail e receba as nossas promoções";
    text-align: left;
    display: block;
    clear: both;
    font-size: 15px;
    font-size: 0.9375rem;
    color: #000000;
    margin-bottom: 1rem;
    text-transform: uppercase;
    line-height: 1.125rem;
}
.txtNews span {
    text-transform: uppercase;
    display: block;
    text-align: center;
    font-size: 35px;
    font-size: 2.188rem;
    font-weight: 500;
    line-height: 2.5rem;
}
.txtNews br {
    display: none;
}
.footerNewsForm {
    display: block;
    float: left;
    width: 100%;
}
span#newsletter-mensagem {
    text-align: center;
    display: block;
    color: #FFF !important;
}
.footerNewsForm input[type="text"] {
    width: 100%;
    margin-bottom: .6rem;
    border: 0;
}
.footerNewsForm input::-webkit-input-placeholder {
   color: #6d6d5f;
}
.footerNewsForm input:-moz-placeholder { /* Firefox 18- */
   color: #6d6d5f;  
}
.footerNewsForm input::-moz-placeholder {  /* Firefox 19+ */
   color: #6d6d5f;  
}
.footerNewsForm input:-ms-input-placeholder {  
   color: #6d6d5f;  
}
.fbits-cadastroNews-Masculino, .fbits-cadastroNews-Feminino {
    color: #fff;
    display: inline-block;
    margin-top: .2rem;
    margin-bottom: 1rem;
    width: 50%;
    float: left;
    text-align: center;
    font-size: 14px;
    font-size: 0.875rem;
}


.spotListHome .fbits-carrossel-setas {
    height: auto;   
    width: 100%;
    margin: 0 auto 5rem;
    padding: 0px;
}
.fbits-home .fbits-carrossel, .mainBar.fbits-vitrine-hotsite .spotListHome,
.produto #produtos-relacionados.jsCarrousel, .produto #produtos-autor.carousel,
.fullWidth .jcarousel-wrapper .carousel {
    width: 88vw;
    height: auto;
}
.produto #produtos-relacionados.jsCarrousel, .produto #produtos-autor.carousel {         
    margin: 0 auto 1.875rem;   
    display: block;
}
.mainBar.fbits-vitrine-hotsite .spotListHome {
    position: relative;
    overflow: hidden;
    margin: 0 auto;
}
.fullWidth .jcarousel-wrapper .carousel {
    margin: 0 auto!important;
    padding: 0!important;
}
.menu-container {
    display: none;
    width: 100%;
    height: 100%;
    position: fixed;
    background: rgba(0, 0, 0, 0.6);
    overflow: scroll!important;
    top: 0;
    left: 0;
    z-index: 1000;
}
.menu-container.menu-container-aberto {
    display: block;
}
.ico-menu-fecha {
    background: #e9d237;
    height: 43px;
    color: #000;
    line-height: 40px;
    text-align: center;
    font-size: 20px;
    padding-right: 0;
    font-style: normal;
    font-weight: bold;
    text-transform: uppercase;
    width: 15%;
    float: right;
    clear: both;
    -webkit-box-shadow: 0 3px 7px 0 rgba(0,0,0,0.22);
    -moz-box-shadow: 0 3px 7px 0 rgba(0,0,0,0.22);
    box-shadow: 0 3px 7px 0 rgba(0,0,0,0.22);
    border-bottom: 2px solid #e9d237;
}
.menu-mobile-dynamic {
    width: 85%;
    height: 100%;
    overflow-x: hidden;
    overflow-y: scroll;
    padding: 0;
    position: relative;
    background: #fff;
    -webkit-box-shadow: 0 3px 7px 0 rgba(0,0,0,0.22);
    -moz-box-shadow: 0 3px 7px 0 rgba(0,0,0,0.22);
    box-shadow: 0 3px 7px 0 rgba(0,0,0,0.22);
}
.menu-container ul.menu {
    clear: both;
    background: transparent;   
}
.menu li.item.raiz {
    background: #3a3a3a;
    display: block;
    /*min-height: 2.9rem;*/
    /*line-height: 2.9rem;*/
    min-height: 3.125rem;
    line-height: 3.125rem;
    position: relative;
    /*margin-bottom: 2px;*/
}
.menu li.item.raiz a, .menu li.item.raiz span.todas-categorias, .menu li.item.raiz span.menu-geral {
    height: 100%;
    display: block;
    width: 85%;
    color: #fff;
    font-size: 14px;
    font-size: .875rem;
    text-decoration: none;
    padding-left: 3vw;
    font-weight: bold;
}
.menu li.item.raiz a img, .menu li.item.raiz span.todas-categorias img, .menu li.item.raiz span.menu-geral img {
    max-height: 35px;
    padding-top: .5rem;
    float: left;
    margin-right: 1rem;
}
span.arrowmenu, span.arrowmenu.opened {
    display: block;
    width: 15%;
    height: 2.9rem;
    line-height: 2.9rem;
    text-align: right;
    position: absolute;
    right: 3vw;
    top: 0;
    font-family: 'FontAwesome';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
span.arrowmenu:before {
    content: "\f107";  
    font-size: 25px;
    color: #fff;
}
span.arrowmenu.opened:before {
    content: "\f106";
    font-size: 25px;
    color: #fff;    
}
.menu ul.filho {
    display: none;
    background: #fff;
    clear: both;
}
.menu li.item.raiz ul li  {
    position: relative;
    line-height: 2.5rem;
    min-height: 2.5rem;
}
.menu li.item.raiz ul.filho li a {
    color: #6d6d5f;
    width: 100%;
    line-height: 0.75rem;
    /*
    line-height: 1.188rem;
    */
}
.menu li.item.raiz ul.filho li.menu-imagem {
    font-size: 0;
    height: auto;
    padding-bottom: 1rem;
    line-height: inherit;
    display: block;
    float: left;
    width: 100%;
}
.menu li.item.raiz ul.filho li.menu-imagem a.menu-imagem {
    color: transparent;
    font-size: 0;
    height: auto;
    float: left;
    clear: both;
    line-height: 1;
    display: block;
    padding: 0 3vw;
}
.menu li.item.raiz ul.filho li.menu-imagem a.menu-imagem img {
    max-width: 100%;
    max-height: inherit;
    border: 0;
    margin: 0 auto;
    height: auto;
    display: block;
    margin-bottom: 0;
    float: none;
}
.menu li.item.raiz li.menu-geral-filho {    
    float: left;
    clear: both;
    width: 100%;    
    padding: 1rem 0 1rem;
    line-height: inherit;
}
.menu li.item.raiz ul.filho li.menu-geral-filho a {
    color: #a3bd31;  
    font-size: 16px;
    font-size: 1rem;
    padding: 0 3vw;
}
.menu li.item.raiz li.menu-geral-filho ul.filho {
    float: left;
    clear: both;
    width: 100%;
}
.menu li.item.raiz ul.filho li span.arrowmenu.arrowmenu-sub {    
    height: 2.5rem;
    line-height: 2.5rem;
}
span.arrowmenu.arrowmenu-sub:before {
    content: "\f107";
    font-size: 18px;
    color: #e9d237;
}
span.arrowmenu.arrowmenu-sub.opened:before {
    content: "\f106";
    font-size: 18px;
    color: #e9d237;
}
.menu li.item.raiz ul.filho li ul li.menu-geral-neto a.menu-geral-neto {
    color: #6d6d5f;
    font-size: 14px;
    font-size: .875rem;
}

.navbar-mobile.dynamic-content-headercustomerinfo {
    background: #fff;
    color: #e9d237;
    width: 100%;
    height: auto;
    padding: 3vw 3vw 5vw;
    position: relative;
    clear: both;
}
.header-links {
    width: 100%;
}
.header-links ul li {
    float: none;
    text-align: left;
    display: block;
    height: 35px;
    line-height: 35px; 
}
.header-links ul li.wishlistContainer {
    display: none;
}
.header-links ul li.findastore {
    height: auto;
    line-height: .9375rem;  
    text-align: left;
    color: #000;
}
.header-links ul li a.fbits-link-minhaConta, .header-links ul li a.fbits-link-listaDesejos {
    color: #000;
    font-size: 14px;
    display: inline-block;
    text-align: left;
    -webkit-font-smoothing: antialiased;
    height: 35px;
    line-height: 35px;
}
.header-links ul li a span {
    display: inline-block;
    float: left;
    height: 35px;
    line-height: 35px;
    margin-right: 10px;
    font-weight: normal;
}
.header-links ul li a span.icm-icon-user, .header-links ul li a span.icm-icon-like {
    speak: none;
    font-style: normal;
    font-weight: 400;
    font-variant: normal;
    text-transform: none;
    line-height: 1;
    font-family: 'FontAwesome';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    color: #000;
}
.header-links ul li a span.icm-icon-user:before {
    content: "\f2c0";
    font-size: 25px;
    line-height: 35px;
}
.header-links ul li a span.icm-icon-like:before {
    content: "?";
    font-size: 25px;
    line-height: 35px;
}
.header-links ul li.findastore .headerLogin {
    padding: 0;
}
.header-links ul li.findastore .loginHead {
    text-transform: none;
    margin: 0;
    width: 100%;
    max-width: initial;
    font-size: 13px;
    font-size: .8125rem;
    /*height: 2.625rem;*/
    /*line-height: 2.625rem;*/
}
.header-links ul li.findastore .loginHead a {
    color: #000;
    font-weight: normal;
    text-decoration: underline;
}

.header-links ul li.findastore .loginHead .textloginp {
    display: inline-block;
    height: 50px;
    line-height: 50px;
    margin: 10px 0 0 10px;
}
.header-links ul li.findastore .loginHead img.fbits-usuario-fotoFacebook {
    float: left;
    height: 50px;
    margin-top: 10px;
}

.opacidade { opacity: 0.8; }

.fbits-banner-centro, .slidesjs-container {
    position: relative!important;
    width: 100% !important;
    display: block;
    float: left;
}
.fbits-home .fbits-banner-centro {
    /*margin-bottom: -10px;*/
}
.fbits-banner-centro .slidesjs-next, .fbits-banner-centro .slidesjs-previous {
    background-color: rgba(109, 109, 95, 0.82);
    width: 25px;
    height: 50px;
    display: block;
    position: absolute;
    top: 20%;
    z-index: 15;
    margin-left: 0;
    font-size: 0;
}
.fbits-home .fbits-banner-centro .slidesjs-next, .fbits-home .fbits-banner-centro .slidesjs-previous {
    background-color: transparent;
    width: 30px;
    height: 48px;
    display: block;
    position: absolute;
    top: 50%;
    z-index: 15;
    margin-left: 0;
    margin-top: -24px;
    font-size: 0;
}
.fbits-banner-centro .slidesjs-previous:before, .fbits-banner-centro .slidesjs-next:before {
    content: "\f3d2";
    font-family: "Ionicons";
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    font-size: 30px;
    font-weight: bold;
    color: #e9d237;
    line-height: 50px;
    text-align: center;
    display: block;
}
.fbits-home .fbits-banner-centro .slidesjs-previous:before, .fbits-home .fbits-banner-centro .slidesjs-next:before {
    content: "";
    display: block;
    width: 30px;
    height: 48px;
    padding: 5px;
}
.fbits-banner-centro .slidesjs-next {
    right: 0;
    margin-right: 0;
}
.fbits-banner-centro .slidesjs-next:before {
    content: "\f3d3";
}
.fbits-home .fbits-banner-centro .slidesjs-previous:before {
    background: url(../i/slider-esquerda.svg) 50% 50% no-repeat rgba(0,0,0,0.5);
    background-size: 26px;
    /*background: url(../i/slide-seta-esq.png) 50% 50% no-repeat rgba(0,0,0,0.5);*/
}
.fbits-home .fbits-banner-centro .slidesjs-next:before {
    background: url(../i/slider-direita.svg) 50% 50% no-repeat rgba(0,0,0,0.5);
    background-size: 26px;
    /*background: url(../i/slide-seta-dir.png) 50% 50% no-repeat rgba(0,0,0,0.5);*/
}
.fbits-banner-centrolower {
    margin-bottom: 1rem;
    float: left;
    clear: both;
}
.fbits-banner-centrolower a {
    display: block!important;
    width: 100%;
    float: left;
    text-align: center;
}
.fbits-banner-centrolower img {
    width: 100%;
    margin: 0 auto;
    max-width: 626px;
}
.carrossel-fabricantes {
    margin-top: .6rem;
    margin-bottom: 1rem;
    position: relative;
    width: 100%;    
}
.fbits-home .carrossel-fabricantes .bt-prev-fab:before, .fbits-home .carrossel-fabricantes .bt-next-fab:before {
    content: "";
    display: block;
    width: 100%;
    height: 50px;
}
.fbits-home .carrossel-fabricantes .bt-prev-fab:before {
    background: url(../i/seta-marca-prev.png) left 50% no-repeat;
}
.fbits-home .carrossel-fabricantes .bt-next-fab:before {
    background: url(../i/seta-marca-next.png) right 50% no-repeat;
}
.slidesjs-pagination {
    position: absolute;
    bottom: 3%;
    margin: 0 auto;
    display: none;
    width: 100%;
    text-align: center;
    margin-top: -0.1rem;
    z-index: 15;
    height: 20px;
    float: left;
}
.slidesjs-pagination-item a {
    background-color: #fff;
    border: 2px solid #fff;
    display: inline-block;
    width: 14px;
    height: 14px;
    text-indent: -9999px;
    border-radius: 25px;
}
li.slidesjs-pagination-item {
    display: inline-block;
    margin: 0 0.2rem;
    border: 2px solid #bebebe;
    border-radius: 25px;
    width: 18px;
    height: 18px;
    background-color: #ffffff;
}
.slidesjs-pagination-item a.active {
    background-color: #e9d237;
    border: 2px solid #ffffff;
    width: 14px;
    height: 14px;
    border-radius: 25px;
}
.titleMarcasBg { display:none!important;}


#carrossel-fabricantes.jcarousel {
    height: auto;
    min-height: 65px;
    width: 84vw;
    margin: 0 auto;
    padding: 0;
    display: block;
}
.bt-prev-fab, .bt-next-fab {
    background: transparent;
    width: 8vw;
    height: 50px;
    top: 12%;
    z-index: 15;
    margin-left: 0;
    font-size: 30px;
    color: rgb(109, 109, 95);
}
.bt-prev-fab:before, .bt-next-fab:before {
    content: "\f3d2";
    font-family: "Ionicons";
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;    
    line-height: 50px;
    text-align: center;
    display: block;
}
.bt-next-fab:before {
    content: "\f3d3";   
}
#carrossel-fabricantes.jcarousel li {    
    width: 42vw;
    padding: 0 2vw;
    height: 65px;
}
#carrossel-fabricantes.jcarousel li a {
    float: left;
    width: 100%;
    height: 100%;
    display: -webkit-flex;
    -webkit-align-items: center;
    display: flex;
    align-items: center;
}
.carrossel-fabricantes img {
    /*width: auto!important;*/
    width: 100%!important;
    height: auto!important;
    overflow: hidden;
    margin: 0 auto;
    opacity: 1;
    max-width: 140px;
    display: block;
}

.jcarousel-prev, .jcarousel-next,
.jsCarrousel-prev-historico.jcarousel-prev-horizontal, .jsCarrousel-next-historico.jcarousel-next-horizontal,
#bodyProduto .jsCarrousel-prev.jcarousel-prev-horizontal, #bodyProduto .jsCarrousel-next.jcarousel-next-horizontal { 
    cursor: pointer;
    background: transparent;
    width: 6vw;
    height: 50px;
    position: absolute;
    top: 30%;
    z-index: 15;
    font-size: 30px;
    color: #6D6D5F;
    left: 0;
}

.jcarousel-next,
.jsCarrousel-next-historico.jcarousel-next-horizontal,
#bodyProduto .jsCarrousel-next.jcarousel-next-horizontal {
    left: inherit;
    right: 0;
}
#bodyProduto .jsCarrousel-prev.jcarousel-prev-horizontal, .fullWidth .jcarousel-wrapper .jcarousel-prev {
    left: -3vw;
}
#bodyProduto .jsCarrousel-next.jcarousel-next-horizontal, .fullWidth .jcarousel-wrapper .jcarousel-next {
    right: -3vw;
}
.jcarousel-prev:before, .jcarousel-next:before,
.jsCarrousel-prev-historico.jcarousel-prev-horizontal:before, .jsCarrousel-next-historico.jcarousel-next-horizontal:before,
#bodyProduto .jsCarrousel-prev.jcarousel-prev-horizontal:before, #bodyProduto .jsCarrousel-next.jcarousel-next-horizontal:before {
    content: "";
    font-family: "Ionicons";
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    line-height: 50px;
    text-align: center;
    display: block;
    width: 100%;
    height: 100%;
    background: url(../i/setas-prod-esq.png) 50% 50% no-repeat #e9d237;
    background-size: contain;
}
.jcarousel-next:before, 
.jsCarrousel-next-historico.jcarousel-next-horizontal:before,
#bodyProduto .jsCarrousel-next.jcarousel-next-horizontal:before {
    background: url(../i/setas-prod-dir.png) 50% 50% no-repeat #e9d237;
    background-size: contain;
}

#bodyProduto .fbits-produto-imagens .jcarousel-next:before {
    /*width: 7px;*/
    /*height: 12px;*/
    width: 100%;
    height: 100%;
    background: url(../i/produto-thumb-setas-next.png) no-repeat;
    background-position: 2vw center;
    float: right;
    margin-top: 0;
}
#bodyProduto .fbits-produto-imagens .jcarousel-prev:before {
    /*width: 7px;*/
    /*height: 12px;*/
    width: 100%;
    height: 100%;
    background: url(../i/produto-thumb-setas-prev.png) no-repeat;
    background-position: 12px center;
    float: left;
    margin-top: 0;
}
.fbits-produto-imagens .jcarousel-next-horizontal {
    right: -10px !important;
}

/* nuvem de tags */
.nuvemTags {
    padding-bottom: 1.5rem;
    margin-top: 1rem;
    float: left;
    width: 100%;
}
div#nuvemTags {
    display: block;
    width: 100%;
    float: left;
    padding: 0 3vw;
}
.nuvemTags li {
    display: inline-block;
    background: #fff;
    border: 1px solid #dadada;
    margin-right: .3rem;
    margin-top: .9rem;
    padding: .3rem;
    border-radius: 4px;
}
.nuvemTags li a {
    color: #4c4c4c;
    text-decoration: none;
}
.nuvemTags li:hover {
    border: 1px solid #e9d237;
}
.nuvemTags li:hover a {
    color: #e9d237;
}
/**/

.footerSearch {
    display: block;
    width: 100%;
    padding: 0 3vw;
    margin: 1rem 0;
    float: left;
}
.produtosAcessados.produtosAcessadosGrid {
    width: 100%;
}
.fbits-produtos-acessados-item {
    float: left;
    width: 136px;
    margin-right: .5rem;
    padding-bottom: .6rem;
}
.produtosAcessados a {
    color: #000;
    display: inline-block;
    margin-bottom: 0;
    text-decoration: none;
}
.produtosAcessados img {
    display: block;
    float: none;
    padding-right: 0;
    border: 1px solid #ddd;
    width: 134px;
    margin-bottom: .3rem;
}
span.fbits-produtosVistos-vazio {
    font-size: 15px;
    font-size: 0.9375rem;
    display: block;
    width: 100%;
    text-align: center;
}
.termosBuscados {
    padding-bottom: 1rem;
    clear: both;
}
/*.ac_results { display:none!important;}*/
.ac_results {
    box-shadow: none !important;
    margin: 0 0 0 24px !important;
    /*top: 58px !important;*/
    top: 75px !important;
    overflow: visible !important;
    width: 31.5% !important;
    min-width: 550px;
}
.ac_results::before {
    content: "";
    width: 24px;
    height: 12px;
    display: block;
    background: url(../i/header-busca-seta.png) 0 0 no-repeat;
    position: absolute;
    top: -11px;
    left: 5%;
}
.autocomplete-powered-by {
    display: none !important;
}

.categoria .fbits-content-topo .bread, .busca .fbits-content-topo .bread {
    display:none;
}
.filtroTitle.title, .fbits-filtroSelecionados .titulo {
    background: #707070;
    color: #fff;
    text-align: center;
    line-height: 2.4rem;
    text-transform: uppercase;
    font-size: 16px;
    font-size: 1rem;
}
.filtros.filtro-lateral-categoria, .fbits-hotsite .fbits-estatica-esquerda .filtros, .fbits-filtroSelecionados {
    border: 1px solid #e4e4e4;
    margin-top: 1rem;
    display: block;
    float: left;
    width: 100%;
    clear: both;
    box-shadow: none;
}
ul.filtroFilho {
    /*display: none;*/
}
ul.filtroFilho>li.hide.fbits-filtro-filho-item {
    height: auto;
}
li.filtroPai, li.fbits-filtroSelecionados-pai {
    /*border-bottom: 1px solid #e9ebee;*/
    margin: 0 .8125rem;  
    padding: 0; 
}
li.fbits-filtroSelecionados-pai {
    border: 0;
}
li.fbits-filtroSelecionados-pai .tituloPai:after {
    display: none;
}
.tituloPai {
    font-weight: 700;
    text-transform: uppercase;
    line-height: 2rem;   
    cursor: pointer;
    color: #000000;
    font-size: 20px;
    font-size: 1.25rem;
    margin: 0.5rem 0 1rem;
    position: relative;
}
.tituloPai:before {
    content: "";
    display: block;
    width: 100%;
    max-width: 183px;
    height: 4px;
    background-color: #e9d237;
    position: absolute;
    bottom: 0;
    left: -4px;
}
.tituloPai:after {
    content: "\f107";
    font-family: 'FontAwesome';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    float: right;
    display: none;
}
.tituloPai.itemaberto:after {
    content: "\f106";  
}
ul.filtroFilho {
    padding: 0 0 1rem 0;
}
.fbits-filtroSelecionados ul.filtroFilho {
    display: block;
    float: left;
    width: 100%;
}
.fbits-filtroSelecionados ul.filtroFilho li.fbits-filtroSelecionados-filho {
    background: transparent;
    padding: 0; 
}
.fbits-filtroSelecionados-filho a {
    float: left;
    font-weight: normal!important;
    width: 17px;
    text-align: left;
    margin-right: 9px!important;
    color: #6d6d5f;
    text-transform: uppercase;
    font-size: 12px;
}
.fbits-filtroSelecionados-filho label {
    font-size: 12px;
    top: 0;
    position: relative;
}
li.fbits-filtro-ver-mais {
    text-align: left;
    text-transform: lowercase;
    color: #e9d237;
    padding-top: 0.625rem;
}
li.fbits-filtro-ver-mais a {
    text-transform: lowercase;
    color: #e9d237;
    font-weight: 600;
}
span.fbits-filtro-limpar {
    text-align: center;
    display: block;
    color: #fff;
    float: none;
    width: 90%;
    background: #00bf5c;
    clear: both;
    margin: 0 auto;
    height: 30px;
    line-height: 30px;
    text-transform: uppercase;
    font-size: 12px;
    font-size: 0.75rem;
}
ul.filtroFilho>li {
    /*height: 22px;*/
    height: auto;
    line-height: 22px;
    font-size: 14px;
    font-size: 0.875rem;
}
ul.filtroFilho > li input[type="checkbox"] {
    /*border: solid 1px #f00 !important;*/
    background: #fff !important;
    position: relative;
    top: 0;
    width: 10px;
    height: 10px;
}
ul.filtroFilho>li input[type="checkbox"]::before {
    content: "";
    width: 10px;
    height: 10px;
    display: block;
    background: url(../i/filtros-up.png) 0 0 no-repeat;
}
ul.filtroFilho>li.checked input[type="checkbox"]::before {
    background: url(../i/filtros-active.png) 0 0 no-repeat;
}
ul.filtroFilho>li span.qtde {
    float: right;
    color: #a3bd31;
    display: none;
}
ul.filtroFilho>li label.item {
    background: transparent !important;
}
.boxesMinhaConta a {
    line-height: 20px;
}
.minhaconta .sideBar .filtros, ul.filtroFilho>li, .fbits-estatica-esquerda .filtroFilho a {
    width: 100%;
    color: #505050;
    /*
    float: left;
    text-transform: uppercase;
    */
}
.minhaConta .btnVoltarLoja {
    display: inline-block;
    width: 100%;
    text-align: center;
}
.minhaConta .btnVoltarLoja a {
    max-width: none;
    margin: 1rem 0;
}
.minhaConta .btnVoltarLoja a:before {
    content: "\f060";
    font-family: FontAwesome;
    font-style: normal;
    font-weight: normal;
    text-decoration: inherit;
    padding-right: 10px;
}
.minhaConta .btnVoltarLoja a:hover {
    opacity: .9;
}
.minhaconta .filtroFilho a {
    color: #000;
    font-weight: normal;
    line-height: 1.6rem;
    text-decoration: none;
}
.minhaconta ul.filtroFilho {
    padding-top: 1rem;
}
.filtroRange {
    padding: 0 .8125rem 2rem;
    display: none;
}
.filtroRange .tituloPai:after {
    display: none;
}
.rangeValores {
    margin-bottom: 0;
    margin-top: 0;
    padding-bottom: 0;
    display: block;
    width: 100%;
    float: left;
}
.rangeValores input:first-child {
    color: #6d6d5f;
    display: inline;
    font-weight: normal;
    float: left;
    width: 49%;
    font-size: 14px;
    font-size: .875rem;
    text-indent: 0;
}
.rangeValores input:last-child {
    float: right;
    text-align: right;
    color: #6d6d5f;
    font-weight: normal;
    display: inline;
    width: 49%;
    font-size:14px;
    font-size:0.875rem;
    text-indent: 0;
}

.rangeBox {
    border: 0!important;
    background: #a6a6a6!important;
    border-radius: 0!important;
    width: 100%;
    margin: auto;
    height: 3px!important;
}
.filtroRange .ui-widget-content {
    width: 100%!important;
    margin-left: 0;
    height: 3px !important;
}
.filtroRange .ui-widget-content.ui-slider-horizontal .ui-slider-handle {
    top: -.5em;
    margin-left: -.6em !important;
}

.ui-slider-horizontal {
    height: 9px !important;
}
.ui-widget-header {
    background: #333!important;   
    border: 0!important;
}
.ui-state-default.firstHandler {
  margin-left: -10px!important;
  cursor: pointer !important;
}
.ui-slider .ui-slider-handle {  
  cursor: pointer !important;
}
.firstHandler, .lastHandler {
    background: #fff !important;
    border-radius: 10px!important;
}
.ui-slider-handle.ui-state-default.ui-corner-all.firstHandler.ui-state-hover:hover, 
.ui-slider-handle.ui-state-default.ui-corner-all.lastHandler.ui-state-hover:hover {
    border: 3px solid #595858!important;
    background: #595858!important;
    border-radius: 10px!important;    
}
.ui-widget-content {
    width: 94vw!important;
    margin-left: -143px;
}
.ui-datepicker .ui-datepicker-header {
    float: left;
    width: 100%;
    display: block;
}
.ui-datepicker table {   
    display: block;
    float: left;
}
.ui-datepicker table thead, .ui-datepicker table tbody, .ui-datepicker table thead tr, .ui-datepicker table tbody tr {
    display: block;
    float: left;
    width: 100%;
}
.ui-datepicker table tbody tr {   
    height: 30px;
}
.ui-datepicker table thead tr th {
    display: block;
    float: left;
    width: 14.28571428571429%;
    padding: 0;
    line-height: 30px;
}
.ui-datepicker table tbody tr td {
    display: block;
    float: left;
    width: 14.28571428571429%;
    padding: 0;
    text-align: center;
    height: 100%;
}
.ui-datepicker table tbody tr td span.ui-state-default {
    display: block;
    width: 95% !important;
    margin: 2.5% auto !important;
    height: 95% !important;
    text-align: center !important;
}
.ui-datepicker table tbody tr td a.ui-state-default {
    display: block;
    width: 95% !important;
    margin: 2.5% auto !important;
    height: 95% !important;
    text-align: center !important;
    padding: 0 !important;
    line-height: 26px;
}



.paddingbox, .fbits-produto-informacoes-extras {
    color: #707070;
    letter-spacing: .025rem;
    font-weight: normal;
    font-family: 'avenir-lt-55-roman',arial;
    font-size: 16px;
    font-size: 1rem;
    line-height: 1.2rem;
    text-align: justify;
}
.fbits-produto-informacoes-extras {
    clear: both;
    padding: 1rem 0;
    display: block;
    float: left;
    width: 100%;
}
#bodyListaCompra .fbits-produto-informacoes-extras {
    border-top: solid 1px #bebebe;
    margin-top: 3rem;
    padding-top: 1.5rem;
}
.fbits-produto-informacoes-extras h2 {
    text-align: left;
    margin-bottom: 1rem;
    float: left;
    width: 100%;
    text-transform: uppercase;
    color: #0F2134;
    line-height: 25px;
    font-size: 20px;
    font-size: 1.25rem;
}

/* breadcrumb */
.bread {
    font-size: 14px;
    font-size: 0.875rem;
    line-height: 2rem;
    margin-top: 0.7rem;
    margin-bottom: 0.7rem;
    text-align: center;
    padding: 0;
    clear: both;
}
.content.produto .bread, .content.listacompra .bread {
    /*border-top: 1px solid #a3bd31;*/
    margin-top: 0;
}
.bread li {
    display: inline-block;
    color: #0d0d0d;
}
.bread li a {
    color: #0d0d0d;
    text-decoration: none;
}
.bread li:last-child a {
    color: #0d0d0d;
    font-weight: bold;
}
.bread li:after {
    content: ">";
    margin: 0 0.375rem;
}
.bread li:last-child:after {
    display: none;
}
/**/

.fbits-banner-centro img {
    width: 100%;
}
.bgResultadosCat {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    border-top: solid 1px #bebebe;
    padding-top: 1rem;
}
.mostrando {
    font-size: 14px;
    font-size: 0.875rem;
    margin-top: 0.5rem;
    margin-bottom: 1rem;
    text-align: left;
    color: #000000;
    line-height: 18px;
    clear: both;
    float: left;
    /*text-transform: uppercase;*/
}
span.fbits-ordenar-por {
    text-transform: uppercase;
    font-size: 14px;
    font-size: .875rem;
    font-weight: normal;
    line-height: 30px;
    display: block;
    float: none;
    padding-right: 10px;
}
.ordenar select {
    opacity: 1!important;
    text-transform: uppercase;
    background-color: #fff;    
    color: #000000;
    letter-spacing: .02rem;
    border: 1px solid #bebebe;
    padding-left: 15px;
    padding-right: 10px;
    width: auto !important;
    border-radius: 0;
}
span.customSelect {
    line-height: 30px;
    height: 30px;
    padding-left: .5rem;
    text-transform: uppercase;
    font-size: 11px;
    font-size: .6875rem;
    width: auto;
    float: left;
    clear: none;
}
span.customSelectInner {
    width: 100% !important;
}
.buscaSecundaria span {
    font-weight: bold;
}
div#powered {
    text-align: center;
    margin-bottom: 2rem;
    display: none;
}
ul.pagination {
    overflow: hidden;
    float: right;
}
.paginacao {
    margin-top: 1rem;
}
.paginacao .pg, .paginacao .ret, .pagination li {
    display: inline-block;
    margin-left: .5rem;
    margin-bottom: 0.6rem;
}
.paginacao li:first-child {
    margin-left: 0;
}
.paginacao .pg a, .paginacao .ret a, .pagination a {
    display: inline-block;
    width: 2rem;
    height: 2rem;
    border: none;
    line-height: 2rem;
    color: #060606;
    background-color: #ead935;
    text-align: center;
    text-decoration: none;
    border-radius: 0;
    font-size: 15px;
    font-size: 0.9375rem;
}
.busca .footerSearchBox, .categoria .footerSearchBox {
    padding-left: 0;
    padding-right: 0;
}
li.atributos-container.atributos-tamanho {
    display: block!important;
}
.fbits-hotsite .content {
    padding: 0 3vw;
    display: block;
    float: left;
    width: 100%;
}
.fbits-hotsite .fbits-estatica-conteudo {
    font-size:13px;
    font-size:0.8125rem;
    float: left;
    width: 100%;
    padding-left: 0;
    display: block;
    padding-top: 1rem;
}
.fbits-hotsite .fbits-estatica-esquerda {
    width: 100%;
    display: block;
    float: left;
    padding-bottom: 2rem;
}
.textoInterna h3  {
    margin: 1rem 0;
}
.fbits-hotsite .fbits-estatica-esquerda li.filtroPai {   
    float: left;
}
.fbits-estatica-esquerda ul.filtroFilho {
    display: block;
    float: left;
    width: 100%;
}
.fbits-estatica-esquerda .lineFiltro { display:none;}

/* Produto */
.content.produto, .content.listacompra {
    padding: 0; 
    overflow:hidden;
}
.content.produto .interna.cf, .content.listacompra .interna.cf {
    display: block;
    float: left;
    padding: 0 3vw;
    width: 100%;
}
.colunaProduto, .coluna-listacompra {
    float: left;
    min-height: inherit;
    overflow: hidden;
    width: 100%;
}
.colunaProduto.coluna1, .coluna-listacompra.coluna1 {
    -webkit-order: 2;
    order: 2;
}
.colunaProduto #televendas {
    float: left;
    padding: 1rem 0 2rem;
    border-top: solid 1px #bebebe;
    width: 100%;
    color: #000;
    margin-top: 1rem;
    font-size: 18px;
    font-size: 1.125rem
}

/* Ajuste corrigir troca de imagem Produto */
.colunaProduto img#zoomImagemProduto:nth-child(2), /*.coluna-listacompra img#zoomImagem:nth-child(2)*/ {
    display: none !important;
}
/**/


.produtoInfo-title.colunaWide {
    -webkit-order: 1;
    order: 1;
    padding-bottom: .8rem;
    display: block; 
    font-size: 28px;
    font-size: 1.75rem;
    color: #333;
    text-transform: initial;
}
#bodyListaCompra .listacompra-comprarselecionados {
    height: 51px;
    line-height: 51px;
    border-bottom: solid 4px #009a4a;
}

/* Ajustes Thumb */
#bodyListaCompra .fbits-componente-imagemvariantethumb .jcarousel li, #bodyListaCompra .fbits-imagensMinicarrossel-item {
    margin-top: 1rem;
}
/**/


.colunaProduto.coluna2, .coluna-listacompra.coluna2 {
    -webkit-order: 3;
    order: 3;
    margin-top: 1.5rem;
}
.colunaProduto.coluna3, .coluna-listacompra.coluna3 {
    margin-top: 1.5rem;
    -webkit-order: 4;
    order: 4;
}
.coluna-produto-horizontal {
    display: block;
    clear: both;
    float: left;
    width: 100%;
    -webkit-order: 5;
    order: 5;
    margin-top: 1.5rem;
}
button#btnAlertaValores {
    padding: 0 1rem;
    border: 1px solid #a3bd31;
    background: #fff;
    color: #a3bd31;
    width: 100%;
    font-size: 16px;
    font-size: 1rem;
    max-width: 300px;
    margin: auto;
    float: none;
    display: block;
}
button#btnAlertaValores:before {
    content: "\f101";
    font-family: "foundation-icons";
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    padding-right: 5px;
}
button#btnAlertaValores:hover {
    background: #a3bd31;
    color: #fff;
}
.fbits-Div-BtnContraproposta {   
    border: 1px solid #000;
    padding: 0;   
    height: 40px;
    line-height: 40px;
    text-align: center;
    color: #000;
    padding: 0 8px;
    margin: 2rem 0;
    display: inline-block;
    width: 100%;
    max-width: none;
}
.fbits-Btn-BtnContraproposta {   
    padding-left: 8px;   
    color: #0F2134;
    height: auto;    
    text-transform: uppercase;
    font-size: 16px;
    font-size: 1rem;
}
.fbits-Img-BtnContraproposta {display: none;}
.fbits-Div-BtnContraproposta:before {
    content: "\f0e3";
    font-family: 'FontAwesome';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;   
}
.fbits-Div-BtnContraproposta:hover {
    background: #e9d237;
    color: #000;
}
.fbits-Div-BtnContraproposta:hover .fbits-Btn-BtnContraproposta {
    color: #000;
}
.listacompra-produtos-item {
    border: 1px solid #bebebe;
    clear: both;
    margin: 1rem 0 0.5rem;
    min-height: 76px;
    padding: 1rem;
    float: left;
    width: 100%;
}
.listacompra-produtos-imagem {
    border: 0;
    float: left;
    margin-right: 2%;
    height: 100%;
    width: 28%;
    margin-top: 10px;
}
.listacompra-produtos-item input[type="checkbox"] {
    display: inline-block;
    float: right;
    margin-bottom: 10px;
    margin-right: 0;
    margin-top: 0;
}
.zoomWrapper {
    width: 100%!important;
    height: 100% !important;
    border-radius: 0;
    border: solid 1px #bebebe;
}
.zoomWrapper::after {
    content: "";
    display: block;
    width: 50%;
    height: 5px;
    background-color: #e9d237;
    margin: 0 auto;
}

img#zoomImagemProduto, img#zoomImagem {
    max-width: 100%!important;
    position: relative!important;
    border: 0!important;
    margin: auto;
    display: block;
}
.zoomContainer {
    display: none;
}
.zoomLens {
    border: 1px solid #333 !important;
}
.fbits-produto-produtosrecomendados  {
    position: relative;
    clear: both;
    display: block;
    float: left;
    width: 100%;
    padding-top: 1.5rem;
    border-top: solid 1px #bebebe;
}
.fbits-componente-imagemvariantethumb.fbits-produto-imagens {
    width: 100%;
    display: block;
    float: left;
    position: relative;
    margin: 0;
}
.fbits-componente-imagemvariantethumb .jcarousel, .fbits-listacompra-imagens {
    width: 84vw;
    margin: auto;
    padding: 0;
    height: auto;
}
.produto-imagem-eazyZoom .fbits-componente-imagemvariantethumb .jcarousel-prev,
.produto-imagem-eazyZoom .fbits-componente-imagemvariantethumb .jcarousel-next {
    background: transparent;
    width: 7vw;
    top: 0px;
    height: 15vw;
}
.fbits-componente-imagemvariantethumb .jcarousel li, .fbits-imagensMinicarrossel-item {
    height: auto!important;
    /*width: 26vw!important;*/
    width: 15vw!important;
    margin-right: 1vw;
    margin-left: 1vw;
    margin-bottom: 0;
}
.fbits-componente-imagemvariantethumb .jcarousel li a.zoom-thumbnail, .fbits-imagensMinicarrossel-item a.zoom-thumbnail {
    display: block;
    float: left;
    width: 100%;
}
.fbits-componente-imagemvariantethumb img, .fbits-imagensMinicarrossel-item img {
    border: 1px solid #bebebe;
    display: block;
    margin: auto;
    max-width: 100%;
    border-radius: 0;
}
.fbits-componente-imagemvariantethumb img:hover, .fbits-imagensMinicarrossel-item img:hover {
    border: 1px solid #e9d237;
}
.prodTitle, .listacompra .prodTitle {
    text-align: left;
    margin: .5rem 0 .5rem 0;
    float: left;
    width: 100%;
    /*text-transform: uppercase;*/
    color: #333333;
    line-height: 25px;
    font-size: 22px;
    font-size: 1.375rem;
}
.produto .fbits-sku {
    color: #0d0c0d;
    text-align: left;
    display: inline-block;
    width: 50%;
    float: left;
    height: 17px;
    line-height: 17px;
    font-size: 14px;
    font-size: .875rem;
    background-color: #ffffff;
    border-radius: 0;
    padding: 0 2% 0 0;
}
.colunaProduto .fbits-etiquetas-sequencial {
    display: block;
    position: absolute;
    width: auto;   
    top: 0.625rem;
    left: inherit;
    right: -5px;
    z-index: 10;
}
.fbits-etiquetas-sequencial .fbits-etiqueta-lancamento {
    display: block;
    background: url(../i/etiquetas/3.png);
    float: left;   
    margin-bottom: 2px;
}
.fbits-etiquetas-sequencial .fbits-etiqueta-promocao-de-por {
    display: block;
    clear: both;
    background: url(../i/etiquetas/4.png);
    float: left;
    width: 90px;
    height: 19px;
    margin-bottom: 2px;
}
.fbits-etiquetas-sequencial .fbits-etiqueta-fretegratis {
    display: block;
    clear: both;
    background: url(../i/etiquetas/2.png);
    float: left;   
    margin-bottom: 2px;
}
.fbits-etiqueta-trocagratis {
    display: block;
    clear: both;
    background: url(../i/etiquetas/6.png);
    float: left;   
    margin-bottom: 2px;
    width: 90px;
    height: 19px;
}

/* ETIQUETAS PÁGINA PRODUTO*/
.produtoInfo-title .produto-etiquetas {
    float: right;
    width: 35%;
    max-width: 90px;
}
.produtoInfo-title .fbits-etiquetas-sequencial {
    width: 100%;
    display: inline-block;
}
.produtoInfo-title .fbits-etiquetas-sequencial .fbits-etiqueta-lancamento {
    width: 100%;
    margin-top: 2px;
}
.produtoInfo-title .fbits-etiquetas-sequencial .fbits-etiqueta-selo, .produtoInfo-title .fbits-etiquetas-sequencial .fbits-preco-off {
    margin-top: 2px;
}
.produtoInfo-title .fbits-etiquetas-sequencial .fbits-etiqueta-selo img {
    width: 100%;
    max-width: 118px;
    display: block;
    margin: auto;
}
.produtoInfo-title.colunaWide div#fbits-fabricante-logo {
    height: auto;
}
/**/

.avisoIndisponivel {
    margin-bottom: 0.5rem;
    text-align:center;
    position: relative;
    float: left;
    width: 100%;
    padding-bottom: 15px;
}
.avisoIndisponivel p {
    margin-bottom: 5px;
}
.avisoIndisponivel p.error {
    position: absolute;
    bottom: -5px;
}
.avisoIndisponivel input[type="text"] {
    width: 100%;
    margin-bottom: 5px;
}
.avisoIndisponivel #btnEnviarAviseMe {
    width: 50%;
}
.produto .fbits-avaliacao {
    float: right;
    width: 50%;
    display: block;
    clear: none;
    text-align: right;
}
.fbits-avaliacao {
    float: left;
    display: block;
    width: 100%;
}
.avaliacao {
    display: block;
    float: left;
    width: 100%;
    height: 30px;
    text-align: right;
}
a.avalie-top {
    color: #717171;
    font-size: 12px;
    font-size: 0.75rem;
    margin-left: .6rem;
    display: inline-block;
    line-height: 30px;
    float: left;
    /*
    text-transform: uppercase;
    text-decoration: underline;
    */
}
.star, .starEmpty {
    display: inline-block;
    height: 30px;
    width: 16px;
    line-height: 30px;
    margin-right: 0;
    position: relative;
    float: left;
    font-family: 'FontAwesome';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    color: #ffd40a;
    font-size: 15px;
}
.star:before {
    content: "\f005";
}
.starEmpty:before {
    content: "\f006";
}
.spot .avaliacao span {
    display: none;
}
.spot .avaliacao span.icon {
    display: inline-block!important;
    font-size: 12px;
    height: 20px;
    line-height: 20px;
    float: none;
}
.fbits-dados-livraria {
    display: block;
    float: left;
    width: 100%;
    clear: both;        
}
.fbits-dados-livraria a {
    color: #6d6d5f;
    text-decoration: none;
}
.prodVariante .summaryDesktop, #ulFrete .summaryDesktop,
.prodVariante .summary, #ulFrete .summary {
    color: #6d6d5f;
    margin-bottom: 0;
    margin-top: 7px!important;
    padding-left: 18px;
    font-size: 16px;
    font-size: 1rem;
    text-transform: uppercase;
    margin-left: 0;
}
.prodVariante .summaryDesktop {
    text-transform: none;
    text-decoration: none;
}
.prodVariante .summaryDesktop:before, #ulFrete .summaryDesktop:before,
.prodVariante .summary:before, #ulFrete .summary:before {
    border-bottom: 5px solid transparent;
    border-left: 8px solid #595959;
    border-top: 5px solid transparent;
    content: "";
    display: inline-block;
    height: 0;
    line-height: 1px;
    margin-left: -17px;
    margin-top: 2px;
    padding-left: 6px;
    position: absolute;
}
.prodVariante .summaryDesktop.opened:before, #ulFrete .summaryDesktop.opened:before,
.prodVariante .summary.opened:before, #ulFrete .summary.opened:before {
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-top: 8px solid #595959;
    content: "";
    height: 0;
    margin-left: -17px;
    margin-top: 3px;
    padding-left: 0;
}
.details .details-content:before {
    /*
    content: "";
    width: 100%;
    height: 78px;
    display: block;
    background: url(../i/frete-icon.png) 50% 50% no-repeat;
    */
}
.details-content .simule {
    text-align: center;
    display: block;
    float: none;
    width: 100%;
}
#bodyProduto .carrinhoInputBlock .btnCalcular {
    background: url(../i/btn-ok.png) 50% 50% no-repeat #e9d237;
}
.simule {
    font-size: 14px;
    font-size: 0.875rem;
    color: #12140f;
    display: inline-block;
    font-weight: normal;
    line-height: 15px!important;
    margin-right: 15px;
    /*
    margin-top: 10px;
    padding-left: 18px;
    text-transform: uppercase;
    */
    float: left;
}
.simule br {
    /*display: none;*/
}
#txtCalculaFreteProduto {
    width: 85%;
    border: 1px solid #c1c1c1;
    height: 42px;
    padding: 0 13px;
    vertical-align: middle;
    float: left;
    margin-top: 10px;
    border-radius: 0;
}
.produtoInfo #naoSeiCep, .details .details-content a#naoSeiCep {
    line-height: 20px;
    /*margin-left: 18px;*/
    display: block;
    float: left;
    clear: none;
    width: 100%;
    text-align: center;
}
.resultado-frete {
    border: 1px solid #aaa;
    border-radius: 4px;
    box-shadow: 0 1px 2px #ccc;
    margin-left: 0;
    margin-top: 0;
    padding: 3px;
    text-align: center;
    width: 100%;
    display: none;
    /*float: left;*/
    clear: both;
    background: #ffffff;
}
.infoProd {
    padding-top: 1.5rem;
    padding-bottom: 1.5rem;
    border-top: solid 1px #bebebe;
}
.colunaProduto.coluna2 .optionAtributos ul li ul li div+div+div>div {  
    text-align: left;
}
.fbits-parcelamento-padrao {
    display: block;
    clear: both;
    /*padding-top: 10px;*/
}
div.fbits-produto-opcaoParalela {
    background: #F5F5F5;
    border: 1px solid #DCDCDC;
    padding: 10px;
    margin-bottom: 15px;
    height: 100%;
    display: block;
    float: left;
    width: 100%;
}
div.fbits-produto-opcaoParalela span.fbits-produto-opcao-paralela {
    display: block;
    font-weight: normal;
    color: #000;
    font-size:13px;
    font-size:0.8125rem;
    margin-bottom: 3px;
}
div.fbits-produto-opcaoParalela div[id^="view-item-quantidade"] {
    clear: none!important;
    float: left;
    margin-top: 5px;
    width: auto;
    padding-top: 5px;
}
div.fbits-produto-opcaoParalela div[id^="divItensCombo"] {
    float: left;
}
#divItensCombo-0 ul, #divItensCombo-0 li {
    display: inline-block;
}
div.fbits-produto-opcaoParalela li.atributos-container {
    display: block!important;
    float: left;
    margin: 5px 0 10px;
    padding-bottom: 0;
}
div.fbits-produto-opcaoParalela select.optionProduct {
    border: 1px solid #D8D8D8;
    font-size:11px;
    font-size:0.6875rem;
    color: #666;
    padding: 1px;
    margin-right: 4px;
    margin-bottom: 0;
    width: auto;
}
div.fbits-produto-opcaoParalela .atributo-div {
    display: none;
}
.paddingbox img {
    max-width: 100%;
}
span#spnValorReferente {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.variante {
    font-size: 13px;
    font-size: .8125rem;
    clear: both;
    position: relative;
}
.atributo-passo {
    display: none;
}
.valorAtributo, .listacompra-produtos-atributos-opcao {
    border: 1px solid #bebebe;
    color: #565656;
    cursor: pointer;
    display: inline-block;
    font-weight: normal;
    height: 40px;
    line-height: 40px;
    margin: 0 6px 6px 0;
    min-width: 40px;
    padding: 0 5px;
    font-size: 16px;
    font-size: 1rem;
    text-align: center;
    position: relative;
    border-radius: 0;
}
.valorAtributo:hover, .listacompra-produtos-atributos-opcao:hover {
    border: 1px solid #0F2134!important;
}
.valorAtributoFoto.valorAtributo, .listacompra-produtos-atributos-opcao.atributo-imagem {
    width: 50px;
    height: 50px;
    padding: 0;
    background-size: contain !important;
}
.listacompra-produtos-atributos-opcao.atributo-imagem img {
    width: auto!important;
    height: auto!important;
    max-width: 100%;
}
.toolTipProd { display:none;}
.valorAtributo.selected, .listacompra-produtos-atributos-opcao.selecionado {
    border: 1px solid #e9d237!important;
    background: #e9d237;
    color: #ffffff;
}
.optionAtributos {
    margin-top: 1rem;
    margin-bottom: 1rem;
}
div#msgEstoqueDisponivel {
    margin-top: 1rem;
    margin-bottom: 1rem;
    text-align: left;
    display: block;
    float: left;
    clear: both;
    width: 100%;
    font-size: 14px;
    font-size: 0.875rem;
}
.fbits-responsive-carrinho-frete-prazo {
    float: right;
    width: 100%;
    text-align: left;
}
div#msgEstoqueDisponivel b {
    color: #e9d237;
    font-weight: bold;
}
.produto .fbits-forma-pagamento, .fbits-componente-listacompra-preco {
    text-align: left;
    margin-bottom: 1rem;
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.fbits-produto-indisponivel .produto .fbits-forma-pagamento, .fbits-produto-indisponivel .fbits-componente-listacompra-preco .preco, .fbits-produto-indisponivel .produto div[id^="view-item-quantidade"],
.fbits-produto-indisponivel .produto .produto-comprar, .fbits-produto-indisponivel .produto .fbits-calculafrete, .fbits-produto-indisponivel .produto .fbits-parcelamento-padrao {
    display: none;
}
.fbits-produto-indisponivel .produto div[id^="produto-variante"] {
    padding-bottom: 1rem;
}
.precoDe, .fbits-componente-listacompra-preco-de, .listacompra-produtos-precode {
    color: #000000;   
    text-decoration: line-through;   
    overflow: hidden;
}
.spot .precoDe {     
    font-size: 14px;
    font-size: 0.875rem;
    display: none;
}
.precoPor, .fbits-componente-listacompra-preco-por, .listacompra-produtos-precopor {
    color: #333333;
    /*overflow: hidden;*/   
}
.precoParcela {
    color: #0F2134;
}
.spot .precoPor {  
    font-size: 15px;
    font-size: 1.5rem;
    font-weight: 700;
    width: 100%;
}
.spot .precoPor::after {  
    content: "em até";
    color: #333333;
    font-size: 15px;
    font-size: 0.9375rem;
    display: inline-block;
    font-weight: normal;
}
.precoPor.com-precoDe:before {
    /*content: "Por";*/      
}
.spot .precoPor.com-precoDe:before {  
    font-size:14px;
    font-size:0.875rem;   
}
.spot .precoPor span.fbits-avista {
    display: none;
    
}
.spot .precoParcela, .spot .precoAssinantes {
    color: #333333;
    font-size: 14px;
    font-size: 0.875rem;
    margin-bottom: 0.9375rem;
}
.spot .precoParcela .fbits-parcela {
    font-weight: 700;
}
.spot .precoParcela:after {
    content: "sem juros";
    display: inline-block;
    color: #333333;
    font-size: 15px;
    font-size: 0.9375rem;
}
.spot .fbits-spot-preco-boleto-container {
    color: #333333;
    font-size: 14px;
    font-size: 0.875rem;
}
.spot .fbits-spot-preco-boleto-container .fbits-spot-boleto-valor {
    font-weight: 700;
}
.spot .fbits-spot-preco-boleto-container .fbits-spot-boleto-ou:before {
    content: "ou";
    display: inline-block;
    margin-right: 5px;
}
.spot .fbits-spot-preco-boleto-container .fbits-spot-boleto-off:before {
    content: "à vista";
    display: inline-block;
    margin-left: 5px;
}
.spot .spotContent .spotCategoria, .spot .spotContent .spotFab {
    line-height: 20px;
    height: 20px;
    display: block;
    float: left;
    width: 100%;
    color: #a3bd31;
    font-size: 12px;
    font-size: .75rem;
    text-align: center;
    overflow: hidden;
}
.spot .spotContent a.lnkCategoriaPrincipal{
    text-transform: uppercase;
    color: #0F2134;
    font-size: 12px;
    font-size: .75rem;
    display: inline;
    width: auto;
    float: none;
}
.spot .spotContent .spotFab .spotFabricante {
    width: auto;
    display: inline;
    float: none;
}
.colunaProduto .precoPor, .fbits-componente-listacompra-preco-por, .listacompra-produtos-precopor {
    font-size: 30px;
    font-size: 1.875rem;
    line-height: 35px;
    color: #000000;
    font-weight: 700;
}
.listacompra-produtos-precopor {
    font-size: 24px;
    font-size: 1.5rem;
}
.colunaProduto .precoPor::after, .fbits-componente-listacompra-preco-por::after, .listacompra-produtos-precopor::after {
    content: "em até";
    display: inline-block;
    margin-left: 0.3125rem;
    font-size: 20px;
    font-size: 1.25rem;
    line-height: 25px;
    color: #333333;
    font-weight: 700;
}
.listacompra-produtos-precopor:after {
    display: none;
}
.colunaProduto .precoPor:before {
    content: "Por";
    text-transform: uppercase;
    margin-right: .3rem;
    font-size: 16px;
    font-size: 1rem;
    display: none;
}
.colunaProduto .precoDe, .fbits-componente-listacompra-preco-de, .listacompra-produtos-precode {
    text-decoration: line-through;
    font-size: 14px;
    font-size: 0.875rem;
    line-height: 20px;
    margin: 0;
    height: inherit;
    color: #343434;
}
.listacompra-produtos-precode, .listacompra-produtos-precopor {
    float: right;
    width: 65%;
    margin-left: 5%;
    margin: 0;
}
.colunaProduto .precoParcela, .coluna-listacompra .precoParcela {
    margin-bottom: 0;
    line-height: 20px;
    font-size: 18px;
    font-size: 1.125rem;    
    /*text-transform: uppercase;*/
}
.colunaProduto .precoParcela .fbits-parcela, .coluna-listacompra .precoParcela .fbits-parcela {
    font-weight: 700;
}
.colunaProduto .precoVista, .fbits-parcelamento .precoVista  {
    color: #000000;
    font-size: 15px;
    font-size: 0.9375rem;
    line-height: 18px;
    display: none;
}
.colunaProduto .precoVista .iBoleto, .fbits-parcelamento .precoVista .iBoleto  {
    width: 31px;
    height: 26px;
    display: inline-block;
    background: url(../i/produto-icone-boleto.png) 0 0 no-repeat;
    margin-right: 0.625rem;
    vertical-align: top;
}
.colunaProduto .precoVista .fbits-boleto-ou, .fbits-parcelamento .precoVista .fbits-boleto-ou  {
    display: none;
}
.colunaProduto .precoVista span.fbits-boleto-preco, .fbits-parcelamento .precoVista span.fbits-boleto-preco {
    color: #000000;
    font-size: 19px;
    font-size: 1.188rem;
    line-height: 21px;
    font-weight: 700;
}
.colunaProduto .precoVista span.fbits-boleto-desconto, .fbits-parcelamento .precoVista span.fbits-boleto-desconto {
    color: #009045;
}
select.optionProduct {
    border: 1px solid #b3b3b3;
    padding: 0.4rem;
    width: 6rem;
    border-radius: 0;
}
.atributo-div, .listacompra-produtos-atributos-titulo, .divLabelQuantidade {
    color: #222222;
    font-size: 14px;
    font-size: 0.875rem;
    font-weight: normal;
    text-transform: uppercase;
    width: auto;
    display: inline-block;
    line-height: 30px;
}
.divLabelQuantidade {
    float: right;
    width: 65%;
    margin-left: 5%;
}
.divQuantidade {
    display: block;
    width: 65%;
    float: right;
    padding: .5rem 0 1rem;
    margin-left: 5%;
}
.colunaProduto .atributo-div {
    text-align: left;
    position: relative;
    z-index: 0;
    padding-right: 5px;
}
.bt.comprarProduto {
    font-size: 24px;
    font-size: 1.5rem;
    text-transform: uppercase;
    width: 100%;
    margin-bottom: .8rem;
    font-weight: 500;
    border-radius: 0;
    height: 51px;
    line-height: 51px;
    /*
    background-color: #009045;
    border-bottom: solid 4px #036d36 !important;
    */
    background-color: #00bf5c;
    border-bottom: solid 4px #009a4a !important;
}
div[id^="produto-variante"] {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    border-top: solid 1px #bebebe;
    margin-top: 1rem;
}
.produto-boleto div[id^="produto-variante"] {
    border-top: none;
    border-bottom: solid 1px #bebebe;
    margin-top: 0;
}
.addProd {
    height: 3em;
    width: 100%;
    display: inline-flex;
    clear: both;
    float: left;
    text-align: center;
}
.colunaProduto .addListaDesejos {
    clear: both;
    display: block;
    float: left;
    width: 100%;
    height: 40px;
    line-height: 40px;
    color: #6d6d5f;
    text-transform: uppercase;
    background: transparent;
    font-weight: normal;
    margin-bottom: 5px;
    font-size: 14px;
    font-size: .875rem;
}
.colunaProduto .addListaDesejos.listaDesejosAdicionado:before {
    content: "\f08a";
    color: #fff;
    border: 1px solid #a3bd31;
    background-color: #a3bd31;
}
.colunaProduto .addListaDesejos:before {
    content: "\f08a";
    display: block;
    float: left;
    background-color: #fff;
    border: 1px solid #dcdcdc;
    height: 38px;
    width: 38px;
    margin-right: 12px;
    font-family: 'FontAwesome';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-size: 22px;
    font-size: 1.375rem;
    text-align: center;
    color: #a3bd31;
}
.colunaProduto .fbits-comprar {
    display: block;
    float: left;
    width: 100%;
    height: 40px;
    clear: both;
    color: #0F2134;
}
.colunaProduto .fbits-comprar:before {
    content: "?";
    display: block;
    float: left;
    border: 1px solid #dcdcdc;
    background-color: #fff;
    height: 38px;
    width: 38px;
    line-height: 38px;
    font-family: 'icofont';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    margin-right: 12px;
    position: relative;
    z-index: 1;    
    font-size: 25px;
    font-size: 1.5625rem;
}
.colunaProduto .bt.addCarrinho, .colunaProduto .fbits-comprar a.bt.comprarProduto.btn-comprar {
    display: inline-block;
    width: auto;
    float: left;
    height: 40px;
    background: transparent;
    padding-left: 52px;
    margin-left: -52px;
    position: relative;
    z-index: 2;
    color: #6d6d5f;
    text-decoration: none;
    text-transform: uppercase;
    font-size: 14px;
    font-size: .875rem;
    letter-spacing: .025rem;
}

.produto-boleto .prodSelos, .produto-boleto div#msgEstoqueDisponivel, .produto-boleto .avisoIndisponivel, .produto-boleto .produto-comprar, .produto-boleto div[id^="view-item-quantidade"], .produto-boleto div[id^="view-item-quantidade"]+div,
.colunaProduto .produto-boleto .precoDe, .produto-boleto .fbits-componente-listacompra-preco-de, .produto-boleto .listacompra-produtos-precode, .colunaProduto .produto-boleto .precoPor, .produto-boleto .fbits-componente-listacompra-preco-por, .produto-boleto .listacompra-produtos-precopor, 
.colunaProduto .produto-boleto .precoParcela, .coluna-listacompra .produto-boleto .precoParcela {
    display: none !important;
}
.colunaProduto .produto-boleto .precoVista, .fbits-parcelamento .produto-boleto .precoVista {
	display: block;
}
.produto .produto-boleto .fbits-forma-pagamento {
    width: 100%;
    padding: 0.75rem 0;
    /*border-bottom: solid 1px #bebebe;*/
    margin-bottom: 0;
}
.produto .produto-boleto {
    border-bottom: solid 1px #bebebe;
}

#bodyProduto .fbits-produto-nome {
    text-transform:initial;
}

#bodyProduto div#historyBoard {
    padding-top: 2.813rem;
    border-top: solid 1px #bebebe;
}
#bodyProduto div#historyBoard h2.titleHistBusca {
    font-size: 25px;
    font-size: 1.563rem;
    text-align: left;
    position: relative;
    margin-bottom: 10px;
}
#bodyProduto div#historyBoard h2.titleHistBusca::before {
    content: "";
    height: 3px;
    background: #e9d237;
    display: block;
    border: none;
    width: 70%;
    position: absolute;
    bottom: -5px;
}
a#indicaAmigo {
    background: #0F2134;
    color: #fff;
    font-size: 11px;
    font-size: .6875rem;
    text-decoration: none;
    position: relative;
    white-space: nowrap;
    padding: 0 0.5rem;
    display: block;
    line-height: 20px;
    height: 20px;
    border-radius: 3px;
    float: left;
    text-align: right;
}
a#indicaAmigo i.indicar.icon  {
    width: auto;
    height: 20px;
    line-height: 20px;
    display: inline-block;
    float: left;
    font-family: 'FontAwesome';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    font-style: normal;
    text-align: left;
    margin-right: 5px;
}
a#indicaAmigo i.indicar.icon:before {
    content: "\f003";
}
.fbits-parcelamento {
    display: block;
    float: left;
    clear: both;
}
.fbits-parcelamento .precoVista {
    font-size:13px;
    font-size:0.8125rem;
    margin-bottom: 1rem;
}
.acoesProd {   
    display: block;
    float: left;
    margin-top: 1rem;
}
.share {
    position: relative;
    display: block;
    width: 100%;
    float: left;
    clear: both;
    margin-top: 1.5rem;
}
.share .fbits-facebook, .share .fbits-twitter {
    margin-right: 5px;
    display: block;
    float: left;
}
.share .fbits-facebook .fb_iframe_widget span {
    width: 85px!important;
    display: block !important;
    float: left !important;
}
div[id^="view-item-quantidade"] {
    padding-top: 5px;
    display: block;
    float: left;
    width: 100%;
}
.listacompra .fbits-calculafrete {
    display: block;
    clear: both;
}
#listaProdutos {
    margin-bottom: 10px;
    float: left;
    display: block;
    width: 100%;
    clear: both;
    margin-top: 2rem;
}
.produto-comprar {
    clear: both;
    margin-bottom: 0;
    margin-top: 15px;
    display: block;
    float: left;
    width: 100%;
}
.prodSelos {
    display: none;
}
.fbits-produto-informacoes-extras .informacao-abas {   
    margin-bottom: 1rem;
}
.fbits-produto-informacoes-extras .ui-slider-tabs-content-container {
    border-color: #f5f3f3;
    border-radius: 0 0 4px 4px;
}
.fbits-produto-informacoes-extras .ui-slider-tabs-list li {
    border-color: #f5f3f3;
    background-color: #f5f3f3;
    padding: 0;
}
.fbits-produto-informacoes-extras .ui-slider-tabs-list li:hover {
    border-color: #e9d237;
    background-color: #e9d237;
}
.fbits-produto-informacoes-extras .ui-slider-tabs-list li:first-of-type {
    border-left: none;
}
.fbits-produto-informacoes-extras .ui-slider-tabs-list li a {
    padding: 0 10px;
    font-weight: bold;
}
.fbits-produto-informacoes-extras .ui-slider-tabs-list li a h3 {
    font-family: 'avenir-lt-55-roman', arial, sans-serif;
    font-weight: 400;
    color: #707070;
    font-size: 18px;
    font-size: 1.125rem;
}
.fbits-produto-informacoes-extras .ui-slider-tabs-list li:hover a h3 {
    color: #ffffff;
}
.fbits-produto-informacoes-extras .ui-slider-tabs-list li.selected {
    background-color: #e9d237;
    border-color: #e9d237;
}
.fbits-produto-informacoes-extras .ui-slider-tabs-list li.selected h3 {
    color: #ffffff;
}
.texto-descricao td li {
    list-style: none;
    display: inline-block;
    margin: 10px;
}
.produto .carousel, .listacompra .carousel {
    height: auto !important;
    width: 100% !important;
    overflow: visible !important;
    margin-bottom: 1rem;
}
.clear {
    clear: both;
}
.carousel .jsCarrousel li .spot {
    width: 100%;
    margin: 0;
}
.fbits-conteudo-topo {
    padding-bottom: 1rem;
    line-height: 1.6rem;
    text-align: justify;
    display: block;
    width: 100%;
    font-size: 12px;
    font-size: 0.75rem;
}
.carrosselBg {
    position: relative;
    clear: both;
}
.mainBar .fbits-conteudo-centro {
    font-size: 12px;
    font-size: 0.75rem;
    padding-bottom: 2rem;
    line-height: 1.6rem;
    text-align: justify;
    clear: both;
    margin-top: 1rem;
    display: block;
    width: 100%;
    float: left;
}
.fbits-conteudo-lateral-esquerda {
    font-size:12px;
    font-size:0.75rem;
    padding-top: 0.5rem;
    /*text-align: justify;*/
    line-height: 1rem;
    float: left;
    margin: 10px 0;
}
.fbits-indicacao-amigo, .fbits-avaliar-produto, .fbits-indicar, .fbits-avaliar  {
    margin-bottom: 1rem;
    width: 100%;
    display: block;
    float: left;
    padding: 0;
}
.fbits-indicacao-amigo .line h2, .fbits-avaliar-produto .line h2 {
    font-size: 25px;
    font-size: 1.563rem;
    text-align: left;
}
.fbits-indicacao-amigo .line .title+span, .fbits-avaliar-produto .line .title+span {
    height: 3px;
    background: #e9d237;
    display: block !important;
    border: none;
    width: 70%;
}
span.fbits-indique-avalie.texto-indique, span.fbits-indique-avalie.texto-avalie {
    text-align: left;
    display: block;
    margin-bottom: 1rem;
    height: 38px;
    font-size: 14px;
    font-size: 0.875rem;
    line-height: 1.125rem;
}
input[type="text"].inputAvaliacao, .textAreaIndicar, .textAreaAvaliacao {
    width: 100%;
    margin: 0 0 1rem 0;
    color: #484848;
    border: 1px solid #c1c1c1;
    /*text-transform: uppercase;*/
    font-size: 14px;
    font-size: 0.875rem;
    border-radius: 0;
}
.textAreaIndicar, .textAreaAvaliacao {   
    margin: 0 auto 1rem;
    display: block;
    padding: 1rem;
    height: 6rem;   
    clear: both;
    float: left;   
}
.btAvaliar {
    clear: both;   
}
button#btnIndicar, .btAvaliar button {
    margin: 0 auto 1rem;
    display: block;
    padding: 0 1rem;
    /*background-color: #009045;*/
    background-color: #00bf5c;
    height: 35px;
    line-height: 37px;
}
.pontosAvaliacao {
    text-align: center;
    display: block;
    float: left;
    width: 100%;
    height: 30px;
    margin-bottom: 1rem;
}
.pontosAvaliacao a {
    float: none;
    display: inline-block;
    height: 30px;
    width: 18px;
    line-height: 30px;
}
.pontosAvaliacao a img {
    width: 100%;
    max-width: 15px!important;
}
select#ddlNota  {
    padding: 0 0.8rem;
    position: relative;
    margin-left: 0.5rem;
    float: none;
    border: 1px solid #c1c1c1;
    height: 30px;
    line-height: 30px;
}
.fbits-indicacao-amigo td, .fbits-avaliar-produto td, .fbits-indicar td {
    display: block;
    width: 100%;
    text-align: center;
    float: left;
}
.fbits-indicacao-amigo table, .fbits-indicacao-amigo tbody, form#formIndica table, form#formIndica tbody {
    display: block;
    width: 100%;
    float: left;
}

.fbits-indicacao-amigo table tbody tr, .fbits-indicar table tbody tr {
    display: block;
    float: left;
    width: 100%;
}
.avaliainputs {
    display: block;
    float: left;
    width: 100%;
}
.avaliainputs .left {
    width: 100%;
}
.avaliainputs .left input {
    margin-right: 0;
    width: 100%;
}
form#formIndica {
    display: block;
    float: left;
    width: 100%;
}
.fbits-indicacao-amigo td p.error, .fbits-avaliar-produto td p.error, .fbits-avaliar-produto div p.error, .fbits-indicar td p.error {
    position: relative;
    bottom: 13px;
}

.paginacao-ver-mais {
    clear: both;
    height: 4rem;
    padding-top: 1rem;
}

.modalTitleCarrosel, .modalConteudo .fbits-produto-produtosrecomendados {
    display: none;
}
.modalBotoes {
    padding-top: 1rem;
}
.modalNovoItem {
    text-align: center;
}
.modalItensCesta {
    margin-top: 1em;
    display: block;
}
.modalBotaoFinalizar, .modalBotaoContinuar  {
    padding: 0 1rem;
    margin: 0 auto 1rem;
    display: block;
    max-width: 260px;
    width: 100%;
    text-align: center;
}
.modalBotaoContinuar {
    background: #0F2134;
}
a#naoSeiCep, a.helpCep {
    color: #4b4b4a;
    font-size: 12px;
    font-size: 0.75rem;
    text-decoration: underline;
    /*
    text-transform: uppercase;
    */
}
.hide { display:none; }
.rangeValores input {
    border: 0;
}
.listacompra-comprarselecionados {
    font-size: 18px;
    font-size: 1.125rem;
    margin-bottom: 10px;
    clear: both;
    width: 100%;
}
.listacompra-comprarselecionados:hover {
    opacity: .9;
}
.listacompra-descricao {
    clear: both;
    font-size:12px;
    font-size:0.75rem;
    margin-bottom: 20px;
}
label#listaProdutos-selecionar-todos-label {
    font-size:13px;
    font-size:0.8125rem;
    margin-bottom: 1rem;
    display: inline-block;
}
.listacompra-produtos-atributos {
    padding-left: 0;
    width: 65%;
    float: right;
    margin-left: 5%;
    padding-top: .5rem;
}
.listacompra-produtos-nome {
    float: right;
    width: 65%;
    height: 32px;
    margin-left: 5%;
    font-weight: normal;
    line-height: 16px;
    padding: 0;
    overflow: hidden;
    font-size: 15px;
    font-size: 0.9375rem;
    color: #333;
}
/* Produto */

.popUp-News-Fundo {
    width: 630px;
    height: 380px;
    position: relative;
    background: url("../i/banners/newsletter.jpg") no-repeat;
}
.popUp-News {
    color: white;
    margin-top: 293px;
    padding-left: 20px;
    position: absolute;
    width: 560px;
}
.popUp-News input[type="text"] {
    width: 150px;
    border: 1px solid #c1c1c1;
    color: #696969;
    height: 32px;
    padding: 0 13px;
    vertical-align: middle;
}
.popUp-News #btnCadastrarNews {
    background: #333;
    float: right;
    height: 32px;
    width: 90px;
}

/* VEJA MAIS */
a#linkVejaMaisProdutos {
    width: 100%;
    color: #fff;
    display: block;
    float: right;
    text-decoration: none;
    text-transform: uppercase;
    text-align: center;
    background: #00bf5c;
    height: 40px;
    line-height: 40px;
    margin: 14px 0 10px;
}
a#linkVejaMaisProdutos:hover {
    opacity: .9;
}

/*FOOTER -->*/
footer {
    background: #000000;
    padding: 0;
    overflow: hidden;
    display: block;
    clear: both;
    font-size: 13px;
    font-size: 0.8125rem;
    color: #ffffff;
}
footer .comnews {
    height: 4rem;
}
footer.fechamento-checkout {
    /*border-top: 12px solid #e9d237;*/
}
/*footer.fechamento-checkout li.titlefooter.title-formas-pagamento {*/
/*    margin-top: 0;*/
/*}*/
footer.fechamento-checkout section.fbits-footer-blocos-horizontal ul.blockfooter.noborder li.linksfooter.li-certificados {
    padding-bottom: 1rem;
}
footer.fechamento-checkout .copyright-footer {
    padding: 1.7rem 0 1rem;
}
footer .center {
    max-width: 1280px;
    margin: auto;
    float: none;
    clear: both;
    padding: 0 3vw;
}
footer section.fbits-footer-blocos-horizontal {
    display: block;
    float: left;
    width: 100%;
}
.contato-footer {
    display: block;
    float: left;
    width: 100%;
    min-height: 30px;
    margin-bottom: 10px;
    line-height: 1.125rem;
    font-size: 14px;
    font-size: 0.875rem;
}
.contato-footer.contato-fone {
    line-height: 24px;
    font-size: 14px;
    font-size: 0.875rem;
}
.contato-footer.contato-fone h4 {
    line-height: 24px;
    font-size: 14px;
    font-size: 0.875rem;
    text-transform: uppercase;
    margin-bottom: 1rem;
}
.contato-footer.contato-fone div {
    line-height: 1rem;
}
.contato-footer.contato-fone .footer-tel {
    font-size: 21px;
    font-size: 1.313rem;
    font-weight: 300;
    display: block;
    margin-top: 8px;
}
.contato-footer.contato-fone .footer-tel span {
    font-size: 13px;
    font-size: 0.8125rem;
}
.contato-footer.contato-fone .footer-mail {
    font-size: 12px;
    font-size: 0.75rem;
    text-transform: lowercase;
}
.contato-footer.contato-fone .footer-mail a {
    color: #ffffff;
    text-decoration: none;
    font-weight: normal;
    /*line-height: 17px;*/
}
li.linksfooter.socialnetwork {
    height: auto;
}
li.linksfooter .contato-footer a {
    display: block;
    float: left;
    width: 100%;
    color: #ffffff; 
    font-weight: bold; 
    line-height: 30px;  
}
li.linksfooter a.fbits-redes-sociais {
    float: left;
    height: 33px;
    width: 45px;
    line-height: 33px;
    margin-right: 10px;
}
li.linksfooter a.fbits-redes-sociais span {
    display: block;
    float: left;
    width: 100%;
    height: 100%;
    font-family: "foundation-icons";
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    font-size: 30px;
    color: #ffffff;
    text-align: center;
}
li.linksfooter a.fbits-redes-sociais span:hover {
    opacity: 0.7;
}
span.icones-redes-footer.icone-face:before {
    content: "";
    /*background: url(../i/footer-facebook.png) 0 0 no-repeat;*/
    background: url(../i/facebook.svg) center no-repeat;
    background-size: 17px;
    display: block;
    height: 33px
}
span.icones-redes-footer.icone-insta:before {
    content: "";
    /*background: url(../i/footer-instagram.png) 0 0 no-repeat; */
    background: url(../i/instagram.svg) center no-repeat; 
    background-size: 30px;
    display: block;
    height: 33px   
}
span.icones-redes-footer.icone-youtube:before {
    content: "";
    /*background: url(../i/footer-youtube.png) 0 0 no-repeat; */
    background: url(../i/youtube.svg) center no-repeat;
    background-size: 32px;
    display: block;
    height: 33px
}
span.icones-redes-footer.icone-gmais:before {
    content: "";
    background: url(../i/footer-gplus.png) 0 0 no-repeat; 
    display: block;
    height: 33px  
}
span.icones-redes-footer.icone-twitter:before {
    content: "";
    /*background: url(../i/footer-twitter.png) 0 0 no-repeat; */
    background: url(../i/twitter.svg) center no-repeat;
    background-size: 30px;
    display: block;
    height: 33px 
}
span.icones-redes-footer.icone-vimeo:before {
    content: "\f1e5";    
}
span.icones-redes-footer.icone-snapchat:before {
    content: "\f1dc";    
}
span.icones-redes-footer.icone-pinterest:before {
    content: "\f1d6";    
}
span.icones-redes-footer.icone-linkedin:before {
    content: "\f1d0";    
}
span.icones-redes-footer.icone-flickr:before {
    content: "\f1c5";    
}
span.icones-redes-footer.icone-blogger:before {
    content: "\f1bb";    
}
div.icone-contato-footer, div.icone-atendimento-footer {
    float: left;
    width: 33px;
    height: 34px;
    line-height: 30px;
    margin-right: 12px;
    font-family: 'FontAwesome';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    font-size: 25px;
    display: inline-block;
    vertical-align: middle;
}
div.icone-contato-footer {
    background: url(../i/footer-atendimento.png) 0 50% no-repeat;
}
div.icone-atendimento-footer {
    background: url(../i/footer-horario.png) 0 50% no-repeat;
}
footer span.icones-pagamento-footer {
    display: block;
    float: left;
    /*width: 16.66666666666667%;*/
    width: 100%;
    max-width: 57px;
    height: 27px;
    background-size: 100%;
    background-position: center top;
    background-repeat: no-repeat;
    cursor: pointer;
    margin: 0 10px 10px;
}


/*BOLETO*/
span.icones-pagamento-footer.icone-boleto {
    /*background-image: url(../i/SVG-formasPagamento/footer-pagamento-boleto.png);*/
    background-image: url(../i/SVG-formasPagamento/footer-pagamento-boleto.svg); 
}
span.icones-pagamento-footer.icone-boleto:hover {
    opacity: 0.9;   
}

/*VISA*/
span.icones-pagamento-footer.icone-visa {
    /*background-image: url(../i/SVG-formasPagamento/footer-pagamento-visa.png);*/
    background-image: url(../i/SVG-formasPagamento/footer-pagamento-visa.svg);
}
span.icones-pagamento-footer.icone-visa:hover {
    opacity: 0.9;   
}

/*MASTER CARD*/
span.icones-pagamento-footer.icone-master {
    /*background-image: url(../i/SVG-formasPagamento/footer-pagamento-mastercard.png);*/
    background-image: url(../i/SVG-formasPagamento/footer-pagamento-mastercard.svg);
}
span.icones-pagamento-footer.icone-master:hover {
    opacity: 0.9;   
}

/*ALURA*/
span.icones-pagamento-footer.icone-aura {
    /*background-image: url(../i/SVG-formasPagamento/footer-pagamento-aura.png); */
    background-image: url(../i/SVG-formasPagamento/footer-pagamento-aura.svg); 
}
span.icones-pagamento-footer.icone-aura:hover {
    opacity: 0.9;   
}

/*DINERS*/
span.icones-pagamento-footer.icone-diners {
    /*background-image: url(../i/SVG-formasPagamento/footer-pagamento-diners.png);*/
    background-image: url(../i/SVG-formasPagamento/footer-pagamento-diners.svg);
}
span.icones-pagamento-footer.icone-diners:hover {
    opacity: 0.9;    
}

/*HIPERCARD*/
span.icones-pagamento-footer.icone-hipercard {
    /*background-image: url(../i/SVG-formasPagamento/footer-pagamento-hipercard.png);*/
    background-image: url(../i/SVG-formasPagamento/footer-pagamento-hipercard.svg);
}
span.icones-pagamento-footer.icone-hipercard:hover {
    opacity: 0.9;     
}

/*AMERICAN EXPRESS*/
span.icones-pagamento-footer.icone-amex {
    /*background-image: url(../i/SVG-formasPagamento/footer-pagamento-american-express.png);*/
    background-image: url(../i/SVG-formasPagamento/footer-pagamento-american-express.svg);
}
span.icones-pagamento-footer.icone-amex:hover {
    opacity: 0.9;     
}

/*ELO*/
span.icones-pagamento-footer.icone-elo {
    /*background-image: url(../i/SVG-formasPagamento/footer-pagamento-elo.png);*/
    background-image: url(../i/SVG-formasPagamento/footer-pagamento-elo.svg);
}
span.icones-pagamento-footer.icone-elo:hover {
    opacity: 0.9;   
}

/*VALE CULTURA*/
span.icones-pagamento-footer.icone-valecult {
    background-image: url(../i/SVG-formasPagamento/footer-pagamento-vale-cultura.png);    
}
span.icones-pagamento-footer.icone-valecult:hover {
    opacity: 0.9;      
}

/*PAYPAL*/
span.icones-pagamento-footer.icone-paypal {
    background-image: url(../i/SVG-formasPagamento/paypal.svg);    
}
span.icones-pagamento-footer.icone-paypal:hover {
    background-image: url(../i/SVG-formasPagamento/paypal-cor.svg);    
}

/*DOIS CARTÕES*/
span.icones-pagamento-footer.icone-dois-cartoes {
    background-image: url(../i/SVG-formasPagamento/2cartoes.svg);    
}
span.icones-pagamento-footer.icone-dois-cartoes:hover {
    background-image: url(../i/SVG-formasPagamento/2cartoes-cor.svg);    
}

/*AYDEN*/
span.icones-pagamento-footer.icone-ayden {
    background-image: url(../i/SVG-formasPagamento/adyen.svg);    
}
span.icones-pagamento-footer.icone-ayden:hover {
    background-image: url(../i/SVG-formasPagamento/adyen-cor.svg);    
}

/*STELO*/
span.icones-pagamento-footer.icone-stelo {
    background-image: url(../i/SVG-formasPagamento/stelo.svg);    
}
span.icones-pagamento-footer.icone-stelo:hover {
    background-image: url(../i/SVG-formasPagamento/stelo-cor.svg);    
}

/*DEPÓSITO*/
span.icones-pagamento-footer.icone-deposito {
    background-image: url(../i/SVG-formasPagamento/deposito.svg);    
}
span.icones-pagamento-footer.icone-deposito:hover {
    background-image: url(../i/SVG-formasPagamento/deposito-cor.svg);    
}

/*DISCOVER*/
span.icones-pagamento-footer.icone-discover {
    background-image: url(../i/SVG-formasPagamento/discover.svg);    
}
span.icones-pagamento-footer.icone-discover:hover {
    background-image: url(../i/SVG-formasPagamento/discover-cor.svg);    
}

/*FASTCASH*/
span.icones-pagamento-footer.icone-fastcash {
    background-image: url(../i/SVG-formasPagamento/fastcash.svg);    
}
span.icones-pagamento-footer.icone-fastcash:hover {
    background-image: url(../i/SVG-formasPagamento/fastcash-cor.svg);    
}

div#fbits-fabricante-logo {
    float: right;
    width: 100%;
    height: 30px;
}
div#fbits-fabricante-logo a {
    display: block;
}
div#fbits-fabricante-logo img {
    max-width: 100%;
    max-height: 40px;
    margin: auto;
    display: block;
}
ul.blockfooter.toggle {
    border-bottom: 2px solid #e9d237;
    min-height: 40px;
    float: left;
    width: 100%;
}
footer .hide {
    display:none;
}
.copyright-footer {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    background: #000000;
    color: #ffffff;
    padding: 1.7rem 0;
}
ul.blockfooter.noborder.endereço-footer {
    width: 100%;
    padding-top: 1rem;
    font-size: 12px;
    font-size: 0.75rem;
    line-height: 1.25rem;
}
ul.blockfooter.noborder.endereço-footer a {
    color: #ffffff;
    text-decoration: none;
}
li.titlefooter {
    line-height: 40px;
    font-weight: normal;
    list-style: none;
    text-transform: uppercase;
    text-align: left;
    float: left;
    width: 100%;
    color: #e9d237;
}
li.titlefooter.title-formas-pagamento {
    margin-top: 1rem;
}
ul.blockfooter.toggle li.titlefooter:after {
    content: "\f196";
    font-family: 'FontAwesome';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale; 
    speak: none;    
    font-variant: normal; 
    display: inline-block;
    float: right;
    color: #e9d237;
    font-size: 18px;
    font-weight: normal;
}
ul.blockfooter.toggle li.titlefooter.opened:after {
    content: "\f147";
}
li.linksfooter {
    display: none;
    list-style: none;
    padding-bottom: 0.5rem;   
    float: left;
    width: 100%;
    clear: both;
}
footer .footer-seguranca {
    background-color: #1c1c1c;
    float: left;
    width: 100%;
    padding: 10px 0;
}

/* Ajustes para o selo do Google*/
li.linksfooter .selo-seal a {
    float: none !important;
    display: inline-block !important;
    vertical-align: middle;
    width: auto !important;
}
footer .footer-seguranca .selo-seal img {
    float: none;
    display: inline-block;
    vertical-align: middle;
    width: 21vw;
}
/**/

footer section.fbits-footer-blocos-horizontal ul.blockfooter.noborder li.linksfooter {
    display: block;
}
footer section.fbits-footer-blocos-horizontal ul.blockfooter.noborder li.linksfooter.li-certificados {
    text-align: left;
}
li.linksfooter a {
    color: #ffffff;
    display: block;
    line-height: 1.9rem;
    font-weight: normal;
    font-size: 14px;
    font-size: 0.875rem;
}
li.linksfooter a.facebook-footer {
    display: none;
}
img.formaspagfooter {
    width: 60%;
    max-width: 322px;
    min-width: 200px;
}
img.certfooter {
    width: 55%;
    max-width: 322px;
    min-width: 200px;
}
.voltarTopo  {
    background: #e9d237;
    background-size: 40px;
    width: 100%;
    height: 30px;
    right: 0;
    bottom: 0;
    position: fixed;
    border-radius: 0;
    box-shadow: none;
    border: 0;
    z-index: 999999;
    color: #fff;
    line-height: 30px;
    text-align: center;
}
a.voltarTopo:before {
    content: "TOPO";
    color: #fff;    
    font-size: 14px;
    width: auto;
    line-height: 30px;
    padding: 0;
    display: inline-block;
    padding-right: 8px;
}
a.voltarTopo:after {
    content: "\f3d8";
    color: #fff;
    font-family: "Ionicons";
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    font-size: 14px;
    width: auto;
    line-height: 30px;
    padding: 0;
}
img.logofooter {
    width: 20%;
    max-width: 120px;
    min-width: 96px;
    margin: 0 auto;
    display: block!important;
}
.footer-logosDesktop {
    display: none;
}
.fstore {
    /*fundo claro*/
    /*background: url('https://static.fbits.net/i/logo-tray-corp-rodape.svg') no-repeat;*/

    /*fundo escuro*/
    background: url('https://static.fbits.net/i/logos/logo-traycorp-fundo-escuro.svg') no-repeat;

    margin: .8rem 1rem .3rem;
    float: none;
    display: inline-block;
    vertical-align: middle;
    background-size: 80px;
    text-indent: -9999px;
    overflow: hidden;
    line-height: 9999px;
    opacity: 1;
    width: 80px;
    height: 40px;
}
.fstore:hover {
    opacity: 0.9;
}
.logotipo-footer {
    /*background: url(../i/logo-footer.png) 0 0 no-repeat;*/
    background: url(../i/madeinbrazil-logo.svg) 0 0 no-repeat;
    margin: 0 auto 3.5rem;
    float: none;
    display: block;
    background-size: contain;
    text-indent: -9999px;
    overflow: hidden;
    line-height: 9999px;
    opacity: 1;
    max-width: 217px;
    height: 45px;
}
.acupula {
    /*background: url(../i/acupula.png) 0 0 no-repeat;*/
    background: url(../i/acupula-logo.svg) 0 0 no-repeat;
    margin: .8rem 1rem .3rem;
    float: none;
    display: inline-block;
    vertical-align: middle;
    background-size: 119px;
    text-indent: -9999px;
    overflow: hidden;
    line-height: 9999px;
    opacity: 1;
    width: 119px;
    height: 29px;
}
.fbits-conteudo-rodape {
    padding: 0 3vw;
    text-align: justify;
    font-size: 13px;
    font-size: .8125rem;
    line-height: 1.25rem;
    font-weight: normal;
    margin: 1rem 0 2rem;
    float: left;
    clear: both;
    width: 100%;
}
.fbits-home .fbits-conteudo-rodape {
    padding: 0;
    text-align: center;
    margin: 1rem auto 2rem;
}
.fbits-home .fbits-conteudo-rodape img {
    width: 100%;
}
.txtLoja {
    display: block;
    width: 100%;
    max-width: 1280px;
}
ul.blockfooter.noborder.copyright {
    padding-top: 0.5rem;
    padding-bottom: 1rem;
    text-align: center;
    font-size: 12px;
    font-size: .75rem;
    line-height: 1rem;
}
footer.fechamento-checkout ul.blockfooter.noborder.copyright {
    padding-bottom: 0.5rem;
}
ul.blockfooter.noborder.copyright span.copyright-direitos {
    text-transform: uppercase;
}
li.socialnetwork.hide {
    margin-top: 12px;
}
.socialnetwork img {
    margin-right: 6px;
}
ul.blockfooter.noborder {
    text-align: center;
}
footer section.fbits-footer-blocos-horizontal ul.blockfooter.noborder {clear: both;}
.view-switcher { display:none;}


/**spot -->**/
.spot.first, .spot.last {    
    clear: none!important;
}
.spot {
    margin: 0 1vw 1rem;
    /*width: 45vw;*/
    width: 44vw;
    float: left;
    overflow: hidden;
    padding: 5px 10px;
    border: 1px solid #dcdee0;
    list-style: none outside none;
    position: relative;
    visibility: visible;
    background: rgba(0,0,0,0);
    height: auto;
}
.spot .spotContent {
    position: relative;
    z-index: 0;
    text-align: left;
    background-color: #FFF;
    display: block;
    height: auto;
    float: left;
    width: 100%;
}
.spot:hover {
    border: 1px solid #d1d1d1;
    box-shadow: 3px 3px 7px rgba(0,0,0,0.2);
}
.fbits-spot-conteudo {
    display: block;
    float: left;
    width: 100%;
    height: 158px;
    overflow: hidden;
}
.fbits-carrossel li, div.spot-vitrine, .fbits-carrossel-historico li, .carousel .jsCarrousel li, .fullWidth .jcarousel-wrapper .carousel li {
    width: 44vw !important;
    padding: 0 1vw;
    float: left; 
    height: auto !important;
}
div#spot-vitrine>div:first-child {
    background: #000000;
    margin: 0 auto;
    color: #fff;
    text-align: center;
    margin-bottom: 5px;
    font-size: 12px;
    font-size: 0.75rem;
    text-transform: uppercase;
    line-height: 1.25rem;
    width: 100%;
}
.fbits-carrossel li .spot, .spot-vitrine .spot, .fullWidth .jcarousel-wrapper .carousel li .spot {
    width: 100%;
    margin: 0;
}
.spot-vitrine .spot {
    margin-bottom: 1rem;
}
.spot .spotContent a {
    display: block;
    text-align: center;   
    float: left;
    width: 100%;
    margin-bottom: 0.625rem;
}
.spot .spotContent a.spot-parte-um {
    position: relative;
}
.spotImg {
    height: auto;
    width: 100%;
    text-align: center;
    background: #fff;
    margin-bottom: 0;
    border-radius: 0;
}
.spotImg:after {
    content: "";
    width: 50%;
    height: 5px;
    background-color: #e9d237;
    margin: 0 auto;
    display: block;
    position: relative;
    bottom: 3px;
}
.spotImg img {
    width: 100%!important;
    height: auto!important;
    max-width: 270px;
    margin: auto;
    display: block!important;
}
.spotTitle {
    color: #333333;
    font-size: 15px;
    font-size: 0.9375rem;
    /*
    height: 2rem;
    line-height: 1rem;
    */
    height: 3.875rem;
    line-height: 1.4rem;
    overflow: hidden;
    text-align: left;
    display: block;
    float: left;
    width: 100%;
    margin-bottom: 24px;
}
.spotPreco {
    color: #222222;
    line-height: 1.25rem;
    overflow: hidden;
    text-align: left;
    font-size: 14px;
    font-size: 0.875rem;
    height: 9rem;
    display: block;
    float: left;
    width: 100%;
    /*margin-top: 20px;*/
    margin-top: 15px;
}
.precoDeVazio {
  display: block;
  height: 20px;
  margin-bottom: 2px;
}
.spot .botoesSpot  {
    display: block;
    float: left;
    height: auto;
    text-align: center;
    width: 100%;
    margin-top: -28px;
}
.spot .bt.comprar {
    font-size: 18px;
    font-size: 1.125rem;
    margin: 0 auto;
    font-weight: 900;
    border-radius: 4px;
    height: 38px;
    line-height: 38px;
    display: none;
}
.spot .fbits-spot-conteudo .botoesSpot a.adicionar {
    display: block;
    float: left;
    margin: 5px 0 0 0;
    border: 1px solid #c3c3c3;
    background-color: #fff;
    color: #0F2134;
    height: 40px;
    line-height: 40px;
    width: 49%;
    font-size: 0;
    display: none;
}
.spot .fbits-spot-conteudo .botoesSpot a.adicionar:hover {
    border: 1px solid #0F2134;
    background-color: #0F2134;
    color: #fff;
    opacity: 1;
}
.spot .fbits-spot-conteudo .botoesSpot a.wishLink.addListaDesejos {
    display: block;
    float: right;   
    margin: 5px 0 0 0;
    border: 1px solid #c3c3c3;
    background-color: #fff;
    color: #a3bd31;
    height: 40px;
    line-height: 40px;
    width: 49%;
    font-size: 0;
    display: none;
}
.spot .fbits-spot-conteudo .botoesSpot a.adicionar .icon.addCarrinho {
    background: transparent;
    width: 100%;
    height: 40px;
    line-height: 40px;
    font-style: normal;
    float: left;
    display: block;
    background-size: initial;
    position: relative;
    top: initial;
    font-family: 'icofont';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-size: 28px;
    font-size: 1.75rem;   
}
.spot .fbits-spot-conteudo .botoesSpot a.adicionar .icon.addCarrinho:before {
    content: "?";
}
.spot .fbits-spot-conteudo .botoesSpot a.wishLink.addListaDesejos:after {
    width: 100%;
    height: 40px;
    background: transparent;
    content: "\f08a";
    display: block;
    background-size: initial;
    float: left;
    position: initial;
    top: initial;
    background-position: initial;
    font-family: 'FontAwesome';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-size: 22px;
    font-size: 1.375rem;
}
.spot .fbits-spot-conteudo .botoesSpot a.wishLink.addListaDesejos:hover {
    border: 1px solid #a3bd31;
    background-color: #a3bd31;
    color: #fff;
    opacity: 1;
}
.spot .fbits-spot-conteudo .botoesSpot a.wishLink.addListaDesejos.listaDesejosAdicionado {
    border: 1px solid #a3bd31;
    background-color: #a3bd31;   
    color: #fff;
}
.spot .fbits-spot-conteudo .botoesSpot a.wishLink.addListaDesejos.listaDesejosAdicionado:after {  
    content: "\f004";
    color: #fff;
}

.spot .botoesSpot .spotIndisponivel {
    margin-top: 1rem;
}
.spot .botoesSpot .spotIndisponivel input[type="text"] {
    width: 58%;
    float: left;
    margin-top: 0.5rem;
}
.spot .botoesSpot .spotIndisponivel #btnEnviarAviseMe {
    background: #00bf5c;
    color: #ffffff;
    height: 40px;
    line-height: 40px;
    width: 40%;
    float: none;
    margin-top: 0.5rem;
}
.spot .botoesSpot .spotIndisponivel .error {
    float: right;
    font-size: 14px;
    font-size: 0.875rem;
    width: 100%;
    line-height: 16px;
    padding-top: 3px;
}


#mensagem-erro-spot {
    background: none repeat scroll 0 0 white;
    font-size:9px;
    font-size:0.5625rem;
    position: absolute;
    text-align: center;
    width: 176px;
}
input.input-spot-quantidade {
    border: 1px solid #666;
    text-indent: initial;
}
.spot .spot-parte-dois {
    margin: 0 !important;  
}
.spot .avaliacao {
    border: none!important;
    margin: 0!important;
    padding: 0;
    width: 100%;
    text-align: left !important;
    float: left;
    height: 20px;   
}
.spotHoverPanel {
  background: none repeat scroll 0 0 #fff;
  border: 1px solid #c4c4c4;
  display: none;
  height: 340px;
  left: -1px;
  position: absolute;
  top: -1px;
  width: 185px;
}
.spotHoverPanelImg {
    display: none!important;
}
.spotHoverPanelAttr {
  height: 420px;
}
.produtosSimilares {
  background: none repeat scroll 0 0 #fff;
  margin-left: 14px;
  margin-top: 10px;
  width: 52px;
}
.produtosSimilares a {
  clear: both;
  display: block;
  float: left;
  margin-bottom: 8px;
  margin-left: 1px;
}
.produtosSimilares img {
  display: block;
  height: 50px;
  width: 50px;
}
span.fbits-avista {
    font-size:11px;
    font-size:0.6875rem;
    color: #444;
    font-weight: normal;
}
.ribbon.fbits-etiqueta-promocao {
    display: block;
    width: 90px;
    height: 29px;
    float: left;
    margin: 0 0 2px 0;
    clear: both;
}
.fbits-etiqueta-lancamento {
    display: block;
    width: 90px;
    height: 29px;
    float: left;
    margin: 0 0 2px 0;
    clear: both;
}
.fbits-etiqueta-fretegratis {
    display: block;
    width: 90px;
    height: 29px;
    float: left;
    margin: 0 0 2px 0;
    clear: both;
}
span.percspot {
    font-size:10px;
    font-size:0.625rem;
    position: relative;
    top: -3px;
}
.ribbon.fbits-etiqueta-off, .produto .fbits-preco-off {
    background: url(../i/seloPromo.png) no-repeat;
    color: #fff;
    text-align: right;
    font-weight: normal;
    font-size: 13px;
    font-size: 0.8125rem;
    line-height: 29px;
    width: 90px;
    height: 29px;
    overflow: hidden;
    white-space: nowrap;
    float: right;
    margin: 0 0 2px 0;
    clear: both;
    padding-right: 10px;
}
.ribbon.fbits-etiqueta-trocagratis {
    display: block;
    width: 123px;
    height: 38px;
    float: left;
    margin: 0 0 2px 0;
    clear: both;
}
.ribbon.fbits-etiqueta-selo {
    display: block;
    right: 0;
    top: 0;
    width: 90px;
    height: auto;
    float: left;
    margin: 0 0 2px 0;
    clear: both;
}
.ribbon.fbits-etiqueta-selo img {
    max-width: 100%;
}
.seloDvg {
    /*background: url(../i/seloPromo.png) no-repeat;*/
    color: #fff;
    text-align: center;
    font-weight: normal;
    font-size:10px;
    font-size:0.625rem;
    line-height: 29px;
    width: 90px;
    /*height: 29px;*/
    overflow: hidden;
    white-space: nowrap;
    float: left;
    margin: 0 0 2px 0;
    clear: both;
    height: auto;
}
.seloDvg .dvgTitle {
    display: none;
}
.spotCarrossel {
    padding-left: 0;
    text-align: left;
}
.spot .fb-like {
    top: inherit;
    right: inherit;
    margin-top: 0;
    width: 100%;
    position: inherit;
    float: left;
    display: block;
    text-align: left;
}
.input-spot-quantidade {
    border: 1px solid #ccc;
    width: 4rem;
    margin: 0 auto;
    height: 2rem;
    display: block;
    margin-top: 0.5rem;
    text-align: center;
}

span.fbits-spot-atributo-nome {
    display:inline-block;
}
.etiquetas-spot {
    position: absolute;
    top: 10px;
    left: inherit;
    right: 0;  
}
.spotFabricante {
    text-align: center;
    color: #231f20;
    font-size: 12px;
    font-size: .75rem;
    display: block;
    float: left;
    width: 100%;
    line-height: 20px;
    height: 20px;
    text-transform: uppercase;
}
.spotInformacao {
    display: block;
    width: 100%;
    height: 25px;
    line-height: 25px;
    text-align: center;
    color: #231f20;
    font-size:11px;
    font-size:0.6875rem;
}
.spotAutor, .spotEditora, .spotGenero {
    color: #555;
    display: block;
    font-size:11px;
    font-size:0.6875rem;
    line-height: 14px;
    height: 14px;
    overflow: hidden;
}
.spot .spotContent .fbits-spot-atributos {
    display: block;
    float: left;
    width: 100%;
    text-align: center;
    padding: 5px 0;
    min-height: 30px;
}
.spot .spotContent .fbits-spot-atributos span.fbits-spot-atributo-nome {
    display: inline-block;
    line-height: 20px;
    font-size: 11px;
    font-size: 0.6875rem;
    float: none;
    text-align: left;
}
.spot .spotContent .fbits-spot-atributos a {
    color: #6d6d5f;
    font-weight: normal;
    display: inline-block!important;
    width: 20px;
    height: 20px;
    clear: none;
    float: none;
    border-radius: 0;
    font-size: 10px;
    font-size: 0.625rem;
    line-height: 20px;
}
.spot .spotContent .fbits-spot-atributos a .fbits-spot-atributos-cor {
    width: 20px;
    height: 20px;
    border-radius: 0;
    margin: 0;
    display: block;
}


.spotTelevendas {
    font-size: 13px;
    font-size: .8125rem;
    line-height: 20px;
    text-transform: uppercase;
}

.produtosVistos {
    clear: both;
    width: 100%;
    position: relative;
}
div#dvTermosPesquisados {
    clear: both;
    width: 100%;
    overflow: hidden;
}
ul.produtosAcessados {
    display: block;
    padding: 0 3vw;
    float: left;
    width: 100%;
}
.mainBar.fbits-vitrine-hotsite .line .title {
    padding: 0 10px;
    font-size: 18px;
    font-size: 1.125rem;
}
.fbits-home .mainBar.fbits-vitrine-hotsite .line .title, #bodyProduto .mainBar.fbits-vitrine-hotsite .line .title {
    font-size: 25px;
    font-size: 1.563rem;
    text-align: center;
}
.fbits-carrossel-historico {
    width: 88vw!important;
    height: auto!important;
    padding: 0;
    margin-bottom: 1rem;
}
.fbits-carrossel-historico a.fbits-produtos-acessados-imagem {
    display: block;
    float: left;
    width: 100%;
    text-align: center;
    color: #6d6d5f;
    text-decoration: none;
    height: auto;
    overflow: hidden;
    border: 1px solid #ccc;
    padding: 5px;
}
.fbits-carrossel-historico a.fbits-produtos-acessados-imagem img  {
    max-width: 100%;
    display: block;
    margin: auto;
}
.fbits-produtos-acessados-texto {
    font-size: 12px;
    font-size: .75rem;
    height: 1.875rem;
    overflow: hidden;
    line-height: .9375rem;
    margin-top: .3rem;
    float: left;
    width: 100%;
    line-height: 0.9375rem;
}
div#dvTermosPesquisados li {
    display: block;
    width: auto;
    line-height: 25px;
    font-size: 12px;
    font-size: .75rem;
    float: left;
    padding: 0 0.5rem;
}
div#dvTermosPesquisados li i.iMarcaLinha {
    width: 6px;
    height: 6px;
    border-radius: 10px;
    background: #000;
    display: inline-block;
    margin-right: 10px;
    display: none;
}
div#dvTermosPesquisados li a {
    padding: 5px 10px;
    color: #ffffff;
    background-color: #00bf5c;
}
div#dvTermosPesquisados li a:hover {
    /*text-decoration: underline;*/
    background-color: rgba(0,144,69,0.9);
}
div#containerBusca {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    padding: 1rem 0 0 0;
}
div#containerBusca div#areaTituloBuscaPrimaria {
    width: 100% !important;
}
div#containerBusca div#areaTituloBuscaPrimaria h2 {
    color: #0F2134;
    text-transform: uppercase;
    font-size: 20px;
    font-size: 1.25rem;
    line-height: 30px;
}
div#containerBusca div#areaTituloBuscaPrimaria .sub-tit-tempo, div#containerBusca div#areaTituloBuscaPrimaria .msg-naoencontrado {
    line-height: 20px;
    font-size: 16px;
    font-size: 1rem;
}
div#containerBusca div#areaTituloBuscaPrimaria .msg-naoencontrado {
    line-height: 20px;
    font-size: 14px;
    font-size: 0.875rem;
}
.fbits-content-topo {
    display: block;
    width: 100%;
    clear: both;
    float: left;
}
.fbits-categoria .fbits-banner-topo a, .busca .fbits-banner-topo a, .fbits-categoria .fbits-banner-topo, .busca .fbits-banner-topo {
    display: block;
    width: 100%;
    height: auto;
    float: left;
    clear: both;
    overflow: hidden;
}
.fbits-categoria .fbits-banner-topo a img, .busca .fbits-banner-topo a img {
    display: block;
    float: left;
    width: 100%;
    max-width: 1920px;
    height: auto;
}
.fbits-categoria .interna.cf, .busca .interna.cf, .fabricante .interna.cf {
    display: block;
    width: 100%;
    float: left;
    clear: both;
    padding: 0 3vw;
    margin-top: 1rem;
}
.spots-interna {
    width: 100%;
    display: block;
    float: left;
    clear: both;
}

.fbits-categoria .spot, .fbits-busca .spot {
    padding: 5px 0;
}
.fbits-categoria .spot .spotContent a.spot-parte-um, .fbits-busca .spot .spotContent a.spot-parte-um {
    padding: 0 5px;
}
.fbits-categoria .fbits-spot-conteudo, .fbits-busca .fbits-spot-conteudo {
    padding: 0 10px;
}

.fbits-banner-topofiltro, .fbits-banner-topofiltro a, 
.fbits-banner-rodapefiltro, .fbits-banner-rodapefiltro a, 
.fbits-categoria .fbits-banner-centro a,
.busca .fbits-banner-centro a {
    display: block !important;
    float: left;
    width: 100%;
    clear: both;
}
.fbits-banner-topofiltro a img, .fbits-banner-rodapefiltro a img {
    display: block!important;
    float: none;
    width: 100%;
    clear: both;
    max-width: 500px;
    margin: auto;
}
.fbits-banner-rodapefiltro {
    margin-top: 1rem;
    margin-bottom: 1rem;
}

/* Ajuste Slide Categoria */
.fbits-categoria .fbits-banner-centro .slidesjs-previous, .fbits-categoria .fbits-banner-centro .slidesjs-next {
    width: 30px;
    top: 42%;
    background-color: rgba(0,0,0,0.5);
}
.fbits-categoria .fbits-banner-centro .slidesjs-previous {
    left: 0;
}
.fbits-categoria .fbits-banner-centro .slidesjs-next {
    right: 0;
}
.fbits-categoria a.slidesjs-play, .fbits-categoria a.slidesjs-stop {
    display: none !important;
}
/**/

.fullWidth {
    clear: both;
}
.fullWidth .jcarousel-wrapper {
    height: auto;
    position: relative;
    width: 100%;
    margin: 0 auto 15px;
    padding: 0;
}
.categoria .jcarousel-next {
    right: 0;
}
.fbits-home .mainBar {
    width: 100%; 
    padding: 0; 
}
.fbits-home .mainBar.fbits-vitrine .line h2, .fbits-home .mainBar.fbits-vitrine-hotsite .line h2, .fbits-produto-produtosrecomendados .line h3 {
    text-transform: none;
}

/* MARCAS */
.content.contentBrand {
    padding: 0 3vw;
}
.contentBrand h1 {
    font-size:15px;
    font-size:0.9375rem;
    padding: 12px 0;
    font-weight: bold;
    color: #666;
    text-align: center;
}
.contentBrand p {
    text-align: center;
    font-size:11px;
    font-size:0.6875rem;
    line-height: 14px;
}
.contentBrand .alphabet-numeric {
    padding: 10px 0;
    height: 35px;
    display: table;
    width: 100%;
}
.contentBrand .alphabet-numeric li {
    display: table-cell;
}
.contentBrand .alphabet-numeric li a {
    display: block;   
    font-size:12px;
    font-size:0.75rem;
    color: #666;
    font-family: 'avenir-lt-55-roman', Arial;
    font-weight: bold;   
    text-align: center;
    text-decoration: none;
}
.contentBrand .alphabet-numeric li a:hover {   
    color: #000;
}
.contentBrand .marcas-row {
    border-top: 1px solid #CBCBCB;
    margin: 5px 0;
    padding: 10px 0;
}
.contentBrand .marcas-row .marcas-list {
    float: right;
    width: 80%;
    font-size:12px;
    font-size:0.75rem;
}
.contentBrand .marcas-row .marcas-list .marcas-item {
    display: block;
    width: 50%;
    float: left;
    padding: 5px 0;
    color: #000;
    text-decoration: none;
    text-transform: uppercase;
}
.contentBrand .marcas-row .marcas-list .marcas-item:hover { text-decoration: underline; }
.contentBrand .marcas-row .marcas-char {
    font-size:20px;
    font-size:1.25rem;
    float: left;
    padding: 0 10px;
    color: #666;
    font-family: 'avenir-lt-55-roman', Arial;
    font-weight: bold;
    width: 20%;
}
.detalhe-produto {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.detalhe-produto-itens {
    float: left;
    width: 100%;
    padding: 0;
    clear: both;
    display: -webkit-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-flex-direction: column;
    flex-direction: column;
}
div#divGruposProdutoRecomendado {
    display: block;
    float: left;
    width: 100%;
    clear: both;
    padding-top: 1.5rem;
    border-top: solid 1px #bebebe;
}
.productMoreInfo {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
ul#ulGrupoProduto {
    display: block;
    float: left;
    width: 100%;
    clear: both;
    padding: 0;
}
ul#ulGrupoProduto li.borderVejaTambem {
    clear: both;
    overflow: hidden;
    padding-bottom: 1rem;
    margin-bottom: 1rem;
    border-bottom: 1px solid #DEDEDE;
    display: block;
    float: left;
    width: 100%;
}
ul#ulGrupoProduto li.borderVejaTambem:last-child {
    border-bottom: none !important;
}
ul#ulGrupoProduto li.borderVejaTambem div[id^="produto-item"] {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.spotVejaTambem {
    width: 100%;
    float: left;
    display: block;
}
.divisor, .divisorIgual {
    width: 100%;
    display: block;
    float: left;
    height: 60px;
    line-height: 60px;
    text-align: center;
    font-family: "foundation-icons";
    font-style: normal;
    font-weight: normal;
    font-variant: normal;
    text-transform: none;
    -webkit-font-smoothing: antialiased;
    text-decoration: inherit;
    font-size: 25px;
    margin: 1rem 0;
}
.tmbMore:before, .divisor:before, .tmbIgual:before, .divisorIgual:before {
    content: "\f199";
    display: block;
    height: 60px;
    width: 60px;
    margin: auto;
    background-color: #e9d237;
    color: #010101;
    font-weight: 300;
}
.tmbIgual:before, .divisorIgual:before {
    content: "\f191";
    -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";
    -webkit-transform: rotate(90deg);
    -ms-transform: rotate(90deg);
    transform: rotate(90deg);
}
.spotVejaTambem div#divSpotProdutoRecomendado {
    width: 265px;
    display: block;
    margin: auto;
    text-align: center;
}
.spotVejaTambem.produtoRecomendadoComprar {
    padding: 1rem;
    border: 1px solid #9e9e9e;
    margin-top: 1rem;
}
.divFotosProduto, .divFotosProduto a {
    display: block;
    float: left;
    width: 100%;
    text-align: center;
    clear: both;
}
.divFotosProduto {
    margin-bottom: 14px;
}
.divFotosProduto a::after {
    content: "";
    width: 50%;
    height: 5px;
    display: block;
    background-color: #e9d237;
    z-index: 999;
    margin: 0 auto;
    bottom: 0;
    position: relative;
}
.divFotosProduto a img {
    display: block;
    margin: auto;
    max-width: 100%;
}
.spotRecomendadoText, span.nomeRecomendado, span.nomeRecomendado a {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
span.nomeRecomendado a {
    text-decoration: none;
}
.spotRecomendadoText .spotTitle {
    margin-bottom: 16px;
}
.spotRecomendadoText div[id^="view-item-quantidade"] {
    display: inline-block;
    width: 100%;
    min-width: 150px;
    clear: both;
    margin-top: 0;
    padding: 0;
}
.spotRecomendadoText .fbits-titulo-quantidade.atributo-div {
    display: inline-block !important;
    vertical-align: middle;
}
.spotRecomendadoText .optionAtributos ul li ul li div+div+div>div {
    text-align: left;
}
.spotRecomendadoText select.optionProduct {
    border: 1px solid #b3b3b3;
    padding: .4rem;
    width: 4rem;
    height: 33px;
    border-radius: 0;
    float: left;
}
.produto .produtoRecomendadoComprar .precoPor {
    line-height: 30px;
    display: block;
    text-align: center;
    font-size: 31px;
    font-size: 1.938rem;
    font-weight: 700;
}
.produto .produtoRecomendadoComprar .precoPor::after {
    content: "em até";
    display: inline-block;
    font-size: 22px;
    font-size: 1.375rem;
    margin-left: 5px;
}
.produto .produtoRecomendadoComprar .precoParcela  {
    font-size: 20px;
    font-size: 1.25rem;
    line-height: 30px;
    text-align: center;
}
.produtoRecomendadoComprar .precoParcela i.icon.iCartoes {
    display: none;
}
.produtoRecomendadoComprar button#btnComprarTodos  {
    width: 100%;
    border: 0;
    box-shadow: none;
    margin-top: 10px;
    font-size: 18px;
    font-size: 1.125rem;
}
span.opcoesCombo {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.avaliacao-Produto {
    display: block;
    float: left;
    width: 100%;
}
.avalie-indique {
    display: block;
    float: left;
    width: 100%;
    margin-bottom: 3.125rem;
}
.opinioesConteudo {    
    display: block;
    margin-bottom: 2rem;
    float: left;
    width: 100%;
    clear: both;
}
.opinioesConteudo .pagination-container {
    clear: both;
    float: right;
    width: 100%;
    margin-top: 8px;
}
blockquote {
    font-style: normal;
    padding: 1rem 0;
    text-transform: uppercase;
    line-height: 18px;
    border-bottom: 1px solid #a7a9ab;    
    display: block;
    width: 100%;
    float: left;
    font-size: 12px;
    font-size: 0.75rem;
}
.opinioesConteudo blockquote {
    text-transform: none;
}
.review {
    padding: 0 1rem;
    background-color: #f7f7f7;
    margin-bottom: 8px;
    font-size: 15px;
    font-size: .9375rem;
    float: left;
    width: 100%;
    clear: both;
}
.reviewMeta {
    text-align: right;
    color: #0F2134;
    font-size: 12px;
    font-size: .75rem;
    height: 30px;
    line-height: 30px;
    text-transform: uppercase;
    display: block;
    float: left;
    width: 100%;
    margin: 0.5rem 0;
}
.reviewMeta span.icon {
    text-align: left;
    font-size: 15px;
    width: 16px;
}
.reviewUser {
    position: relative;
    margin-left: 5px;
    display: inline-block;
    overflow: hidden;
    line-height: 30px;
}
.paginacao .pg.sel a, .paginacao .ret.sel a, .paginacao .pg a:hover, .paginacao .ret a:hover, .pagination .active a, .pagination a:hover {
    background: #000000;
    border-color: #000000;
    color: #fff;
}
details.opened .details-content {
    display: block;
}
.details .details-content {
    /*display: block !important;*/
    
}
.details.carrinhoInputBlock .details-content {
    display: block !important;
    background: #ffffff;
    border-radius: 4px;
    padding: 15px;
    border: none;
}
.details.opened .details-content {
    display: block;
}
.details .details-content p {
    display: block;
    line-height: 1.6rem;
    font-size:14px;
    font-size:0.875rem;
}
.fbits-hotsite .fbits-estatica-esquerda .tituloPai:after {
    display: none;
}
.colunaProduto.coluna2 #ulFrete .summary, #bodyListaCompra #ulFrete .summary {
    display: none;
}


.fbits-categoria .mainBar {
    margin-top: 1rem;
}

/* imagens das categorias */
.categoria-imagens.categoria-n1 h2 {
    font-size: 25px;
    font-size: 1.563rem;
    text-align: center;
    text-transform: uppercase;
    color: #000000;
    margin: 0 0 2rem;
}
.categoria-imagens.categoria-n1 h2:after {
    content: "";
    display: block;
    height: 3px;
    background-color: #e9d237;
    width: 20%;
    max-width: 250px;
    margin: 0 auto;
}

.categoria-n1 .subcategoria-imagens li {
    border-right: none;
}

.categoria-n1 .categoria-interno {
	margin: 1rem 0 2rem;
}
.categoria-n1 .categoria-interno img {
	width: 100%;
	max-width: 1280px;
}
.categoria-n1 .subcategoria-marcas li {
    border-right: none;
    width: 49%;
    margin: 0 0 1.25rem;
    display: inline-block;
    text-align: center;
    vertical-align: bottom;
    float: left;
}
.categoria-n1 .subcategoria-marcas li a {
    display: inline-block;
}
.categoria-n1 .subcategoria-marcas li a img {
    width: 100%;
}
    
}
/**/

/* imagens das subcategorias */
.subcategoria-imagens {
	margin: 1rem 0;
}
.subcategoria-imagens li {
	display: inline-block;
	width: 49%;
	margin: 0 0.5% 2%;
	font-size: 13px;
	font-size: 0.8125rem;
	text-align: center;
	text-transform: uppercase;
	color: #0d0c0d;
	border-right: solid 1px #bebebe;
	vertical-align: bottom;
	float: left;
}
.subcategoria-imagens li:nth-child(2n+0) {
	border-right: none;
}
.subcategoria-imagens li a {
	color: #0d0c0d;
}
.subcategoria-imagens li img {
	display: block;
	clear: both;
	width: 100%;
	max-width: 162px;
	margin: 0 auto;
}
.subcategoria-imagens li span {
	display: block;
	min-height: 40px;
	line-height: 1rem;
	margin-top: 1.25rem;
}

.subcategoria-imagens li a:hover {
	color: #e9d237;
}
.subcategoria-imagens li a:hover img {
	opacity: 0.9;
}
/**/

/*Início Filtro topo categoria com select*/
.filtros.filtro-topo-categoria {
    display: block;
    float: left;
    width: 100%;
    display: none;
}
.filtros.filtro-topo-categoria>.filtroTitle.title+ul {
    display: block!important;
    float: left;
    width: 100%;
}
form[action="/aventura"] .filtros.filtro-lateral-categoria {
    display: none;
}
.fbits-categoria .interna.cf > .filtro {
    display: block;
    float: left;
    width: 100%;
}
.filtros.filtro-topo-categoria .filtroTitle.title {
    margin-bottom: 10px;
}
.filtros.filtro-topo-categoria li.filtroPai {
    display: block!important;
    float: left;
    padding: 0;
    min-width: auto;
    text-transform: uppercase;
    width: 100%;
    margin: 0 0 10px 0;
    border: 0;
}
.filtros.filtro-topo-categoria li.filtroPai .tituloPai {
    display: none;
}
.filtros.filtro-topo-categoria li.filtroPai ul.filtroFilho {
    display: block !important;
    float: left;
    padding: 0;
    font-weight: normal;
    text-transform: uppercase;
    font-size: 13px;
    font-size: .8125rem;
    width: 100%;
}
.filtros.filtro-topo-categoria li.filtroPai li {
    display: none;
}
.filtros.filtro-topo-categoria li.filtroPai select {
    display: block;
    height: 50px;
    line-height: 50px;
    color: #616161;
    font-size: 13px;
    font-size: .8125rem;
    padding-left: 12px;
    border: 1px solid #dcdcdc;
    text-transform: uppercase;
    width: 100%;
}
/*Fim Filtro topo categoria com select*/

/* Menu Lateral Terceiro Nível Categoria */
.fbits-categoria .interna.cf .filtro #sidebarLeft .menu-esquerdo {
    display: none;
}
/* Fim Menu Lateral Terceiro Nível Categoria */




/*fechamento*/
.error {
    color: #ff0000;
    text-align: left;
    font-size: 12px;
    font-size: 0.75rem;
}
.errosFrete.error {
    clear: both;
    padding-left: 18px;
    line-height: 20px;
}
.passos {
    border: none;
    box-shadow: none;
    height: auto;
    margin: 0 auto 15px;
    text-indent: -9999rem;
    margin-top: 0;
    width: 100%;
    max-width: 300px;
    background-size: contain;
    background-repeat: no-repeat;
    background-position: center;
}
.passo1 {
    /*background-image: url("../i/passo1-carrinho-mobile.png");*/
    background-image: url("../i/passo1-mobile.svg");
}
.passo2 {
    /*background-image: url("../i/passo2-carrinho-mobile.png");*/
    background-image: url("../i/passo2-mobile.svg");
}
.passo3, .passo3.segundo {
    /*background-image: url("../i/passo3-carrinho-mobile.png");*/
    background-image: url("../i/passo3-mobile.svg");
}
.mensagem-compraumclique {
    background-color: #fdf6ed;
    border: 1px solid #e2a300;
    color: #e5770c;
    font-size:9px;
    font-size:0.5625rem;
    margin-right: 10px;
    padding: 1px 8px;
    float: left;
    text-align: center;
    text-transform: uppercase;
    width: 191px;
}
.meus-cartoes .item  {
    padding: 1rem 0;
    display: block;
    float: left;
    width: 100%;
    font-size: 11px;
    font-size: .6875rem;
    line-height: 25px;
}
.meus-cartoes .item b {
    font-size: 11px;
    font-size: .6875rem;
    line-height: 25px;
}
.meus-cartoes .item a[data-ajax-update="#formulario-cartao-credito"] {
    display: block;
    float: right;
    color: #000;
    margin-top: .5rem;
}
.box-endereco-assinatura h2.titleColumn {
    text-align: center;
    font-size: 18px;
    font-size: 1.125rem;
    margin: 0 0 1rem;
}
.confirmacao-assinatura h2 {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    text-align: center;
    font-size: 18px;
    font-size: 1.125rem;
    margin: 0 0 1rem;
}
.fechamento .produto-assinatura #right.fbits-assinatura-cadastro-endereco-cartao .forminline label {
    display: block;
    float: left;
    width: 100%;
    height: 2.1875rem;
    line-height: 2.1875rem;
    font-size: 15px;
    font-size: 0.9375rem;
}
.fechamento .produto-assinatura #right.fbits-assinatura-cadastro-endereco-cartao .forminline input[type="text"] {
    width: 100%;
    float: left;
    clear: both;
    height: 40px;
    margin: 0;
}
.fechamento .produto-assinatura #right.fbits-assinatura-cadastro-endereco-cartao .forminline a.helpCep {
    float: right;
    display: block;
    height: 35px;
    line-height: 35px;
    color: #a3bd31;
    width: 50%;
    clear: none;
    margin: 0;
    padding: 0;
    font-size: 13px;
    font-size: .8125rem;
    text-align: right;
}
.fechamento .produto-assinatura .labelCol.novoEndereco {
    display: block;
    float: left;
    width: 100%;
    padding-bottom: 1rem;
}
.fechamento.fbits-assinatura div#formulario-cartao-credito .forminline {
    padding: 0;
}
.fechamento .produto-assinatura div#formulario-cartao-credito {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.fechamento .produto-assinatura #right.fbits-assinatura-cadastro-endereco-cartao div[id^="lista-endereco-cobranca"] {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.fechamento .produto-assinatura #right.fbits-assinatura-cadastro-endereco-cartao div[id^="lista-endereco-cobranca"] label {
    height: auto;
    line-height: initial;
    padding: 1rem 0;
    width: 100%;
    display: block;
    float: left;
    font-size: 13px;
    font-size: 0.8125rem;
}
.fechamento .produto-assinatura #right.fbits-assinatura-cadastro-endereco-cartao div[id^="lista-endereco-cobranca"] div[id^="endereco-cobranca"] {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.fechamento .produto-assinatura #right.fbits-assinatura-cadastro-endereco-cartao div[id^="lista-endereco-cobranca"] select.fbits-enderecoCobranca-dropdown {
    margin: 0 0 1rem 0;
    border: 1px solid #cdcdcd;
    width: auto;
    max-width: 100%;
    float: left;
    display: block;
}
.confirmacao-assinatura span.link-minhas-assinaturas {
    display: block;
    float: left;
    width: 100%;
    text-align: center;
    padding-bottom: 1rem;
    font-size: 15px;
    font-size: 0.9375rem;
}
.confirmacao-assinatura span.link-minhas-assinaturas a {
    color: #000;
}
.confirmacao-assinatura div.itemAssinatura {
    display: block;
    float: left;
    width: 100%;
    text-align: center;
    clear: both;
}
.fbits-botoes-carrinho-top a {
    display: block;
}
.fbits-responsive-carrinho-header, .coluna-fechamento #divProdutos thead {
    display:none;
}
.fbits-responsive-carrinho-item-imagem {
    float: left;
    border: 0;
    width: 30%;
    text-align: center;
}
.fbits-responsive-carrinho-item-imagem img, .coluna-fechamento td.cartProd img {
    max-width: 100%;
}
.fbits-responsive-carrinho-item-descricao, .sidebarLogin .cart .cartProdTitle {
    width: 70%;
    padding-left: 10px;
}
.fbits-responsive-carrinho-item-descricao a, .sidebarLogin .cart .cartProdTitle, .coluna-fechamento.final table.tLined.carrinho td.fbits-td-descricao span.cartNome {
    color: #333333;
    font-size: 14px;
    font-size: .875rem;
    width: 100%;
    white-space: normal;
    display: block;
    float: left;
    text-align: left;
    line-height: 1.313rem;
}
.coluna-fechamento.final table.tLined.carrinho td.fbits-td-descricao span.cartNome {
    font-size: 12px;
    font-size: 0.75rem;
    line-height: 0.9375rem;
}
.fbits-responsive-carrinho-item-descricao a br {
    display: none;
}
.fbits-responsive-carrinho-produtos, .coluna-fechamento #divProdutos tbody {
    display: block;
    float: left;
    width: 100%;
}
.fbits-responsive-carrinho-produtos li, .sidebarLogin .cartProd, .coluna-fechamento.final table.tLined.carrinho .produto-linha {
    border-bottom: 0;
    border-top: 1px solid #ccc;
    display: block;
    width: 100%;
    float: left;c
    color: #6d6d5f;
    padding: 1rem 0;
}
.coluna-fechamento.final table.tLined.carrinho .produto-linha:first-child {
    border-top: none;
}
.sidebarLogin .cart .cartProdImg, .coluna-fechamento.final table.tLined.carrinho td.cartProd {
    float: left;
    width: 25%;
    max-width: 70px;
    height: auto;
    display: block;
}
.sidebarLogin .cartProdDesc, .coluna-fechamento.final table.tLined.carrinho td.fbits-td-descricao {
    float: right;
    width: 75%;
    font-size: 12px;
    font-size: 0.75rem;
}
.fbits-responsive-carrinho-item>div, .sidebarLogin .cartProdDesc, .sidebarLogin .cart .cartProdPrice {
    display: block;   
    padding: 0;
    color: #6d6d5f;
    white-space: normal;
    float: left;
    font-size: 12px;
    font-size: .75rem;
    text-transform: uppercase;
    border-bottom: 0;
    font-weight: normal;
}
.fbits-responsive-carrinho-item > div.fbits-responsive-carrinho-item-valor-unitario, .fbits-responsive-carrinho-item > div.fbits-responsive-carrinho-item-total {
    color: #000000;
    font-size: 17px;
    font-size: 1.063rem;
}
.sidebarLogin .cart .cartProdPrice {
    padding-top: 1rem;
    padding-left: 10px;
}
.sidebarLogin .cart .cartProdPrice span.resumo-texto-por {
    text-transform: none;
    padding: 0 0.5rem;
}
.fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-remover {
    width: 15%;
    text-align: center;
}
.fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-titulo {
    margin-bottom: 1rem;
    width: 85%;
    background: transparent;
    height: auto!important;
}
.fbits-responsive-carrinho-item-descricao span.fbits-responsive-carrinho-item-atributos br {
    display: none;
}
.fbits-responsive-carrinho-item-remover {
    background: transparent;
    height: auto !important;
    width: 10%;
}
.fbits-carrinho .content .center #erros {
	text-align: center
}
.fbits-carrinho input.remover {
    /*background: url("../i/icone-remover-carrinho.png") 0 0 no-repeat;*/
    background: url("../i/icone-remover-carrinho.svg") 0 0 no-repeat;
    width: 21px;
    height: 27px;
    background-size: contain;
    display: block;
    float: none;
    margin: auto;
    cursor: pointer;
}
td.remover {
    background: rgba(0, 0, 0, 0);
}
.remover {
    background: url("../i/SVG-diversos/icone-remover-carrinho.svg") no-repeat;
    background-position: center;
    width: 30px;
    height: 30px;
    background-size: 25px;
    margin: 20px auto 0;
    display: block;
    float: none;   
    cursor: pointer;
}
.imprimir {
    background-position: -379px -46px;
    height: 33px;
    width: 32px;
}
.selecionaEndereco {
    clear: both;
    overflow: hidden;    
}
.selecionaEndereco .btNovoEndereco {
   width: 100%;   
}
.fechamento .center {
    position: relative;
    clear: both;
}
input.qtdCarrinho, input.listacompra-produtos-quantidade {
    width: 49px;
    height: 48px!important;
    color: #424242;
    border: 1px solid #ededed;
    vertical-align: middle;
    position: relative;
    text-align: center;
    text-indent: 0;
    top: 0;
    border-radius: 0;
}
.qtdCarrinhoBrinde {
    margin-right: 27px;
}
#listaProdutos input.listaProdutos-selecionar-todos-check {
    float: left;
    margin: 3px 5px 0 0;
}
.carrinho {
    border-collapse: separate;
}
.ie .carrinho {
    border-collapse: collapse;
}
.noborder td {
    border: 0;
}
.tLined.tFrete td {
    border: none;
}
.cartcupom {
    padding-left: 10px !important;
}
.cartcupom .bt {
    height: 30px;
    line-height: 30px;
    color: white;
    text-decoration: none;
    position: relative;
    top: -1px;
    font-size:12px;
    font-size:0.75rem;
}
.cartcupom .input {
    width: 80px;
}
.btcontinuar, .btnVoltarAsCompras, .pedidoStatus a[href="Recompra"], .fbits-confirmacao-acoes a.bt.btcontinuar, a#btnContinuarComprando {
    background: #bebebe;
    width: 100%;
    font-size: 18px;
    font-size: 1.125rem;
    height: 38px;
    line-height: 38px;
    display: block;
    color: #000000;
    text-transform: uppercase;
    text-decoration: none;
    font-weight: 500;
}
.center.listadesejos .btcontinuar {
    display: block;
    margin: 1rem auto;
    float: none;
    max-width: 260px;
}
.pedidoStatus a[href="Recompra"], .fbits-confirmacao-acoes a.bt.btcontinuar {
    float: none;
    margin: 1rem auto 0;
    font-weight: normal;
    border-radius: 0;
}
.fbits-confirmacao-acoes a.bt.btcontinuar {
    margin: 1rem auto;
}
.btfinalizar, .coluna-fechamento.final button {
    width: 100%;
    font-size: 15px;
    font-size: 0.9375rem;
}
.coluna-fechamento.final button {
    margin-bottom: 1rem;
    float: right;
    display: none;
}
.coluna-fechamento.final button#btnFinalizarPedidoFinal2 {
	display: block;
	height: 43px;
	line-height: 43px;
	font-weight: 700;
}
.fbits-botoes-direita>div.limparCarrinho {
    float: left;
    margin-bottom: 1rem;
    width: 100%;
}
.btlimpar {
    background: #fff;
    border: 1px solid #0F2134;
    color: #0F2134;
    width: 100%;
    font-size: 16px;
    font-size: 1rem;
}
button#masterPassLightbox, button#masterPassLightboxRodape {
    width: 100%;
    display: block;
    background: transparent;
    text-align: center;
}
img.btpaypal, button#masterPassLightbox img, button#masterPassLightboxRodape img {
    max-width: 100%;
    margin: 0 auto;
    display: block;
}
.btRealizarLogin, .btCadastrarLogin, .btnVoltarAsCompras {   
    margin-top: 1rem;
    padding: 0;
    width: 100%;
    font-size: 16px;
    font-size: 1rem;
}
.spnAtributos {
    font-size:11px;
    font-size:0.6875rem;
}
.prazoDeEnvio {
    display: block;
    margin-top: 5px;
    font-size:11px;
    font-size:0.6875rem;
    font-weight: bold;
}
.parcelas {
    margin-bottom: 10px;
}
.cartao {   
    width: 64px;
    height: 50px;
    line-height: 50px;
    display: inline-block;
    margin: 0 13px 0 0px;
    text-indent: -9999em;
    overflow: hidden;
}
.bradesco {
    background-position: -65px 0;
}
.paypal {
    background-position: -260px 0;
}
.mastercard {
    background-position: -325px 0;
}
.diners {
    background-position: -390px 0;
}
.americanexpress {
    background-position: -130px 0;
}
.visa {
    background-position: -195px 0;
}
.aura {
    background-position: -520px 0;
}
.hipercard {
    background-position: -585px 0;
}
.googlecheckout {
    background-position: -455px 0;
}
.txtPagamento {
    border: 0;
    padding-top: 10px;
    display: block;
    float: left;
    clear: both;
    width: 100%;
}

div[id^="divConteudoFormaPagamento"] {
    display: inline-block;
}

div[id^="divDoisCartoesFormaPagamento"] {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.ordenar {
    margin: 0 0 1rem;
    clear: both;
    display: block;
    float: left;
    width: 100%;
}
.formBox .labelTipoCadastro {
    width: auto;
}
#spnRemoverCupomDesconto {
    font-size:12px;
    font-size:0.75rem;
    font-weight: bold;
    color: red;
}
form#form-lembraSenha {
    display: block;
    float: left;
    width: 100%;
    margin-bottom: 1rem;
    clear: both;
}
#lembraSenha {
    display: none;
    float: left;
    width: 100%;
    margin-top: 0.5rem;
}
#lembraSenha #lembraSenha-mensagem {
    text-transform: none;
}
#linksenha:before {
    content: "";
    display: block;
    display: none;
}
#linksenha {
    font-weight: normal;
    text-decoration: underline;
    position: relative;
    text-transform: uppercase;
    color: #e7d137;
    font-weight: 700;
}
#lembraSenha label {
    display: none;
}
.coluna-fechamento #lembraSenha input[type="submit"] {
    width: 20%;
    float: right;
}
.coluna-fechamento #lembraSenha input[type="text"] {
    width: 80%;
    height: 35px;
    float: left;
}
div#RecuperarSenha {
    height: auto;
    position: relative;
    width: 100%;
    font-size: 14px;
    font-size: .875rem;
    margin-top: 1rem;
    text-align: left;
    float: left;
}
.loginFechamento form#form-lembraSenha {    
    /*max-width: 260px;*/
    margin: auto;   
    float: none;
}
.login .loginbox input[type="text"]:hover, .login .loginbox input[type="password"]:hover {    
    box-shadow: 0px 0px 3px #9b9b9b;
}
.validation-summary-errors {
    margin-bottom: 10px;
}
.erroCadastro {
    margin-left: 0;
    margin-top: 3px;
    font-size:11px;
    font-size:0.6875rem;
    font-weight: normal;
    color: #F00;
    float: left;
    width: 100%;
}
.forminline .erroCadastroFechamentoPedido {
    display: none;
}
.vabottom {
    vertical-align: bottom;
}
.red {
    color: red;
}
.atention {
    font-size:11px;
    font-size:0.6875rem;
    font-weight: bold;
}
.buyInfo {
    font-size:14px;
    font-size:0.875rem;
}
.meses, .ano {
    padding: 3px;
    border: 1px solid #cccccc;
}
.listaParcelas {
    margin-bottom: 20px;
}
.listaParcelas li {
    margin-bottom: 5px;
}
.txtPagamento .titleParcelas {
    font-weight: bold;
    color: #333;
    font-size:14px;
    font-size:0.875rem;
    display: block;
    width: 100%;
    float: left;
    line-height: 25px;
    margin-bottom: 1rem;
}
.txtPagamento li {
    clear: both;
    display: -webkit-flex;
    -webkit-align-items: center;
    display: flex;
    align-items: center;
}
.txtPagamento li input[type="radio"] {
    float: left;
    margin-right: 5px;
}
.entrega  {
    margin-top: 20px;
    clear: both;
    display: block;
    float: left;
    width: 100%;
    border: 1px solid #ccc;
    border-radius: 0;
}
.entrega .box {
    padding: 1em;
    font-size:13px;
    font-size:0.8125rem;
    line-height: 1.5rem;
    border: 0;
}
.cartoesCredito {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
#lblCarregando {
    position: fixed;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.6);
    z-index: 999;
}
.loading {
    width: 50px;
    height: 50px;
    position: absolute;
    left: 50%;
    margin-left: -25px;
    top: 50%;
    margin-top: -80px;
    background: rgba(0, 0, 0, 0);
}
span[for="TelefoneResidencial"]:before, span[for="enderecoInfo_Numero"]:before, span[for="TelefoneCom"]:before {
    /*content: " | ";*/
}
.meusEnderecos li {
    margin-bottom: 10px;
    clear: both;
}
.forminline img {
    vertical-align: middle;
}
.doisCartoes input[type="radio"] {
    margin-right: 0;
}
.doisCartoes label {
    margin-right: 5px;
}
.doisCartoes .normal {
    width: 150px;
}
.coluna-fechamento.central #divDoisCartoes-1 .forminline.cartoes, .coluna-fechamento.central #divDoisCartoes-2 .forminline.cartoes {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.coluna-fechamento.central #divDoisCartoes-1 .forminline.cartoes .bandeiras, .coluna-fechamento.central #divDoisCartoes-2 .forminline.cartoes .bandeiras {
    width: 100%;
    float: left;
    display: block;
    clear: both;
}
.coluna-fechamento.central #divDoisCartoes-1 .forminline.cartoes .bandeiras .bandeira, .coluna-fechamento.central #divDoisCartoes-2 .forminline.cartoes .bandeiras .bandeira {
    display: block;
    float: left;
    width: 33.333%;
}
.coluna-fechamento.central #divDoisCartoes-1 p, .coluna-fechamento.central #divDoisCartoes-2 p {
    clear: both;
}
.coluna-fechamento.central #divDoisCartoes-1 label[for^="txtDoisCartoes"], .coluna-fechamento.central #divDoisCartoes-2 label[for^="txtDoisCartoes"] {
    display: block;
    float: left;
    width: 100%;
    clear: both;  
    line-height: 40px; 
}
.coluna-fechamento.central #divDoisCartoes-1 label[for^="txtDoisCartoes"] + br + label, .coluna-fechamento.central #divDoisCartoes-2 label[for^="txtDoisCartoes"] + br + label {
    float: left;
    line-height: 42px;
    width: 100%;
}
.coluna-fechamento.central #divDoisCartoes-1 input[id^="txtDoisCartoes"], .coluna-fechamento.central #divDoisCartoes-2 input[id^="txtDoisCartoes"] {
    width: 90%;
    float: right;
}
.coluna-fechamento.central .doisCartoes .fbits-cartoes-identificaveis div#codigoSeguranca {
    width: 100%;
}
.coluna-fechamento.central .doisCartoes input.documentoCartao {
    width: 100%;
}
a#fbits-novoEndereco-popup {
    color: #0F2134;
}
.secureInputs {
    margin: 15px 0;
}
.secureInputs label {
    display: block;
}
.secureInputs input {
    width: 50%;
}
.btSecure {
    margin-top: 10px;
    display: block;
    
    background: #00bf5c;
    color: #fff;
    display: block;
    float: none;
    font-size: 10px;
    font-size: .625rem;
    font-weight: 700;
    margin: 1rem 0;
    padding: 0;
    text-align: center;
    text-transform: uppercase;
    width: 100%;
    max-width: 260px;
    font-family: 'avenir-lt-55-roman',Arial,sans-serif;
}
.carrinhoCupomDesconto {
    display: inline-block;
    font-size:11px;
    font-size:0.6875rem;
    vertical-align: middle;
    margin-bottom: 5px;
}
#txtCupomDesconto, #btnCupomDesconto {
    vertical-align: middle;
}
#divRemoverCupomDesconto {
    clear: both;
    float: left;
    width: 100%;
    margin-top: 0.625rem;
}
.txtTotal, .txtRight {
    text-align: right;
    font-size:11px;
    font-size:0.6875rem;
}
.enderecoConfirmacao {
    line-height: 1.6;
}
.aviso-cartao-fechamento {
    margin-top: 15px;
    font-size:13px;
    font-size:0.8125rem;
}
.boxBoletoFechamento {
    width: 100%;
    height: 830px;
    text-align: center;
    overflow: auto;
    margin: auto;
    display: block;
}
a.bt.lnkboleto {
    text-decoration: none;
    width: 230px;
    display: block;
    margin: 1rem auto 0;
}
.statusBoleto {
    line-height: 20px;
    padding-left: 25px;
    font-size:13px;
    font-size:0.8125rem;
    padding-right: 20px;
    padding-top: 21px;
    text-align: center;
}
.statusBoleto a.bt.btMedium {
    width: 100%;
    display: block;
    margin: 1em auto 0;
    float: none;
    font-size: 16px;
    font-size: 1rem;
}
.labelIE {
    text-align: left !important;
}
#divRemoverCupomDesconto .bt {
    float: left;
    font-size: 11px;
    font-size: .6875rem;
    padding: 0 1rem;
}
#errosCupomDesconto {    
    float: left;
    width: 100%;
    clear: both;
    line-height: 30px;
}
.fbits-responsive-carrinho-desconto-erros {
    float: left;   
    clear: both;
    width: 100%;
}
.tLined.carrinho {
    width: 100%;
    margin-top: 20px;
    display: block;
    float: left;
}
.tLined.carrinho thead {
    display: block;
    float: left;
    width: 100%;
}
#tbItensCarrinho .error {
    margin-top: 5px;
}
.loginFacebook img {
    display: none;
}
.destaqueGridTotal {
    padding-right: 6px !important;    
}
.frameLoading {
    background: url(../i/loading.gif) no-repeat;
}
.sidebarLogin .cart {
    position: relative;
    /*
    margin-bottom: 4rem;
    min-height: 10rem;
    */
    width: 100%;
    text-align: center;
    display: block;
    float: left;
    clear: both;
}
.desconto .cartSubTotalValor {
    color: #4ca702!important;
}
.desconto .cartSubTotalValor:before {
    content: " - ";
}

/* colunas */
.coluna-fechamento, .loginFechamento {
    display: block;
    min-height: 10rem;
    overflow: hidden;
    padding: 0;
    width: 100%;
    padding-bottom: 3rem;
    float: left;
    position: relative;
    border: solid 1px #bebebe;
    padding: 18px;
    margin-bottom: 1rem;
}
div#pagamento.fbits-assinatura-pagamento {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
div#pagamento.fbits-assinatura-pagamento h2.titleColumn {
    margin: 1rem 0;
}
.fbits-responsive-login .loginbox, .loginFechamento .loginbox {
    display: block;
    width: 100%;
    padding: 0;
    margin: auto;
    line-height: 20px;
    font-size: 15px;
    font-size: .9375rem;
    text-transform: uppercase;
    /*
    max-width: 260px;
    */
}
.fbits-responsive-login .loginbox #RecuperarSenha, .loginFechamento .loginbox #RecuperarSenha {
    color: #000000;
    text-transform: none;
    text-align: center;
    margin-top: 0.5rem;
}
.fbits-responsive-login .fbits-responsive-linha, .loginFechamento .forminline {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.fbits-responsive-login .fbits-responsive-linha label, .loginFechamento .forminline label {
    display: block;
    float: left;
    width: 100%;
    margin: 0;
    height: 27px;
    line-height: 30px;
    text-transform: none;
}
.fbits-responsive-login .fbits-responsive-linha label {
    font-size: 14px;
    font-size: .875rem;
}
.fbits-responsive-login .fbits-responsive-linha input.stronginput, .login input[type="text"], .login input[type="password"] {
    width: 100%;
    display: block;
    float: left; 
    border: solid 1px #bebebe;   
    height: 35px;
    line-height: 35px;  
}
.fbits-responsive-login .fbits-responsive-linha input.stronginput {   
    height: 37px;
    line-height: 37px;  
}
.stronginput {
    height: 50px;
    font-size:12px;
    font-size:0.75rem;   
}
.enderecoRadio {
    height: 21px;
    width: 13px;
    position: absolute;
    margin-top: 10px;
}
.coluna-fechamento .labelEnderecoEntrega {
    font-size: 13px;
    font-size: .8125rem;
    line-height: 18px;
    padding-bottom: .6rem;
    padding-top: 8px;
    padding-right: 30px;
    width: 92%;
    height: auto;
    float: right;
    margin-left: 0;
    margin-bottom: 0;
    margin-right: 0;
}
span[id^=spanEnderecoEntrega] {
    position: relative;
}
.coluna-fechamento #divOpcoesEntrega {
    clear: both;
    padding-top: 40px;
    position: relative;
}
.coluna-fechamento #divOpcoesEntrega .OpcaoFrete {
    border: 1px solid #D2D2D2;
    margin: 15px 0;
}
.coluna-fechamento #enderecosUsuario .forminline.clear {
    clear: both;
    height: auto;
    padding-bottom: 0px;
    overflow: hidden;
}
.coluna-fechamento #enderecosUsuario .bt.title.small.right {
    background: #ACACAC;
    clear: both;
    color: white;
    float: left;
    font-size: 11px !important;
    font-size:0.6875rem !important;
    letter-spacing: 1px;
    margin-left: 17px;
    margin-top: 30px;
    text-transform: uppercase;
}
.coluna-fechamento.inicial #divFormNovoEndereco {  
    padding-top: 10px;   
    clear: both;
    width: 100%;
}
.coluna-fechamento.inicial #divFormNovoEndereco .forminline {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.coluna-fechamento.inicial #divFormNovoEndereco .forminline.fbits-pedido-form-numero {
    width: 45%;
    float: left;
}
.coluna-fechamento.inicial #divFormNovoEndereco .forminline.fbits-pedido-form-complemento {
    width: 53%;
    float: left;
    clear: none;
    margin-left: 2%;
}
.coluna-fechamento.inicial #divFormNovoEndereco .forminline.fbits-pedido-form-cep #naoSeiCep {
    margin-top: 0;
}
.coluna-fechamento.central #divFormasPagamento {
    width: 100%;
    clear: both;
    float: left;
}
.coluna-fechamento label, .coluna-fechamento.central #divFormasPagamento .parcelas label {
    display: inline-block;
    font-size: 12px;
    font-size: 0.75rem;
    height: auto;
    margin-right: 6px;
    margin-top: 0;
    padding-top: 0;
    position: relative;
    text-align: left;
    top: 0px;
    width: auto;
    color: #000000;
}
.coluna-fechamento.central label {
    cursor: pointer;
    width: auto;
}
.coluna-fechamento.central .parcelas label {
    color: #444444;
    font-size:11px;
    font-size:0.6875rem;
    height: 10px;
    position: relative;
    top: -2px;
    text-indent: 1px;
}
.coluna-fechamento .txtPagamento .boleto h6 {
    margin-top: 17px;
}
.boleto p {
    text-align: justify;
}
.boleto p span {
    font-size: 14px !important;
    font-size: 0.875rem !important;
}
.coluna-fechamento .cartoesCredito .codSeguranca {
    background: url(../i/icons.png) no-repeat -228px -1px;
    width: 32px;
    height: 25px;
    float: left;
    margin-top: 3px;
    margin-left: 3px;
}
.coluna-fechamento button, .coluna-fechamento input[type="submit"] {
    cursor: pointer;
}
.coluna-fechamento table#tbItensCarrinho.tLined.carrinho, .coluna-fechamento table.tLined.carrinho {
    clear: both;
    margin-top: 0;
    width: 100%;
    margin: 0;
    margin-bottom: 2rem;
}
.coluna-fechamento table {
    width: 100%;
}
.coluna-fechamento .carrinho {
    border-collapse: collapse;
}
.coluna-fechamento table thead th {
    font-weight: normal;
    text-align: center;
    white-space: nowrap;
    color: #303030 !important;
    font-size: 11px;
    font-size: 0.6875rem;
    line-height: 23px;
}
.coluna-fechamento td {
    text-align: center;
}
.coluna-fechamento .tLined td, .coluna-fechamento .tLined th {
    vertical-align: middle;
}
.coluna-fechamento.final td.cartProd .cartNome {
    font-weight: normal;
}
.coluna-fechamento tr.cartTotal {
    background: #000;
    color: white;
    font-size:20px;
    font-size:1.25rem;
    font-weight: bold;
    text-transform: uppercase;
    white-space: nowrap;
}
.coluna-fechamento .seguranca {
    background: url("../i/seguranca.png") no-repeat scroll 0 0 transparent;
    cursor: pointer;
    display: inline-block;
    height: 26px;
    left: 7px;
    margin-top: 5px;
    position: relative;
    width: 32px;
}
.coluna-fechamento.central div.paypal img {
    width: 100%;
}
.coluna-fechamento .title.grande {
    background: #000000;
    border-bottom-right-radius: 3px;
    border-top-right-radius: 3px;
    color: #FFFFFF;
    display: table-cell;
    font-size: 12px !important;
    font-size:0.75rem !important;
    font-weight: bold;
    height: 23px;
    line-height: 23px;
    text-indent: 30px;
    text-transform: uppercase;
    white-space: nowrap;
    width: 160px;
}
.coluna-fechamento .line span {
    border-top: 8px solid #E2E3E4;
    border-bottom: none;
}
.fechamento.fbits-fechamento .painel-cadastro .line span {
    border-top: 1px solid #d1d1d1;
}
.coluna-fechamento .box {
    padding: 0 11px;
}
.cartoesCredito .forminline label {
    float: left;
    font-size:12px;
    font-size:0.75rem;
    height: 32px !important;
    line-height: 32px !important;
    text-align: left;
    width: 100% !important;
}
.coluna-fechamento.central select.meses, .coluna-fechamento.central select.ano {
    width: 48%;
    height: 50px;
}
.coluna-fechamento.central select.ano {
    float: right;
}
.coluna-fechamento.central input.nowide {
    float: left;
    width: 80px;
}
.coluna-fechamento .imgcard {
    display: none;
}
.coluna-fechamento .btCancelarCad, .coluna-fechamento .btSalvarCad {
    text-indent: -9999px;
    margin-left: 0;
    margin-top: 20px;
}
.coluna-fechamento #Prazo {
    display: block;
    margin-bottom: 10px;
}
.columa-fechamento .hasCustomSelect {
    height: 20px;
}
.coluna-fechamento .erroCadastro {
    margin-left: 0px;
}.aright {
    text-align: right!important;
}
.coluna-fechamento.central label {
    margin-right: 2px;
}
.coluna-fechamento.central #divDoisCartoes-1, .coluna-fechamento.central #divDoisCartoes-2 {
    float: left !important;
    width: 100% !important;
    clear: both;
    margin: 1rem 0 0.5rem;
}
.coluna-fechamento.inicial .wideNovoEnd {   
    width: 100%;
}
.coluna-fechamento.inicial .normalNovoEnd {
    width: 100%;   
}
.coluna-fechamento.inicial .nowideNovoEnd {
    width: 100%;    
}
.forminline.left, .forminline.right {
    float: none!important;
}
.txtPreenchimentoObr.left {
    color: #a3bd31;
    margin-top: .7rem;
    margin-bottom: .7rem;
    display: block;
    width: 100%;
    font-size: 14px;
    font-size: .875rem;
    font-weight: normal;
}
.coluna-fechamento.inicial #divFormNovoEndereco .forminline.fbits-pedido-form-acoes input, .fechamento .produto-assinatura #right.fbits-assinatura-cadastro-endereco-cartao .box-endereco-assinatura input.bt.btMedium, .fechamento .produto-assinatura div#right .box-cartao-assinatura input.bt.btMedium {
    display: inline-block;
    width: 49%;
    float: left;     
    font-size: 12px;
    font-size: .75rem;
}
.coluna-fechamento.inicial #divFormNovoEndereco .forminline.fbits-pedido-form-acoes input:hover {opacity: 0.9;}
.coluna-fechamento.inicial #divFormNovoEndereco .forminline.fbits-pedido-form-acoes input.bt.btCancelarNovoCad, .fechamento .produto-assinatura #right.fbits-assinatura-cadastro-endereco-cartao .box-endereco-assinatura input.cancelarPadraoAssinatura, .fechamento .produto-assinatura div#right .box-cartao-assinatura input#btn-cancelar-cartao-credito {
    margin-right: 2%;
    background: #777;
    color: #fff;
}
.coluna-fechamento span.fbits-opcoes-frete {
    display: block;
    float: left;
    width: 50%;
    text-transform: uppercase;
}
.coluna-fechamento span.fbits-opcoes-frete input {
    float: left;
    margin-top: 2px;
    margin-right: 5px;
}
.coluna-fechamento span.fbits-opcoes-frete label {
    float: left;
    width: auto;
    display: block;
}
.coluna-fechamento.inicial #divFormNovoEndereco label {
    line-height: 30px;
    height: 30px;
    width: 100%;
    margin: 0;
    font-size: 14px;
    font-size: .875rem;
}
#divFormNovoEndereco label span {
    color: #e9d237;
    font-size: 16px;
}
.coluna-fechamento.inicial #naoSeiCep {
    margin: 0;
    white-space: nowrap;
    height: 40px;
    width: 100%;
    line-height: 40px;
    display: block;
    text-align: left;
    float: left;
    margin-top: -8px;
}
.coluna-fechamento.inicial .erroCadastro {
    margin-left: 0px !important;
    font-weight: normal;
    position: relative;
    top: -18px;
}
.coluna-fechamento .title-label {
    height: 18px;
    line-height: 18px;
    margin-right: 0px;
    top: 0px;
    width: 120px;
}
ul.bancos {
    display: inline-block;
    width: 100%;
}
ul.bancos label {
    text-align: justify;
    font-size:12px;
    font-size:0.75rem;
    margin-top: -20px;
}
ul.bancos label img {
    margin-bottom: 3px;
}
ul.bancos .radio {
    float: left;
}
ul.bancos li {
    padding-bottom: 30px;
}
ul.bancos li label.pointer {
    width: auto !important;
}
.deposito p {
    text-align: justify;
    font-size:13px;
    font-size:0.8125rem;
    margin-left: 19px;
}
.deposito p.valueDeposito {
    font-size:12px;
    font-size:0.75rem;
    margin-bottom: 30px;
}
.deposito .avisoDeposito {
    font-size:11px;
    font-size:0.6875rem;
    font-weight: bold;
    float: left;
    margin-bottom: 1rem;
    line-height: 14px;
}
#divFormasPagamento .fast-cash {
    font-size:12px;
    font-size:0.75rem;
}
.bgGrupo {
    cursor: pointer;
    margin: 0px !important;
    padding: 0px 0!important;
}
.bgGeral {
    background-color: #fff;
    margin: 0!important;
    padding: 0px 0!important;
}
td.titleGrupoAss {
    text-align: left !important;
    border: none;
}
.histPed th {
    padding: 0px !important;
    text-align: center;
}
.histPed {
    border-bottom: #C8C3C3 1px solid!important;
}
.histPed td a, .bgGrupo td a {
    color: #000;
}
td.titleGrupoAss {
    text-indent: 13px;
}
td.firstTd {
    border-left: 1px solid #ccc;
}
td.firstTd span {
    font-size: 11px!important;
    font-size:0.6875rem !important;
    display: block;
    margin-top: 7px;
}
.meusCartoes .forminline.cartoes label {
    text-align: left;
    width: 7.4rem!important;
    float: none;
    white-space: nowrap;
    display: inline-block;
    height: 2.5rem;
    margin-left: 0;
}
.meusCartoes .forminline.cartoes {
    margin-top: 20px;
}
.meusCartoes .imagemCartao.cadastroCartao {
    margin-left: 180px!important;
    margin-top: -34px!important;
    display: none;
}
.meusCartoes .codSeg {
    margin-top: 43px;
}
.meusCartoes .divIsCompraClique {
    margin-left: 97px;
    margin-top: 50px;
    margin-bottom: 20px;
}
.meusCartoes .bandeiras {
    margin-left: 0;
    width: 252px;
    background: #fff;
    border-bottom: 1px solid #ccc;
    margin-bottom: 1rem;
    padding: 1rem;
}
#divOpcoesEntrega {
    min-height: 130px;
    text-align: center;
    display: block;
    float: left;
    width: 100%;
}
#divFormNovoEndereco {
    padding-bottom: 20px;
}
.fbits-fechamento-pagamento {
    margin-top: 30px;
}
.fbits-fechamento-frete, .fbits-fechamento-frete-desc {
    text-align: right;
}
.valor-unitario-colunas, valor-total-colunas {
    white-space: nowrap;
}
.bt-recompra {
    font-size:16px;
    font-size:1rem;
    background: #eee;
    display: block;
    border-radius: 0;
    max-width: 6.3rem;
    margin: 0 auto;
    padding-top: 3px;
    padding-bottom: 3px;
    text-decoration: none!important;
    box-shadow: none;
}
.fbits-carrinho .fixed-bar .headerLogin {
    margin-left: 0px !important;
}
.coluna-fechamento #ddlEscolhaFrete, .coluna-fechamento #ddlEscolhaFrete-agendado, .coluna-fechamento .ordenar {
    width: auto!important;
}
.coluna-fechamento .th-servico-valor {
    display: inline-block;
    line-height: 34px;
    min-width: 75px;
}
.btpaypal.saiba-mais.imagem {
    box-shadow: 0 0 2px #999;
    margin-right: -219px;
    margin-top: -66px;
    position: absolute;
}
.segundo .btpaypal.saiba-mais.imagem {
    margin-top: -403px;
}
.btpaypal.saiba-mais:before {
    content: "?";
}
.btpaypal.saiba-mais.bt {
    display: none;
}
div.btpaypal.saiba-mais {
    display: none!important;
}
div.btpaypal.saiba-mais:hover .imagem {
    display: block!important;
}
.txtPagamento .forminline label {   
    width: 243px;
}
.pedido-revisao.texto-indicativo p {
    color: red;
    text-align: center;
}
.deposito .bancos label {
    height: auto!important;
    line-height: 1rem !important;
}
.coluna-fechamento .pagamento #divFormasPagamento .forminline .txtPagamento .html-personalizado * {
    animation: none;
    animation-delay: 0;
    animation-direction: normal;
    animation-duration: 0;
    animation-fill-mode: none;
    animation-iteration-count: 1;
    animation-name: none;
    animation-play-state: running;
    animation-timing-function: ease;
    backface-visibility: visible;
    background: 0;
    background-attachment: scroll;
    background-clip: border-box;
    background-color: transparent;
    background-image: none;
    background-origin: padding-box;
    background-position: 0 0;
    background-position-x: 0;
    background-position-y: 0;
    background-repeat: repeat;
    background-size: auto auto;
    border: 0;
    border-style: none;
    border-width: medium;
    border-color: inherit;
    border-bottom: 0;
    border-bottom-color: inherit;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
    border-bottom-style: none;
    border-bottom-width: medium;
    border-collapse: separate;
    border-image: none;
    border-left: 0;
    border-left-color: inherit;
    border-left-style: none;
    border-left-width: medium;
    border-radius: 0;
    border-right: 0;
    border-right-color: inherit;
    border-right-style: none;
    border-right-width: medium;
    border-spacing: 0;
    border-top: 0;
    border-top-color: inherit;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
    border-top-style: none;
    border-top-width: medium;
    bottom: auto;
    box-shadow: none;
    box-sizing: content-box;
    caption-side: top;
    clear: none;
    clip: auto;
    color: inherit;
    columns: auto;
    column-count: auto;
    column-fill: balance;
    column-gap: normal;
    column-rule: medium none currentColor;
    column-rule-color: currentColor;
    column-rule-style: none;
    column-rule-width: none;
    column-span: 1;
    column-width: auto;
    content: normal;
    counter-increment: none;
    counter-reset: none;
    cursor: auto;
    direction: ltr;
    empty-cells: show;
    float: none;
    font: normal;
    font-family: inherit;
    font-size: inherit;
    /*font-style : normal;*/
    font-variant: normal;
    /*font-weight : normal;*/
    height: auto;
    hyphens: none;
    left: auto;
    letter-spacing: normal;
    line-height: normal;
    list-style: none;
    list-style-image: none;
    list-style-position: outside;
    list-style-type: disc;
    margin: 0;
    margin-bottom: 0;
    margin-left: 0;
    margin-right: 0;
    margin-top: 0;
    max-height: none;
    max-width: none;
    min-height: 0;
    min-width: 0;
    opacity: 1;
    orphans: 0;
    outline: 0;
    outline-color: invert;
    outline-style: none;
    outline-width: medium;
    overflow: visible;
    overflow-x: visible;
    overflow-y: visible;
    padding: 0;
    padding-bottom: 0;
    padding-left: 0;
    padding-right: 0;
    padding-top: 0;
    page-break-after: auto;
    page-break-before: auto;
    page-break-inside: auto;
    perspective: none;
    perspective-origin: 50% 50%;
    position: static;
    /* May need to alter quotes for different locales (e.g fr) */
    quotes: '\201C' '\201D' '\2018' '\2019';
    right: auto;
    tab-size: 8;
    table-layout: auto;
    text-align: inherit;
    text-align-last: auto;
    text-decoration: none;
    text-decoration-color: inherit;
    text-decoration-line: none;
    text-decoration-style: solid;
    text-indent: 0;
    text-shadow: none;
    text-transform: none;
    top: auto;
    transform: none;
    transform-style: flat;
    transition: none;
    transition-delay: 0s;
    transition-duration: 0s;
    transition-property: none;
    transition-timing-function: ease;
    unicode-bidi: normal;
    vertical-align: baseline;
    visibility: visible;
    white-space: normal;
    widows: 0;
    width: auto;
    word-spacing: normal;
    z-index: auto;
}
.carrinhoInputBlock .btnLimpar {
    display: none;
    width: 15%;
    max-width: 40px;
    height: 37px;
    color: #fff;
    font-size: 13px;
    font-size: .8125rem;
    float: left;
}
.carrinhoInputBlock.preenchido .btnCalcular {
    display: none;
}
.carrinhoInputBlock.preenchido .btnLimpar {
    display: block;    
}
.carrinhoTxtBlock span {
    display: none;
}
.fbits-responsive-carrinho-frete-total {
    color: #6d6d5f;
    font-size: 12px;
    font-size: .75rem;
    text-transform: uppercase;
    float: left;
    text-align: left;
    display: block;
    clear: both;
    width: 100%;
    line-height: 30px;
}
.fbits-responsive-carrinho-frete-header {
    width: 100%;
    font-size: 15px;
    font-size: 0.9375rem;
    font-weight: normal;
    text-transform: uppercase;
    float: left;
    text-align: left;
    color: #000000;
}
.fbits-responsive-carrinho-frete-valor {
    text-align: left;
    float: left;
    display: block;
    width: 100%;
}
.freteDropDown ul#opcoesFrete {
    background-clip: padding-box;
    background-color: #fff;
    border: 1px solid rgba(0, 0, 0, 0.2);
    border-radius: 6px;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
    font-size:12px;
    font-size:0.75rem;
    left: 686px;
    line-height: 22px;
    list-style: outside none none;
    margin-top: 8px;
    max-width: 400px;
    min-width: 160px;
    padding: 5px 7px 5px 8px;
    position: absolute;
    text-align: left;
    z-index: 1000;
}
.freteDropDown ul#opcoesFrete > li {
    cursor: pointer;
    padding-left: 23px;
    padding-right: 3px;
}
.freteDropDown .freteSelecionado {
    background: url("../i/ok.png") no-repeat scroll 1px 3px;
}
.freteDropDown ul#opcoesFrete > li:hover {
    background: #eee;
    border-radius: 3px;
}
.freteDropDown ul#opcoesFrete > li.freteSelecionado:hover {
    background: url("../i/ok.png") no-repeat scroll 1px 3px #eee;
}
tr.fbits-carrinho-tr-frete td {
    border-bottom: 0;
    padding-bottom: 0;
}
tr.fbits-carrinho-tr-frete-calculo td {
    padding: 0 0 0 380px!important;
    border-bottom: 0!important;
    text-align: left;
}
.freteDropDown #prazoEntregaExibicao {
    background: none repeat scroll 0 0 #ddd;
    border-radius: 3px;
    color: #222;
    cursor: pointer;
    font-size:12px;
    font-size:0.75rem;
    margin-top: -10px;
    margin-left: 846px;
    padding: 2px 5px;
    position: absolute;
}
.freteDropDown {
    height: 20px;
}
.freteDropDown #prazoEntregaExibicao:after {
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
    border-top: 4px solid #000;
    content: "";
    display: inline-block;
    height: 0;
    vertical-align: middle;
    width: 0;
    margin-left: 5px;
}
.freteLista {
    padding-bottom: 1rem;
    padding-top: 1rem;
}
.freteLista > div:first-child {
    display: table;
    width: 100%;
}
.freteLista > div:first-child div {
    color: #4ca702;
    display: inline-block;
    font-size:16px;
    font-size:1rem;
    font-weight: bold;
    height: 20px;
    line-height: 31px;
    margin-bottom: 10px;
    margin-left: 28px;
    margin-right: 9px;
    padding-right: 0;
    text-align: left;
    width: 239px;
}
.freteLista > div:first-child div:last-child {
    padding-left: 0;
    padding-right: 0;
}
.freteLista > div:first-child div:first-child {
    width: 0;
}
.freteLista div[id^="opcaoFrete"] {
    background: none repeat scroll 0 0 #f5f5f5;
    display: table;
    padding: 5px 0 5px 47px;
    width: 100%;
}
.freteLista div[id^="opcaoFrete"] > div {
    border-color: #aaa;
    border-image: none;
    border-style: solid none;
    border-width: 1px medium;
    display: inline-block;
    margin-left: -5px;
    padding: 8px;
    text-align: left;
    width: 265px;
}
.freteLista div[id^="opcaoFrete"] > div:first-child {
    border-left: 1px solid #aaa;
    height: 16px;
    margin-left: -61px;
    margin-top: 0;
    position: absolute;
    width: 56px;
}
.freteLista div[id^="opcaoFrete"] > div:last-child {
    border-right: 1px solid #9ab9c7;
}
.numeroCartaoCredito {
    height: 49px;
    font-size:25px;
    font-size:1.5625rem;
    width: 258px;
    line-height: normal;
}
.numeroCartaoCredito.verificado {
    background: url(../i/ok.png) no-repeat 97.5% center;
    background-color: white;
}
.pagamento .fbits-pedido-pagamento-template2 .nomeCartao {  
    font-size: 12px;
    font-size: .75rem;
    width: 100%;
}
.pagamento .fbits-pedido-pagamento-template2 .validade {
    height: 30px;
    font-size:15px;
    font-size:0.9375rem;
    width: 80px;
}
.pagamento .fbits-pedido-pagamento-template2 .codigoSeguranca {   
    width: 100%!important;
}
.fbits-cartoes-identificaveis div#codigoSeguranca {
    width: 48%;
}
.fbits-pedido-pagamento-template2 .bandeiras {
    width: 100% !important;
}
.fbits-pedido-pagamento-template2 .bandeiras .bandeira {
    display: inline-block;
    width: 70px !important;
    height: 40px;
}
.fbits-pedido-pagamento-template2 .bandeiras .bandeira.inativa {
    opacity: 0.3;
}
.fbits-cartao-credito-erros {
    color: red;
    font-size:12px;
    font-size:0.75rem;
    line-height: 17px;
}
.fbits-formularioCartoes-template2 .bandeiras .bandeira.inativa {
    opacity: 0.3;
}
.fbits-formularioCartoes-template2 .input#CodigoSeguranca {
    margin-left: 0;
}
.fbits-pedido-linha #enderecosUsuario .alterarEndereco {
  position:inherit;
  color: #d12121;
}
.input.normal.numeroCartaoCredito {
  width: 248px;
}
.tLined .arrow, .divQuantidade span.arrow-lista {
    font-size: 14px!important;
    font-size: .875rem!important;
    border: 1px solid #0F2134!important;
    color: #fff;
    height: 30px;
    padding: 0!important;
    width: 32px;
    line-height: 30px;
    margin-right: -3px;
    margin-left: -3px!important;
    background: #0F2134;
}
.tLined .arrow[id^="linkQuantidadeMenos"] {
    width: 16px;
    height: 48px;
    border: solid 1px #ededed !important;
    border-right: none;
    border-radius: 0;
    font-size: 12px !important;
    color: #424242;
    background: #ededed;
    margin-right: -4px !important;
    margin-left: -4px !important;
    line-height: 48px;
}
.tLined .arrow[id^="linkQuantidadeMais"] {
    width: 16px;
    height: 48px;
    border: solid 1px #ededed !important;
    border-left: none;
    border-radius: 0;
    font-size: 12px !important;
    color: #424242;
    background: #ededed;
    line-height: 48px;
}
.fbits-responsive-carrinho-item-quantidade.tLined, .coluna-fechamento.final table.tLined.carrinho td.fbits-td-quantidade {
    padding: 0 0 0 30%;
    width: 65%;
    height: auto;
    text-align: left;
}
.coluna-fechamento.final table.tLined.carrinho td.fbits-td-quantidade {
    display: block;
    float: left;
    clear: both;
    padding-left: 25%;
    font-size: 14px;
    font-size: 0.875rem;
}
.coluna-fechamento.final table.tLined.carrinho td.fbits-td-quantidade:before {
    content:"Qtde:";
}
.fbits-responsive-carrinho-item-valor-unitario {
    display: none!important;
}
.fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-total, .coluna-fechamento.final table.tLined.carrinho .produto-linha td.valor-total-colunas {
    width: 35%;
    padding: 0 0 0 5px;
    text-align: right;
    line-height: 15px;
}
.coluna-fechamento.final table.tLined.carrinho .produto-linha td.valor-total-colunas {
    float: right;
    clear: none;
}
.fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-total .precoParcela {
    font-size: 10px;
    font-size: 0.625rem;
    display: none;
}
.fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-total .precoParcela span.fbits-parcela-juros {
    display: none;
}
.coluna-fechamento .tLined.carrinho tfoot tr {
    display: block;
    float: left;
    width: 100%;
    min-height: 40px;
    /*border-bottom: 1px solid #ccc;*/
}
.fbits-responsive-carrinho-subtotal, .sidebarLogin .cartSubTotal.subtotal, .coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-subtotal {
    color: #000000;
    font-size: 17px;
    font-size: 1.063rem;
    font-weight: normal;
    padding: 0;
    text-align: right;
    text-transform: uppercase;
    white-space: nowrap;
    float: right;
    width: 100%;
    background-color: transparent;
    height: auto;
}
.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-subtotal {
    font-size: 12px;
    font-size: 0.75rem;
    width: 100%;
    height: 23px;
    min-height: 23px;
    line-height: 23px;
    margin-bottom: 10px;
    border: solid 1px #dadada;
    /*
    border-top: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    */
}
    
.fbits-responsive-carrinho-subtotal-header {
    border-right: none;
    padding: 0.5rem;
    font-weight: 700;
}
.fbits-responsive-carrinho-subtotal-valor  {
    border-left: none;
    padding: 0.5rem ;
    margin-left: -3px;
}
.coluna-fechamento tr.noborder.cartLinetr.bgSubt td {
    display: inline-block;
    border-radius: 0;
    vertical-align: top;
    width: 50%;
    text-align: right;
}
.coluna-fechamento tr.noborder.cartLinetr.bgSubt td.fbits-td-subtotal-valor {
    font-size: 14px;
    font-size: 0.875rem;
}
.sidebarLogin .cartSubTotalValor, .coluna-fechamento tr.bgSubt td.fbits-td-subtotal-valor span { 
    display: inline;
    margin: 0 10px;
    font-weight: bold;
}
.fbits-responsive-carrinho-item-total span.aliquotasProduto {
    display: block;
    padding: 0 10px;
    line-height: initial;
    height: initial;
}
.fbits-responsive-aliquota .valorAliquotas.fbits-responsive-carrinho-aliquota-valor {
    padding-right: 0;
    margin: 0;
    display: inline-block;
    width: 15%;
    text-align: center;
    padding: 0 0 1.2rem 0;
    white-space: nowrap;
}
.fbits-pedido-desconto {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.fbits-pedido-desconto .pedidoInputBlock {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.fbits-pedido-desconto .fbits-pedido-desconto-input {
    display: block;
    float: left;
    width: 100%;
    margin: 1rem 0;
}
.coluna-fechamento.final table td.valor-total-colunas span.linha-valor-total-aliquota {
    display: block;
    position: initial;
    bottom: 19px;
    width: 100%;
    clear: both;
}
span.linha-valor-total-aliquota:before {
    content: "Aliquota:";
    width: 100%;
    display: inline;
    line-height: 3rem;
}
.minhaconta .btnVoltarLoja {
    display: inline-block;
}
.minhaconta .mainBarInterna div#fbits-formularioCartoes-template2 {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.mainBarInterna .fbits-formularioCartoes-template2 label {
    width: 100% !important;
    text-align: left;
    padding: 0;
}
.minhaconta .numeroCartaoCredito {
    margin-left: 0;
}
.minhaconta .forminline input#ValidadeSimples {
    width: 100%;
    height: 50px;
}
.fbits-responsive-aliquota {
    display: block;
    clear: both;
    text-align: right;
    margin-bottom: 1rem;
    color: #000;
    font-size:12px;
    font-size:0.75rem;
    font-weight: normal;
    padding-top: 5px;
    text-transform: uppercase;
    white-space: nowrap;
    float: none;
    width: 100%;
    background-color: transparent;
    height: 38px;
    border-bottom: 1px solid #ccc;
    padding-right: .4rem;
}
.content.cadastro.content-personalizado .center.formCadastro {
    padding: 2rem 0;
    display: block;
    float: left;
    width: 100%;
}
.content.cadastro.content-personalizado .center.formCadastro .campo-cadastro {
    width: 100%;
    float: left;
}
.campo-cadastro input#email-validar, 
.campo-cadastro input#Senha, 
.campo-cadastro input#ConfirmacaoSenha,
.campo-cadastro input#cpf-validar,
.campo-cadastro input#cnpj-validar,
.campo-cadastro input#Nome,
.campo-cadastro input#txtRg,
.campo-cadastro input#txtNasc,
.cadastro input#enderecoInfo_Numero,
.campo-cadastro input#txtBairro,
.campo-cadastro input#txtCidade,
.cadastro input#txtEstado,
.campo-cadastro input#enderecoInfo_Complemento {
    width: 100%;
    float: left;
    margin: 0;      
}
.campo-cadastro a#naoSeiCep {
    margin-left: 10px;
    float: left;
    margin-right: 0;
}
button#validar-pf, button#validar-pj {
    width: 150px;
    height: 45px;
    margin: auto;
    display: block;
    cursor: pointer;
}
form[action="/Cadastro/CadastroPersonalizadoPFAjax"], .content.cadastro.content-personalizado .center.formCadastro div#cadastro-personalizado {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.content.cadastro.content-personalizado .center.formCadastro div#cadastro-personalizado div#div-senha {
    clear: both;
    float: left;
    width: 100%;
}
.content.cadastro.content-personalizado .center.formCadastro .campo-cadastro span {
    float: left;
    display: block;
    line-height: 45px;
}
.campo-cadastro input#TipoSexoId-Masc,
.campo-cadastro input#TipoSexoId-Fem {
    margin-left: .6rem;
    margin-top: 16px;
}
.campo-cadastro label.wauto {
    margin-right: 1rem;
    height: 45px;
    line-height: 45px;
    display: inline-block;
}
.campo-cadastro input#DDDRes, 
.campo-cadastro input#DDDCel, 
.campo-cadastro input#DDDCom {
    width: 23%;
    float: left;
    margin-left: 0;
    margin-right: 2%;
    text-align: center;
    text-indent: 0;
}
.campo-cadastro input#TelefoneResidencial, 
.campo-cadastro input#TelefoneCelular, 
.campo-cadastro input#TelefoneComercial {
    width: 75%;
    margin: 0;
    float: left;
}
.texto-regulamento {
    margin-top: 1rem;
    color: #000;
    font-weight: bold;
    margin-bottom: 1rem;
    float: left;
    width: 100%;
    clear: both;
}
.texto-regulamento + button#cadastrar {
    margin: 0 auto;
    float: none;
    background: #888;
    width: 250px;
    height: 45px;
    color: #fff;
    display: block;
}
div#headerLoginMaster {
    display: block;
    float: left;
    width: 100%;
    text-align: center;
    font-size: 12px;
    font-size: 0.75rem;
}
div#headerLoginMaster .headerLoginMaster {
    display: block;
    float: left;
    /*width: 100%;*/
    /*padding: 0.5rem 0.7rem;*/
    
    position: fixed;
    bottom: 0;
    background-color: #fff5ae;
    width: 150px;
    left: 10px;
    padding: 4px 10px;
    border-radius: 5px;
    box-shadow: 2px 2px 2px #ccc;
    z-index: 999999;
    margin: 10px 10px 5px;
}
div#headerLoginMaster .headerLoginMaster a {
    color: #000;
    font-weight: bold;
    text-decoration: underline;
}

.fbits-responsive-carrinho-frete-calculo, .fbits-responsive-carrinho-desconto-input {
    width: 100%;
    display: block; 
}
.carrinhoInputBlock {
    margin: 0;
    width: 100%;
    padding: 0px;
    float: left;
    clear: both;
    text-align: left;
}
.fbits-responsive-carrinho-frete-input {    
    width: 100%;
}
.carrinhoInputBlock input[type="text"], #txtCalculaFrete.fbits-carrinho-calcularFrete-cep {
    width: 75%;
    height: 37px;
    float: left;
    border: solid 1px #bebebe;
    border-radius: 0;
    text-indent: 1rem;
    font-size: 14px;
    font-size: .875rem;
}
.carrinhoInputBlock .btnCalcular {
    width: 25%;
    height: 37px;
    font-size: 14px;
    font-size: .875rem;
    float: left;
    background-color: #e9d237;
    border-radius: 0;
    color: #000;
}
.fbits-calculafrete .carrinhoInputBlock .btnCalculaFreteProduto {
    height: 42px;
    line-height: 42px;
    width: 43px;
    text-align: center;
    padding: 0;
    margin-left: -3px;
    margin-top: 0px;
    text-transform: uppercase;
    letter-spacing: .06rem;
    font-size: 12px;
    font-size: .75rem;
    border-radius: 0;
    font-size: 0;
}
div#fancybox-content > div {
    width: 100%!important;
    height: auto!important;
}
div#contentBuscarCep {
    display: block;
    float: left;
    width: 100%;
    padding-top: 1rem;
}
div#contentBuscarCep label[for="Logradouro"], div#contentBuscarCep label[for="Cidade"] {
    line-height: 25px;
    height: 25px;
    display: inline-block;
}
div#contentBuscarCep .labelCol input.input {
    height: 32px;
    width: 100%;
}
div#contentBuscarCep .labelCol select#TpLogradouro {
    border: 1px solid #ccc;
    height: 25px;
    margin-bottom: 5px;
}
div#contentBuscarCep label[for="UF"] {
    clear: both !important;
    display: inline-block;
    height: 25px;
    line-height: 25px;
    width: 32px;
}
div#contentBuscarCep .labelCol select#UF {
    display: inline-block;
    clear: none;
    border: 1px solid #ccc;
    height: 25px;
    margin-top: 3px;
}
input.bt.btBuscarCep.buscarCepProduto {
    display: block;
    width: 100px;
    height: 32px;
    line-height: 32px;
    margin: 10px auto;
}
div#cepBuscadoDIV table tr th {
    font-size:12px;
    font-size:0.75rem;
    line-height: 16px;
}
div#cepBuscadoDIV table tr td {
    font-size:12px;
    font-size:0.75rem;
}
.carrinhoInputBlock .btnCalcular:hover, .carrinhoInputBlock .btnLimpar:hover {opacity: 0.9;}
.fbits-responsive-carrinho-items, .sidebarLogin .cart .cart-itens, .coluna-fechamento div#divProdutos > div {
    display: block;
    border-collapse: inherit;
    width: 100%;
    float: left;
}
.fbits-responsive-carrinho-frete, .fbits-responsive-carrinho-desconto {  
    /*border-bottom: 1px solid #ccc;*/
    border-bottom: none;
    padding: 1rem;
}
.fbits-confirmacaoPedido .fbits-responsive-carrinho-prazo-entrega {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    border-bottom: 1px solid #ccc;
    padding: 1rem;
    font-size: 12px;
    font-size: 0.75rem;
}
body.fechamento.fbits-confirmacaoPedido section.fbits-responsive-carrinho {
    border-radius: 0;
}
.coluna-fechamento .tLined.carrinho tfoot tr.valorfrete, 
.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-retiradaLoja,
.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorDesconto,
.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-entregaAgendada {
    padding: 1rem 0;
    font-size: 14px;
    font-size: 0.875rem;
    line-height: 18px;
}
.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorDesconto,
.coluna-fechamento .tLined.carrinho tfoot tr.valorfrete {
    padding: 0.5rem 0;
    font-size: 12px;
    font-size: 0.75rem;
    line-height: 18px;
}
.coluna-fechamento .tLined.carrinho tfoot tr.valorfrete td,
.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorDesconto td {
    width: 50%;
    float: left;
    text-align: left;
}
.coluna-fechamento .tLined.carrinho tfoot tr.valorfrete td:last-child,
.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorDesconto td:last-child {
    text-align: right;
}
.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-retiradaLoja td,
.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-entregaAgendada td {
    display: block;
    float: left;
    width: 100%;
    padding: 0;
    text-align: center;
    font-size: 14px;
    font-size: 0.875rem;
}
.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-entregaAgendada td span {
    width: 50px;
}
.fbits-responsive-carrinho-frete ul#opcoesFrete {
    max-width: 300px;
    position: initial;
    float: left;
    clear: both;
    left: initial;
    top: initial;
    margin: 0;
}
.fbits-responsive-carrinho-frete #prazoEntregaExibicao {
    position: initial;
    top: initial;
    left: initial;
    margin: 0;
    float: right;
    height: 40px;
    line-height: 40px;
    background: #fff;
    border: 1px solid #acacac;
    padding: 0 1rem;
    color: #6d6d5f;
}
.fbits-responsive-carrinho-frete #prazoEntregaExibicao::after {
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
    border-top: 4px solid #6d6d5f;
    content: "";
    display: inline-block;
    height: 0;
    margin-left: 10px;
    vertical-align: middle;
    width: 0;
}
.fbits-responsive-carrinho-frete-opcoes {
    width: 100%;
    display: block;
    float: left;
}
div#opcaoCalculoFrete  {
    display: block;
    float: right;
    width: auto;
}
.fbits-responsive-carrinho-desconto-total {
    width: 100%;
    color: inherit;
    font-size: 12px;
    font-size: .75rem;
    display: block !important;
    text-transform: uppercase;
    line-height: 30px;
    color: #000;
}
.fbits-responsive-carrinho-total, .cartSubTotal.valor-total, .coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorTotal {
    width: 100%;
    float: left;
    background-color: rgba(0,0,0,0);
    height: 45px;
    line-height: 45px;
    color: #6d6d5f;
    font-size: 15px;
    font-size: .9375rem;
    text-align: right;
    text-transform: uppercase;
    white-space: nowrap;
    border: 1px solid #bebebe;
    padding: 0;
}
.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorTotal {
    width: 100%;
    float: right;
    height: 23px;
    line-height: 23px;
    color: #303030;
    font-size: 12px;
    font-size: .75rem;
    border: 1px solid #dadada;
    min-height: 23px;
}
.fbits-responsive-carrinho-total-header, .fbits-responsive-carrinho-total-valor {
    font-size: 17px;
    font-size: 1.063rem;
    font-weight: 700;
}
span.fbits-carrinho-resumo-total, .coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorTotal span.fbits-span-valorTotal-texto {
    font-size: 15px;
    font-size: .9375rem;
    color: #6d6d5f;
}
.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorTotal span.fbits-span-valorTotal-texto {
    font-size: 12px;
    font-size: 0.75rem;
    color: #303030;
    text-align: right;
    display: block;
}
.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorTotal span#pedidoValorTotal {
    font-size: 14px !important;
    font-size: 0.875rem !important;
    color: #000000;
    text-align: right;
    display: block;
    font-weight: 700;
}
.fbits-responsive-carrinho-total-header {
    border-right: none;
    border-radius: 0;
    color: #000000;
    padding: 0.5rem;
}
.fbits-responsive-carrinho-total-valor, .valor-total .cartSubTotalValor, .coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorTotal span#pedidoValorTotal {
    font-size: 15px;
    font-size: .9375rem;
    margin: 0 10px 0 0;
}
.fbits-responsive-carrinho-total-valor {
    border-left: none;
    border-radius: 0;
    color: #000000;
    padding: 0.5rem;
    font-weight: 700;
}
.fbits-responsive-carrinho-frete-erros {
    line-height: 30px;
}
input#btnFinalizarPedido2 {
    margin-top: 1rem;
}
.fbits-botoes-carrinho-top {
    padding: 1rem 0;
    overflow: hidden;
}
.botoes-carrinho-bottom {
    height: auto;
    margin: 1rem 0 3rem;
    overflow: hidden;
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.fbits-botoes-esquerda  {
    display: block;
    height: auto;
    position: relative;
    margin-bottom: 1rem;
    width: 100%;
}
.fbits-botoes-direita {
    display: block;
    height: auto;
    position: relative;   
    width: 100%;
}
.fbits-botoes-esquerda>div {
    display: block;
    vertical-align: middle;
    position: relative;
    margin: 0 auto;
}
.fbits-botoes-direita>div {
    display: block!important;
    padding-left: 0;
    vertical-align: middle;
    height: auto;
    position: relative;
    margin: 0;
}
.fbits-botoes-direita>div.fbits-botao-finalizarPedido {
    margin: 0 !important;
}
.fbits-botoes-direita>div.fbits-botao-paypal-carrinho, .fbits-botoes-direita>div.fbits-botao-masterpass-carrinho.masterPassBtn {
    margin: 0 0 1rem 0 !important;
    display: none !important;
}
.botoes-carrinho-bottom .fbits-botoes-direita>div.fbits-botao-paypal-carrinho,
.botoes-carrinho-bottom .fbits-botoes-direita>div.fbits-botao-masterpass-carrinho.masterPassBtn {
    display: none !important;
}
td.detaqueItemUnit {
    display: block;
    color: #333;
    font-weight: bold;
    font-size:16px;
    font-size:1rem;
    height: auto;
    width: 10rem;
    text-align: right;
    position: absolute;
    display: none;
    right: 0;
}
td.detaqueItemTotal {
    margin: 0;
    position: absolute;
    display: block;
    right: 0;
    height: 1rem;
    top: 5.6rem;
    font-size:16px;
    font-size:1rem;
    font-weight: bold;
    border-top: 1px solid #ddd;
    padding-top: .6rem!important;
    text-align: right;
    width: 100%;
}
tr.produtosCart {
    border-bottom: 1px solid #ddd;
    display: block;
    position: relative;
    height: 8rem;
}
.fbits-carrinho-produtoImagem img {
    width: 4rem;
    height: auto;
}
td.fbits-carrinho-item-descricao+td {
    width: 6rem;
    text-align: center;
}
td.fbits-carrinho-item-descricao+td+td {
    width: 5rem;
}
td.detaqueItemTotal span {
    float: left;
    color: #333;
    font-weight: bold;
    font-size:18px;
    font-size:1.125rem;
    display: none;
}
td.cartProd.fbits-carrinho-produtoImagem {
    display: none;
}
.headerTabela th:first-child+th+th+th+th{ display:none; }
.headerTabela th:first-child+th+th+th{ display:none; }

tr.fbits-carrinho-tr-frete {
    display: block;
}
td.txtdestaqueSub.aright {
    display: none;
}
tr.fbits-carrinho-tr-frete-calculo {
    display: block;
}
select:focus, textarea:focus, input:not([type="radio"]):not([type="checkbox"]):focus {
    border-color: #ccc;
    outline: 0;
    outline: thin;
    -webkit-box-shadow: 0;
    -moz-box-shadow: 0;
    box-shadow: none;
}
.freteLista>div:first-child div {
    display: none;
}
.freteLista div[id^="opcaoFrete"]>div {
    border-color: #333;
    border-image: none;
    border-style: none;
    border-width: 0;
    display: inline-block;
    margin-left: -1rem;
    font-size:11px;
    font-size:0.6875rem;
    padding: 8px;
    text-align: left;
    width: 6.2rem;
}
.freteLista div[id^="opcaoFrete"]>div:first-child {
    border-left: 0;
    height: 1em;
    margin-left: 0;
    margin-top: 0;
    position: relative;
    top: .2rem;
    width: 2rem;
}
.freteLista div[id^="opcaoFrete"]>div:last-child {
    border-right: 0;
}
#resultadoFrete .freteLista div[id^="opcaoFrete"] {
    margin-bottom: 0;
}
tr.fbits-carrinho-tr-desconto {
    display: block;
}
input#btnFinalizarPedido2 {
    margin-top: 0;
}
.loginFacebook {
    background: #415ca9;
    width: 100%;
    display: block;
    color: #fff;
    float: left;
    margin-top: 10px;
    text-align: center;
    cursor: pointer;
    padding: 0;
    clear: both;
    height: 37px;
    line-height: 37px;
    font-size: 14px;
    font-size: 0.875rem;
    /*display: none;*/
}
.loginFacebook:before {
    content: "Conectar com Facebook"
}
.loginFacebook:hover {opacity: 0.9;}
a.bt.btCadastrarLogin {
    height: 2.8rem;
    font-size:16px;
    font-size:1rem;
    line-height: 2.8rem;
    display: block;
    text-decoration: none;
}
td#subtotal {
    margin: 0;
    position: absolute;
    display: inline-block;
    right: 0;
    height: 1.7rem;
    top: 0;
    font-size:16px;
    font-size:1rem;
    font-weight: normal;
    border-top: 1px solid #ddd;
    padding-top: 0.1em!important;
    text-align: right;
    padding-bottom: 0.6rem!important;
    width: 100%;
    border-bottom: 1px solid#ccc;
}
.selecionaEndereco span {
    display: inline;
    font-size: 15px;
    font-size: .9375rem;
    line-height: 1.4rem;
    font-weight: normal;
}
.selecionaEndereco span.lblNome {
    display: block;
}
.selecionaEndereco span.fbits-pipeline-endereco {
    display: none;
}
#enderecosUsuario .alterarEndereco {
    color: #d12121;
    font-size:14px;
    font-size:0.875rem;
}
span.etapa-fechamento {
    display: none;
}
.coluna-fechamento.central #divFormasPagamento label, .coluna-fechamento.central #divFormasPagamento .parcelas label {
    cursor: pointer;
    padding-left: 0;
    margin: 0;
    width: 100%;
    text-transform: uppercase;
    font-size: 11px;
    font-size: 0.6875rem;
    line-height: 30px;
}
.coluna-fechamento.central #divFormasPagamento .fbits-cartoes-identificaveis label, .coluna-fechamento.central #divFormasPagamento label.numcartao {
    font-size: 12px;
	font-size: .75rem;
}
.coluna-fechamento.central .txtPagamento .fbits-cartoes-identificaveis label, .coluna-fechamento.central .txtPagamento .forminline label.numcartao {
    display: block;
    float: left;
    width: 100%;
    height: 30px;
    line-height: 30px;
}
div[id^="lista-endereco-cobranca"] {
    padding-top: 1rem;
    line-height: 20px;
    clear: both;
    float: left;
    width: 100%;
}
div[id^="lista-endereco-cobranca"] .forminline label {
    line-height: inherit !important;
    margin-top: 10px !important;
}
div[id^="lista-endereco-cobranca"] input {
    float: left;
    margin-top: 3px;
    margin-right: 5px;
}
div[id^="endereco-cobranca"] {
    display: block;
    float: left;
    width: 100%;
    margin-top: 1rem;
    text-transform: uppercase;
    font-size: 11px;
    font-size: .6875rem;
    line-height: inherit;
}
.minhaconta select.fbits-enderecoCobranca-dropdown {
    width: 100%;
    height: 40px;
    margin: 0;
    border: solid 1px #e5e5e5;
    margin: 1rem 0;
}
#divFormasPagamento img.pointer {
    max-width: 100%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .fbits-bandeiras-disponiveis img {
    display: inline-block;
    margin: 0 5px 5px;
}
.pagamento .fbits-pedido-pagamento-template2 input {
    height: 32px;
    margin-bottom: 7px;
    border: solid 1px #bebebe;
    font-size: 14px;
    font-size: 0.875rem;
}
.pagamento .fbits-pedido-pagamento-template2 input[type="radio"] {
    height: auto;
    margin-bottom: 0;
}
.pagamento .fbits-pedido-pagamento-template2 div[id^="lista-endereco-cobranca-"] input {
    height: 16px;
}
.fbits-cartoes-identificaveis .input.normal.numeroCartaoCredito, .mainBarInterna .fbits-formularioCartoes-template2 .numeroCartaoCredito {
    width: 100%;
    font-size: 15px;
    font-size: 0.9375rem;
    margin: 0;
    margin-bottom: 7px;
    height: 45px;
}
.coluna-fechamento.central input.nowide {
    float: left;
    width: 100%;   
}
.coluna-fechamento .tLined.carrinho tfoot tr#descontoFormaPagamento td {
    display: block;
    width: 50%;
    float: left;
    line-height: 25px;
}
.coluna-fechamento .tLined.carrinho tfoot tr#descontoFormaPagamento td span.texto-desconto {
    display: block;
    float: left;  
    text-align: left;   
}
.coluna-fechamento .tLined.carrinho tfoot tr#descontoFormaPagamento td span#textoTotalPedido {    
    float: right;
    text-align: right;   
}
.noborder.cartLinetr.bgSubt td.nowrap {    
    /*float: right;*/
    text-align: right;
    padding-right: 0;
}
.cartSubTotal.personalizacao {
    display: none!important;
}
.content.cadastro {
    padding: 0.7rem;
    padding-top: 2.5rem;
}
.cadastro p {
    font-size: 14px;
    font-size: .875rem;
    text-align: center;
    line-height: 20px;
    padding: 1rem 0;
}
.fechamento .center.formCadastro .formBox  {
    border: 0;
    display: block;
    float: left;
    width: 100%;
}
.fechamento .center.formCadastro .formBox .forminline {
    display: block;
    float: left;
    width: 100%;
    padding: 0 .625rem 0.5rem;
    clear: both;
}

/* Título Endereço Form. Cadastro */
.fechamento .center.formCadastro .formBox:nth-child(5) .line .title {
   font-size: 0; 
}
.fechamento .center.formCadastro .formBox:nth-child(5) .line .title:after {
    content: "Endereço";
    font-size: 22px;
    font-size: 1.375rem;
    display: inline-block;
    vertical-align: top;
}
/**/

.cadastro label {
    color: #000;
    font-size:12px;
    font-size:0.75rem;
    display: block;
    text-indent: 0;
    float: left;
    height: 32px;
    line-height: 32px;
}
.cadastro input[type="text"], .cadastro input[type="password"] {
    width: 100%;
    position: relative;
}
.cadastro .wauto {
    display: inline-block;
    width: 100%!important;
    white-space: nowrap;
    text-indent: 1.3rem;
}
input#cadastroPessoaFisica, input#cadastroPessoaJuridica, input#TipoSexoId-Masc, input#TipoSexoId-Fem {
    margin-top: 8px;
    float: left;
    margin-right: 5px;
    margin-left: 20px;
}
.fechamento .center.formCadastro .formBox .forminline label[for="cadastroPessoaFisica"],
.fechamento .center.formCadastro .formBox .forminline label[for="cadastroPessoaJuridica"],
.fechamento .center.formCadastro .formBox .forminline label[for="TipoSexoId-Masc"],
.fechamento .center.formCadastro .formBox .forminline label[for="TipoSexoId-Fem"] {
    float: left;
    width: auto !important;
    margin-top: 0px;
    text-indent: 0;
    margin-right: 1rem;
}
.fechamento .center.formCadastro .formBox .forminline input#cbIsento {
    float: left;
    margin-top: 8px;
    margin-left: 5px;
}
input#DDDRes, input#DDDCel, input#DDDCom {
    width: 15%;
    float: left;
    display: inline-block;
    clear: both;
    text-indent: inherit;
    text-align: center;
}
input#TelefoneResidencial, input#TelefoneCelular, input#TelefoneComercial {
    display: inline-block;
    width: 80%;
    margin-left: 5%;
}
.fechamento .center.formCadastro .formBox .forminline input#txtCEP {
    width: 60%;
    clear: both;
    float: left;
}
.fechamento .center.formCadastro .formBox .forminline a#naoSeiCep {
    color: #000;
    font-size:11px;
    font-size:0.6875rem;
    float: left;
    margin-left: 2%;
    width: 38%;
    height: 32px;
    line-height: 32px;
}
.fechamento .center.formCadastro .formBox .forminline select {
    border: 1px solid #dcdcdc;
    height: 32px;
    margin-left: 1rem;
}
.fechamento .center.formCadastro .formBox .cadNews {
    line-height: 32px;
    margin-left: 0;
    display: block;
    float: left;
    width: 100%;
    padding: 0 .625rem;
    clear: both;
}
.fechamento .center.formCadastro .formBox .cadNews input {
    float: left;
    margin-top: 9px;
    margin-right: 5px;
}
.fechamento .center.formCadastro .formBox:first-of-type {
    text-align: center;
}
.fechamento .center.formCadastro .formBox:first-of-type .forminline {
    /*text-align: center;*/
    text-align: left;
}
.fechamento .center.formCadastro .formBox:first-of-type .forminline input#cadastroPessoaFisica,
.fechamento .center.formCadastro .formBox:first-of-type .forminline input#cadastroPessoaJuridica {
    float: none;
    margin-left: 0;
}
.fechamento .center.formCadastro .formBox:first-of-type .forminline label[for="cadastroPessoaFisica"],
.fechamento .center.formCadastro .formBox:first-of-type .forminline label[for="cadastroPessoaJuridica"] {
    float: none;
}
.fechamento .center.formCadastro .formBox:nth-child(5) .forminline:nth-child(3)>label:nth-child(1), 
.fechamento .center.formCadastro .formBox:nth-child(5) .forminline:nth-child(3)>input:nth-child(2) {
    width: 75%;
    float: left;
}
.fechamento .center.formCadastro .formBox:nth-child(5) .forminline:nth-child(3)>.erroCadastro {
	width: 23%
}
.fechamento .center.formCadastro .formBox:nth-child(5) .forminline:nth-child(3)>.erroCadastro:first-of-type {
    width: 75%;
    top: 30px;
}

.fechamento .center.formCadastro .formBox:nth-child(5) .forminline:nth-child(3)>label:nth-child(4), 
.fechamento .center.formCadastro .formBox:nth-child(5) .forminline:nth-child(3)>input:nth-child(5) {
    width: 23%;
    float: right;
    margin: -72px 0 0 0;
}
.fechamento .center.formCadastro .formBox:nth-child(5) .forminline:nth-child(3)>#enderecoInfo_Numero {
    width: 23%;
    float: right;
    margin-top: -40px;   
    margin-bottom: 0;
}
.fechamento form[action="/PessoaJuridica"] .center.formCadastro .formBox:nth-child(5) .forminline:nth-child(3)>#enderecoInfo_Numero {
    margin-top: 0;
}
.cadNews label.wauto {
    width: 90%!important;
    display: inline-block;
    text-indent: 0;
}
.cadastro button.bt.btbig.title.acenter {
    font-size:17px;
    font-size:1.0625rem;
    margin-bottom: 1rem;
    margin-top: 1rem;
    width: 100%;
}
.carrinhoVazio {
    padding: 0 3vw 2rem;
    width: 100%;
    display: block;
    float: left;
}
.carrinhoVazio .alert {
    display: block;
    float: left;
    text-align: center;
    font-size: 12px;
    font-size: .75rem;
    margin-top: 1rem;
    width: 100%;
}
.carrinhoVazio .buttons {
    display: block;
    float: left;
    width: 100%;
    text-align: center;
    padding-top: 1rem;
}
.carrinhoVazio a#btnContinuarComprando:hover {
    opacity: 0.9;
}
.minhaconta .sideBar {
    width: 100%;
    display: block;
    float: left;
    padding-bottom: 1rem;
}
.minhaconta>.center {
    padding: 1rem 3vw;
    width: 100%;
}
.minhaconta input.normal, .minhaconta input.wide {
    width: 100%;
    margin-left: 0;   
    font-size:16px;
    font-size:1rem;  
    height: 2.5rem;     
}
.minhaconta input[type="text"], .minhaconta input[type="password"] {
    text-indent: 1rem;
    width: 100%;
    margin-left: 0;
    font-size:16px;
    font-size:1rem;
    height: 2.5rem;
}
.minhaconta .tLined.carrinho {
    margin-bottom: 2rem;
}
.minhaconta .tLined.carrinho tbody tr.headerTabela {
    display: block;
    float: left;
    width: 100%;
    line-height: 2rem;
    height: 2rem;
}
.minhaconta .tLined.carrinho tbody tr.headerTabela th {
    display: block;
    float: left;
    font-size:11px;
    font-size:0.6875rem;
    width: 30%;
}
.minhaconta .tLined.carrinho tbody tr {
    display: block;
    float: left;
    width: 100%;
}
.minhaconta .tLined.carrinho tbody tr td {
    display: block;
    float: left;
    width: 30%;
    font-size:11px;
    font-size:0.6875rem;
    text-align: center;
}
.minhaconta .tLined.carrinho tbody tr td:first-child, .minhaconta .tLined.carrinho tbody tr.headerTabela th:first-child {width: 10% !important;}
.textoInterna {
    margin-bottom: 2rem;
}
.textoInterna p, .mainBarInterna p {
    /*line-height: 1.5;*/
    line-height: 1rem;
    text-align: justify;
    font-size: 14px;
    font-size: 0.875rem;
    font-weight: normal;
    margin-bottom: 0.625rem;
}
.textoInterna p strong, .mainBarInterna p strong {
    /*font-weight: normal;*/ 
}
.textoInterna a, .mainBarInterna a {
    color: #0F2134;
    text-decoration: none;
}

.minhaconta a.paypalBotao {
    width: 250px;
    max-width: 260px;
    color: #fff;
    display: block;
    float: none;
    text-decoration: none;
    margin: 1rem auto 0;
    background: #00bf5c;
    height: 40px;
    line-height: 40px;
    text-transform: uppercase;
    padding: 0px 3px;
    text-align: center;
}
.minhaconta a.paypalBotao:hover {
    text-decoration: none;
    opacity: 0.9;
}

.minhaconta .mainBarInterna input#txtCEP {
    float: left;
    font-size:16px;
    font-size:1rem;
    height: 2.5rem;
}
.minhaconta .mainBarInterna a.helpCep {
    width: 100%;
    font-size: 10px;
    font-size: .625rem;
    float: left;
    height: 40px;
    line-height: 40px;
    text-transform: uppercase;
    text-decoration: underline;
}
.minhaconta .labelCol.novoEndereco {
    display: block;
    float: left;
    width: 100%;
    margin-bottom: 1rem;
}
.minhaconta ul.meus-cartoes {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.minhaconta .mainBarInterna a.adicionarCartao  {
    max-width: 260px;
    margin: 2rem auto;
    font-size: 16px;
    font-size: 1rem;
    text-align: center;
    float: none;
    display: block;
    color: #fff;
    width: 100%;
    text-decoration: none;
}
.textoInterna a:hover, .mainBarInterna a:hover {
    text-decoration: underline;
}
.mainBarInterna a.criar {
    width: 25px;
    height: 25px;
    font-size: 0;
    background-color: #0F2134;
    display: block;
    float: left;
    margin-top: 1rem;
    color: #fff;
    line-height: 25px;
    text-align: center;
    font-weight: normal;
    text-decoration: none;
}
.mainBarInterna a.criar:before {
    content: "\ed31";
    font-family: 'icofont';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    font-size: 16px;
}
.fechamento .headerSearch form#searchFormHeader {
    display: block;
    width: 100%;
    float: left;
}
.fbits-responsive-carrinho-center {
    display: block;
    float: left;
    width: 100%;
    padding: 0 3vw;
    clear: both;
}
.fbits-responsive-carrinho, .fbits-responsive-carrinho-detalhes, .coluna-fechamento div#divProdutos {
    width: 100%;
    clear: both;
    float: left;
    margin-top: 0;
}
.fbits-responsive-carrinho-adicional, .tLined.carrinho tfoot {
    display: block;
    position: relative;
    width: 100%;
    float: left;
    clear: both;
}
.fbits-responsive-carrinho-frete-texto, .fbits-responsive-carrinho-desconto-texto {
    width: 100%;
    float: left;
    text-align: left;
    font-size: 14px;
    font-size: .875rem;
    font-weight: normal;
    text-transform: none;
    display: block;
    height: 25px;
    line-height: 25px;
    color: #000000;
}
.fbits-responsive-login .btRealizarLogin, .loginFechamento .btRealizarLogin, .cadastroFechamento .btCadastrarLogin  {
    width: 100%;
    margin-top: 10px;
    margin-bottom: 5px;
    font-size: 14px;
    font-size: 0.875rem;
    background: #00bf5c;
    height: 37px;
    line-height: 37px;
}
.fbits-responsive-login .btCadastrar {
    width: 100%;
    margin-top: 5px;
    font-size: 14px;
    font-size: 0.875rem;
    height: 37px;
    line-height: 37px;
}
.fbits-responsive-cadastro-box {
    width: 100%;
    margin: auto;
    padding: 0 1rem;
    float: left;
}
.fbits-responsive-cadastro-box .line .title {
    font-size:14px;
    font-size:0.875rem;
    background: none;
    text-transform: uppercase;
    font-weight: bold;
    padding: 0;
}

.fbits-responsive-cadastro-box.etapa2 .subpassos.subpasso2 .line .title {
    font-size: 0;
}
.fbits-responsive-cadastro-box.etapa2 .subpassos.subpasso2 .line h3.title:after {
    content: "Endereço";
    font-size: 14px;
    font-size: .875rem;
}

.fbits-responsive-cadastro-box .fbits-responsive-linha {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.fbits-responsive-cadastro-box .fbits-responsive-linha label {
    display: block;
    float: left;
    width: 100%;
    margin: 0;
    height: 30px;
    line-height: 30px;
}
.fbits-responsive-cadastro-box input[type="text"], .fbits-responsive-cadastro-box input[type="password"] {
    width: 100%;
    border: 1px solid #bebebe;
    color: #696969;
    padding: 0;
    height: 35px;
    vertical-align: middle;
    display: block;
    float: left;
    margin: 0 0 1rem 0;
}
.fbits-responsive-cadastro-box .cadastro-botoes {
    padding-top: 0px;
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.fbits-responsive-cadastro-box .cadastro-botoes button {
    float: left;
    margin-right: 4%;
    width: 48%;
    text-transform: uppercase;
    height: 40px;
}
.fbits-responsive-cadastro-box .cadastro-botoes button.bt.cadastro-proximo {
    margin-right: 0;
    background: #00bf5c;
    color: #ffffff;
}
.fbits-responsive-cadastro-box .fbits-responsive-linha input[type="radio"],
.fbits-responsive-cadastro-box .fbits-responsive-linha[id="cbIsento"] {
    float: left;
}
.fbits-responsive-cadastro-box .fbits-responsive-linha label[for="cadastroPessoaFisica"], 
.fbits-responsive-cadastro-box .fbits-responsive-linha label[for="cadastroPessoaJuridica"],
.fbits-responsive-cadastro-box .fbits-responsive-linha label[for="TipoSexoId-Masc"],
.fbits-responsive-cadastro-box .fbits-responsive-linha label[for="TipoSexoId-Fem"] {
    width: auto;
    padding: 0 1rem;
}
.fbits-responsive-cadastro-box .fbits-responsive-cadastro input#TipoSexoId-Masc, 
.fbits-responsive-cadastro-box .fbits-responsive-cadastro input#TipoSexoId-Fem {  
    margin-right: 0;
}
.fbits-responsive-cadastro-box input#DDDRes, 
.fbits-responsive-cadastro-box input#DDDCom {
    width: 15%;
    float: left;
}
.fbits-responsive-cadastro-box input#TelefoneResidencial, 
.fbits-responsive-cadastro-box input#TelefoneComercial {
    width: 83%;
    margin-left: 2%;
}
.fbits-responsive-cadastro-box .cadNews  {
    margin-left: 0;
    width: 100%;
    text-align: left;
    float: left;
    clear: both;
    line-height: 30px;
    margin-bottom: 1rem;
}
.fbits-responsive-cadastro-box .cadNews input[type="checkbox"] {
    float: left;
    margin-top: 10px;
}
.fbits-responsive-cadastro-box .cadNews label {
    margin: 0;
    padding: 0 1rem;
    display: block;
    line-height: 30px;
}
.fbits-responsive-cadastro-box input#enderecoInfo_CEP {
    width: 100%;
}
.fbits-responsive-cadastro-box .fbits-responsive-linha input#enderecoInfo_Endereco {
    width: 100%;
    margin-right: 0;
}
.fbits-responsive-cadastro-box .fbits-responsive-linha input#enderecoInfo_Numero {
    width: 100%;
}
.opcoesFrete {
    display: block;
    float: left;
    width: 100%;
    clear: both;
    padding: 0;
}
.selectFrete {
    display: inline-block;
    width: 100%;
    height: 125px;
    border: 1px solid #c1c1c1;
    background-color: #ffffff;
    margin: 0 auto 10px;
    text-align: center;
}
.coluna-fechamento #divOpcoesEntrega div#opcoesFreteAgendado .selectFrete {
    height: auto;
    min-height: 125px;
}
.freteheader {
    background-color: #ffffff;
    border-bottom: 1px solid #c1c1c1;
    text-align: left;
    font-size: 11px;
    font-size: 0.6875rem;
    line-height: 19px;
    text-transform: uppercase;
    padding: 10px 0 10px 15px;  
    margin-bottom: 1rem;
}
.freteheader-selected {
    background-color: #e9d237!important;
    color: #333333;
}
.freteheader input.selectDados {
    float: left;
    margin-top: 2px;
}
.freteheader label {
    top: 0px !important;
    cursor: pointer; 
    display: inline-block; 
    margin-left: 10px; 
    width: 80%;
}

.freteheader label strong {
  font-weight: normal;
}
.coluna-fechamento.inicial .opcoesFrete .freteheader label {
    height: 19px;
    color: #000000;
}
.coluna-fechamento.inicial .opcoesFrete .freteheader-selected label {
    color: #333333;
}
.descricaoFrete {
    text-align: left;
    color: #000000;
}
.imgfrete {
    float: left;
    margin-left: 14px;
    margin-top: 3px;
    margin-right: 15px;
    width: 89px;
    height: 49px;
    /*background: url(../i/frete-icone.png) 0 0 no-repeat;*/
    background: url(../i/frete-icone.svg) 0 0 no-repeat;
    background-size: contain;
}
.imgfrete img {
    display: none;
    
}
.imgfrete:before {
    font-family: 'icofont';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    content: "\ebf5";
    color: #a3bd31;
    font-size: 40px;
    display: none;
}
.valorfretecliente {
    margin-top: 10px;
    margin-bottom: 8px;
    font-size: 14px;
    font-size: .875rem;
}
.valorfretecliente strong {
    font-weight: normal;
    font-size: 14px;
    font-size: 0.875rem;
    color: #000000;
    font-weight: 700;
}
.descricaoFrete span {
    display: inline-block;
    float: left;
    margin-right: 3px;
    font-size: 11px;
    font-size: 0.6875rem;
    line-height: 13px;
    text-transform: uppercase;
}
.coluna-fechamento #divOpcoesEntrega div#opcoesFreteAgendado span {
    line-height: 40px;
}
input.selectData  {
    display: inline-block;
    font-size: 11px;
    font-size: .6875rem;
    width: 120px;
}
.prazofrete {
  display: block !important; 
  line-height: 14px;   
}
.coluna-fechamento .pagamento {
    position: relative;
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.credTitle {
    font-size:13px;
    font-size:0.8125rem;
}
.credUtilizar {
    font-size:13px;
    font-size:0.8125rem;
    padding-top: 8px;
}
.credUtilizar span {
    font-weight: bold;
}
.credUtilizar input {
    float: left;
    margin-top: 5px;
}
.credUtilizar label.pointer {
    float: left;
    margin: 0;
    padding: 0 1rem;
}
.credUtilizar p {
    display: block;
    width: 100%;
    float: left;
    margin-bottom: 1rem;
}
.cadastroFechamento {
    width: 100%;
    text-align: left;
    float: left;
    border: solid 1px #bebebe;
    padding: 18px;
    margin-bottom: 1rem;
}
.sideBarLoginFech {
    width: 100%;    
    float: left;
    margin-top: 2rem;
    text-align: left;
    border: solid 1px #bebebe;
    padding: 18px;
    margin-bottom: 1rem;
}
.cadastroFechamento .subtitle, .cadastroFechamento .btCadastrarLogin, .txtFpgtos {
    float: none;
    display: block;
    width: 100%;
    max-width: 260px;
    margin: 0 auto;
    clear: both;
    text-align: center;
}
.txtFpgtos, .cadastroFechamento .subtitle {
    font-size: 14px;
    font-size: 0.875rem;
    margin-bottom: 1rem;
    font-weight: normal;
}

.txtFpgtos {
    max-width: 340px;
    color: #303030;
    font-weight: bold;
    line-height: 20px;
    font-size: 0;
}
.txtFpgtos:before {
	content: "Clique na imagem para selecionar:";
	font-size: 16px;
	font-size: 1rem;
	color: #6d6d5f;
}
#divDoisCartoes > p {
    display: none;
}

.txtFpgtos + .forminline {
    background: #fff;
    padding: 12px 0;
    width: 100%;
    clear: both;
    float: left;
}
.txtFpgtos+.forminline span.tipo-forma-pagamento {
    float: left;
    width: 33.333%;
    display: -webkit-flex;
    -webkit-align-items: center;
    display: flex;
    align-items: center;
    text-align: center;
    margin-bottom: 10px;
}
#divFormasPagamento .forminline input[type="radio"] {
    margin: 0 10px 0 0;
    position: relative;
    display: inline-block;
}
.coluna-fechamento .html-personalizado {
    position: relative;
    top: 0;
    right: 0;
    width: 100%;
    line-height: 18px;
}
.coluna-fechamento .html-personalizado > .boleto {
    display: block;
    float: left;
    width: 100%;
}
input#DocumentoCartaoCredito-0 { 
    width: 100%;
}
.coluna-fechamento.central #divFormasPagamento span.tipo-forma-pagamento label[for^="rbnFormaPagamento"], .coluna-fechamento.central #divFormasPagamento span.tipo-forma-pagamento label[for="rbnDoisCartoes"] {
    width: auto!important;
    line-height: inherit;
    height: auto;
    display: inline-block;
    top: inherit;
}
.fbits-cartoes-identificaveis .codSeguranca {
    display: none;  
}
.fbits-cartoes-identificaveis {
    clear: both;   
    float: left;
    width: 100%;
    padding-top: 1rem;
}
.coluna-fechamento.central #divFormasPagamento .fbits-cartoes-identificaveis label, .coluna-fechamento.central #divFormasPagamento .parcelas .fbits-cartoes-identificaveis label {
    margin-bottom: -5px;
}
.coluna-fechamento.central #divFormasPagamento .fbits-cartoes-identificaveis label[for^="NomeCartaoCredito"],
.fbits-cartoes-identificaveis div#codigoSeguranca label {
    white-space: nowrap;
}
.html-personalizado span {
    font-size: 16px!important;
    font-size: 1rem!important;
    line-height: 20px;
}
.fbits-bandeiras-disponiveis {
    text-align: center;
    display: block;
    float: left;
    width: 100%;
}
.mainBarInterna .fbits-bandeiras-disponiveis {
    width: 100%;
    margin-left: 0;
    padding-bottom: 1rem;
}
.coluna-fechamento.central #divFormasPagamento .cartoesCredito .forminline input.input.normal {
    width: 100%;
    height: 50px;
}
.coluna-fechamento.central .forminline input[name^="CodigoSeguranca"] {   
    width: 100%!important;
}
.fbits-cartoes-identificaveis .fbits-template-parcelamento-1 {
    width: 50%;
    float: right;
}
.fbits-cartoes-identificaveis .fbits-template-parcelamento-1 .parcelas.fbits-template-parcelamento-1 {
    width: 100%;
}
.mainBarInterna div#fbits-cartao-demo {
    width: 100%;
    margin-left: 0;
}
.meusCartoes a.bt.gray {
    width: 100%;
    max-width: 260px;
    font-size: 14px;
    font-size: .875rem;
    font-weight: 700;
    margin: 1rem auto;
    float: none;
    color: #000000;
    background: #bebebe;
    display: block;
    clear: both;
    text-transform: uppercase;
}
.meusCartoes input.bt {
    padding: 0 1rem;
    width: 260px;
    margin-top: 0;
    font-size:16px;
    font-size:1rem;
    margin-left: 20px;
    float: none;   
}
.minhaconta .tLined.carrinho tr.cartTotal {
    width: 100%;
    border: 0 !important; 
}
.fechamento.fbits-confirmacaoPedido .content .passos+.center {
    width: 100%;
    display: block;
    float: left;
    padding: 0 3vw;
}
.pedidoNumber.half.left {
    border: 1px solid #ddd;
    width: 100%;
    margin-top: 20px;
    min-height: 281px;
    padding-bottom: 25px;
    display: block;
    float: left;
    clear: both;
    border-radius: 0;
}
.half.right.pedidoStatus {
    width: 100%;
    border: 1px solid #ddd;
    margin-top: 20px;
    padding-bottom: 20px;
    min-height: 280px;
    clear: both;
    float: left;
    border-radius: 0;
}
.half.right.pedidoStatus + b {
    display: block;
    width: 100%;
    float: left;
    clear: both;
    margin-top: 1rem;
}
.sacNavHeader.fbits-telefones {
    display: none;
}
.fechamento.fbits-fechamento .content, .login .center.acenter {
    display: block;
    float: left;
    width: 100%;
    padding: 0 3vw;
}
.center.integracao-facebook {
    margin-bottom: 2rem;
    padding: 0 3vw;
}
#btnEscolhaLoginFacebook {
    padding: 0 50px;
    margin-top: 1rem;
}
.fechamento .center.pedidoColunas {
    display: block;
    float: left;
    width: 100%;
    margin-bottom: 2rem;
}
.prazofrete br {
    display: none;
}
img[alt="Código de Segurança"] {
    width: 140px;
    margin-left: 5px;
}
.fbits-confirmacaoPedido .box-head {
    background: #fff;
    line-height: 38px;
    color: #6d6d5f;
    text-transform: uppercase;
    font-size: 13px;
    font-size: .8125rem;
    font-weight: normal;
    text-indent: 0;
    text-align: center;
    border-radius: 0;
}
.fbits-confirmacaoPedido .box-num {
    color: #6d6d5f;
    font-size: 30px;
    font-size: 1.875rem;
    border: 1px solid #ddd;
    margin-left: 30px;
    padding: 24px;
    margin-top: 25px;
    margin-right: 30px;
    padding-bottom: 5px;
    margin-bottom: 22px;
    text-align: center;
    border-radius: 4px;
}
.fbits-confirmacaoPedido .box-email {
    margin-left: 30px;
    border: 1px solid #ccc;
    margin-right: 30px;
    padding: 18px;
    background: #f6f6f6;
    text-align: center;
    font-size:13px;
    font-size:0.8125rem;
    border-radius: 4px;
}
.entrega .box .title.medium {
  padding-bottom: 10px;
}
.coluna-fechamento .box {
    padding: 0 11px;
}
.fbits-confirmacao-acoes {
  display: block;
  float: left;
  width: 100%;
  padding-top: 30px;
  padding-bottom: 20px;
}
.fbits-confirmacao-acoes a.bt.btfinalizar {
    display: block;
    float: right;
}
.coluna-fechamento.central #divFormasPagamento .txtPagamento .parcelas li.avista label {
    width: auto;
    line-height: 1rem;
}

.coluna-fechamento.central #divFormasPagamento .txtPagamento .parcelas li.avista label.green,
#divFormasPagamento .deposito p.titDeposito, #divFormasPagamento .deposito p.valueDeposito {
    display: none;
}
.coluna-fechamento.central #divFormasPagamento .txtPagamento .parcelas li.avista {
    margin-bottom: 1rem;
    line-height: 1rem;
}

#enderecosUsuario .alterarEndereco, ul.meusEnderecos a.alterarEndereco {
    font-size: 0;
    text-decoration: none;
    display: inline-block;
    background: url('../i/SVG-diversos/icone-alterar-endereco.svg') no-repeat;
    background-size: 20px;
    width: 20px;
    height: 26px;
    position: absolute;
    right: 0;
    margin-right: 0;
    margin-top: 0;
    top: 10px;
    opacity: 1;
}
#enderecosUsuario .alterarEndereco:hover {
    opacity: 0.8;
}
.center.listadesejos {
    display: block;
    float: left;
    width: 100%;
    padding: 0 3vw 1rem;
    overflow: hidden;
}
.center.listadesejos .bread {
    padding: 0;
}


/*Assinatura*/
.fechamento.fbits-assinatura .content.center {
    padding: 20px 3vw;
    max-width: 1280px;
    width: 100%;
    margin: auto;
    text-align: center;
    display: block;
    float: left;
}
.fechamento .produto-assinatura {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.fechamento .produto-assinatura div#produto, .fechamento div#produto {
    display: block;
    float: left;
    width: 100%;
    clear: both;
    text-align: center;
    margin-bottom: 1rem;
}
.fechamento .produto-assinatura div#produto h2, .fechamento div#produto h2 {
    text-transform: uppercase;
    color: #0F2134;
    padding: 0 20px;
    text-align: center;
    font-size: 16px;
    font-size: 1rem;
}
.fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-foto img {
    text-align: center;
    display: block;
    margin: auto;
}
.fechamento .produto-assinatura div[id^="produto-item"], .fechamento div#produto div[id^="produto-item"] {
    display: block;
    float: left;
    width: 100%;
}
.fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-foto, 
.fechamento div#produto div[id^="produto-item"] .produto-assinatura-foto {
    display: block;
    float: none;
    margin-right: 0;
}
.fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info,
.fechamento div#produto div[id^="produto-item"] .produto-assinatura-info {
    display: block;
    float: left;
    width: 100%;
}
.fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info h1.prodTitle,
.fechamento div#produto div[id^="produto-item"] .produto-assinatura-info h1.prodTitle {
    text-align: center;
}
.fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info span.red,
.fechamento div#produto div[id^="produto-item"] .produto-assinatura-info span.red {
    display: block;
    float: left;
    width: 100%;
    line-height: 20px;
}
.fechamento.fbits-assinatura div#produto * {
    text-align: left;
    font-size: 12px;
    font-size: 0.75rem;
    line-height: 20px;
}
.fechamento.fbits-assinatura .fbits-div-precos-assinatura {
    clear: both;
    margin-bottom: 1em;
    font-size: 12px;
    font-size: 0.75rem;
    line-height: 20px;
}
.fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info div, .fechamento div#produto div[id^="produto-item"] .produto-assinatura-info div  {
    display: block;
    clear: both;
    float: left;
    width: 100%;
    font-size: 12px;
    font-size: 0.75rem;
    line-height: 20px;
}
.fechamento .produto-assinatura .fbits-responsive-container-cadastro,
.fechamento div#produto .fbits-responsive-container-cadastro {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.fechamento .produto-assinatura .fbits-responsive-container-cadastro .painel-cadastro,
.fechamento div#produto .fbits-responsive-container-cadastro .painel-cadastro {
    display: block;
    width: 100%;
    margin: 1rem auto 0;
    float: none;
}
.fechamento .produto-assinatura .fbits-responsive-container-cadastro .painel-cadastro label,
.fechamento div#produto .fbits-responsive-container-cadastro .painel-cadastro label {
    display: none;
}
.fechamento .produto-assinatura #left, .fechamento .produto-assinatura #right, .fechamento div#produto #left, .fechamento div#produto #right {
    display: block;
    float: left;
    width: 100%;
    margin-top: 1rem;
    font-size: 12px;
    font-size: 0.75rem;
    clear: both;
    line-height: 20px;
}
.fechamento.fbits-assinatura h2.titleColumn {
    float: left;
    display: block;
    width: 100%;
    line-height: 30px;
    font-size: 16px;
    font-size: 1rem;
}
.fechamento.fbits-assinatura .coluna-fechamento.inicial #divFormNovoEndereco input.input {
    width: 100%;
}
.fechamento.fbits-assinatura .btCadastroEndereco.right {
    padding-top: 1rem;
    padding-bottom: 1rem;
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.fechamento.fbits-assinatura .btCadastroEndereco.right .bt {
    width: 49%;
    float: left;
}
.fechamento.fbits-assinatura .btCadastroEndereco.right .bt.btCancelarNovoCad {
    margin-right: 2%;
}
.fechamento.fbits-assinatura .btCadastroEndereco.right .bt.btNovoEndereco {
    width: 100%;   
}
.fechamento.fbits-assinatura div#lista-cartoes {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.fechamento.fbits-assinatura div#lista-cartoes ul#meus-cartoes,
.fechamento.fbits-assinatura div#enderero.fbits-assinatura-enderecos div#lista-enderecos ul {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.fechamento.fbits-assinatura div#lista-cartoes ul#meus-cartoes li.item label,
.fechamento.fbits-assinatura div#enderero.fbits-assinatura-enderecos div#lista-enderecos ul li,
.fechamento.fbits-assinatura div#enderero.fbits-assinatura-enderecos div#lista-enderecos ul li label {
    display: block;
    width: 100%;
    height: auto;
    text-align: left;
}
.fechamento.fbits-assinatura div#enderero.fbits-assinatura-enderecos div#lista-enderecos ul li label {
    float: right;
    margin: 0;
    line-height: 1rem;
    padding: 0;
    width: 92%;
}
.fechamento.fbits-assinatura .meus-cartoes .item a[data-ajax-update="#formulario-cartao-credito"] {    
    top: 1rem;   
}
.fechamento.fbits-assinatura div#lista-cartoes ul#meus-cartoes li.item label[for^="rbCartaoCredito"] {
    float: right;
    width: 92%;
    padding: 0;
    clear: none;
}
.fechamento.fbits-assinatura input[type="radio"] {
    float: left;
    position: relative;
    top: 5px;
}
.fechamento.fbits-assinatura .meusEnderecos input[type="radio"] {
    top: 0;
    position: relative;
    margin: 0;
}
.fechamento.fbits-assinatura div#lista-cartoes ul#meus-cartoes li.item label div {
    display: block;
    float: left;
    clear: both;
}
.fechamento.fbits-assinatura .box-cartao-assinatura .forminline input.input {
    width: 100%;
    float: left;
    margin-left: 0 !important;
    height: 2.5rem;
}
.fechamento.fbits-assinatura a.helpCep {
    padding-top: 1rem;
    display: block;
    float: left;
    width: 100%;
    color: #000;
}
.fechamento.fbits-assinatura .fbits-responsive-cadastro-box .fbits-responsive-linha #naoSeiCep {    
    height: auto;    
    padding-top: 0;
}
.fechamento.fbits-assinatura .fbits-enderecoCobranca-dropdown {
    max-width: 100%;
    width: 100%;
    border: 1px solid #ccc;
    margin: 1rem 0;
}
.fechamento.fbits-assinatura .center.confirmaAssinatura input.fechaAssinatura {
    width: 100%;
    margin: 1rem 0;
}
.fechamento.fbits-assinatura .fbits-responsive-cadastro-box input#enderecoInfo_CEP{
     width: 100%;
}
.fechamento.fbits-assinatura input#cadastroPessoaFisica, 
.fechamento.fbits-assinatura input#cadastroPessoaJuridica, 
.fechamento.fbits-assinatura input#TipoSexoId-Masc, 
.fechamento.fbits-assinatura input#TipoSexoId-Fem {
    margin-right: 0px;
    margin-left: 5px;
}
.fechamento.fbits-assinatura .fbits-responsive-cadastro-box .fbits-responsive-linha label[for="cadastroPessoaFisica"],
.fechamento.fbits-assinatura .fbits-responsive-cadastro-box .fbits-responsive-linha label[for="cadastroPessoaJuridica"] {
    padding: 0 .2rem;
    font-size: 12px;
    font-size: 0.75rem;
}
.fechamento.fbits-assinatura .box-cartao-assinatura input.cancelarPadraoAssinatura,
.fechamento.fbits-assinatura .box-cartao-assinatura input.bt.btMedium {
    padding: 0 1rem;
}
.fechamento.fbits-assinatura label[for="input-lembrarsenha"] {
    display: none;
}
#lembraSenha input[type="text"] {
	width: 80%;
}
#lembraSenha input[type="submit"] {
	width: 20%;
	height: 35px;
	line-height: 35px;
}
div#enderero.fbits-assinatura-enderecos {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
h2.titleColumn.fbits-assinatura-title-enderecos {
    text-align: left;
    font-size: 18px;
    font-size: 1.125rem;
    margin: 0 0 1rem;
}
div#enderero.fbits-assinatura-enderecos div#lista-enderecos {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    padding: 1rem 0;
}
.fechamento.fbits-assinatura ul#meusEnderecos {
    max-height: inherit;
    overflow-y: inherit;
    padding: 0;
}
.fechamento.fbits-assinatura div#enderero.fbits-assinatura-enderecos div#lista-enderecos ul li {
    float: left;
    position: relative;
    padding-right: 25px;
}
.fechamento .produto-assinatura #right {   
    float: right;   
    clear: none;   
}
.fechamento .produto-assinatura div#left #enderero + br.clear {
    display: none;
}
.fechamento .produto-assinatura .box-cartao-assinatura h2.titleColumn {
    clear: both;
    text-align: center;
    font-size: 18px;
    font-size: 1.125rem;
    margin: 0 0 1rem;
    padding-top: 1rem;
}
.fechamento .produto-assinatura div#left div#lista-cartoes {
    display: block;
    clear: both;   
    float: left;
    width: 100%;
}
.fechamento.fbits-assinatura ul#meus-cartoes {
    max-height: inherit;
    overflow-y: inherit;
    padding-right: 0;
}
.fechamento .produto-assinatura div#right .ou {
    display: none;
}
.fechamento .produto-assinatura div#right .box-cartao-assinatura input.bt.btMedium {
    width: 48%;
    float: right;
}
.fechamento .produto-assinatura div#right .box-cartao-assinatura input#btn-cancelar-cartao-credito {
  
    width: 48%;
    float: left;
}
.fechamento .produto-assinatura .center.confirmaAssinatura {
    display: block;
    float: left;
    width: 100%;
    text-align: center;
    padding: 3rem 0;
}
.fechamento .produto-assinatura .center.confirmaAssinatura input.fechaAssinatura {
    height: 45px;
    padding: 0 1rem;
    background: #0F2134;
    color: #fff;
    font-weight: normal;
}
.fechamento .produto-assinatura .fbits-responsive-tipo-cadastro.subpassos.subpasso1 {
    display: block;
    float: left;
    width: 100%;
    clear: both;
    padding-bottom: 1rem;
}





.fbits-responsive-cadastro-box .painel-cadastro-pessoa.fisica, .fbits-responsive-cadastro-box .painel-cadastro-pessoa.juridica {
    padding-top: 20px;
    clear: both;
}
.fbits-carrinho .fbits-banner-topo {
    width: 100%;
    display: block;
    float: left;
}
.fbits-carrinho .fbits-banner-topo a {
    display: block;
    float: left;
    width: 100%;
}
.fbits-carrinho .fbits-banner-topo a img {
    width: 100%;
}

.fbits-carrinho .fbits-botoes-carrinho-top .fbits-botao-continuarComprando {
    display: none;
}

.fbits-responsive-carrinho-item-descricao .spnAtributos {
    font-size:11px;
    font-size:0.6875rem;
    display: block;
    width: 100%;
    clear: both;
    float: left;
}
.fbits-responsive-carrinho-item-descricao span.fbits-responsive-carrinho-item-atributos, .coluna-fechamento.final .spnAtributos {
    display: block;
    white-space: normal;
    width: auto;
    font-size: 14px;
    font-size: .875rem;
    clear: both;
    text-align: left;
    display: none;
}
.fbits-responsive-carrinho-item-descricao span.prazo-entrega-item.primeiro,
.fbits-responsive-carrinho-item-descricao span.prazo-entrega-item.segundo {
    display: block;
    clear: both;
    float: left;
    width: 100%;
    margin-top: 1rem;
    margin-bottom: 0;
}
.fbits-responsive-carrinho-item-descricao a.botao-add-embalagem {
    display: block;
    float: left;
    width: 100%;
    padding-top: 1rem;
    line-height: 25px;    
}
.fbits-responsive-carrinho-item-descricao a.botao-add-embalagem:before {    
    content: "??";
    /*content: "\f010";
    font-family: 'icofont';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;*/
    color: #a3bd31;
    font-size: 20px;
}
.fbits-responsive-carrinho-item-descricao a.botao-add-embalagem span.texto-add-embalagem {
    display: inline-block;
    font-size: 12px;
    font-size: 0.75rem;
}
.fbits-responsive-carrinho-item-descricao a.botao-add-embalagem img {display: none;}
span.fbits-carrinho-item-precoDe-total {
    display: none;
    text-decoration: line-through;
    color: #999;
    font-weight: normal;
    padding: 0 0.5rem;
}
span.fbits-carrinho-item-precoDe-unitario {
    display: block;
    text-decoration: line-through;
    color: #999;
    padding: 0 0.5rem;
    display: none;
}
.colunaProduto .prazo-entrega, .prazo-entrega-item, .coluna-listacompra .prazo-entrega {    
    white-space: normal;
    background: #eef8fe;
    display: block;
    clear: both;
    float: left;
    width: 100%;
}
.sidebarLogin .cart .cart-itens .cartProd:last-of-type {
    margin-bottom: 0;
}
#fancybox-content {   
    background: #fff; 
}
#fancybox-content .detalhe-produto-itens {
    padding: 0;
}
.optionAtributos li a {
    display: inline-block;
    text-decoration: none;
}
.coluna-fechamento #divOpcoesEntrega .boxes.frete {
    clear: both;
    float: left;
    width: 100%;
    padding-top: 1rem;
}
div.ordenar.prazofreteAgendado {
    padding-top: 0.5rem;
}
div.ordenar.prazofreteAgendado br {
    display: none;
}
div.ordenar.prazofreteAgendado input {
    margin-left: 1rem;
    margin-right: .3rem;
}
div.ordenar.prazofreteAgendado input:first-of-type {
    margin-left: 0;
}
.coluna-fechamento #divOpcoesEntrega div#opcoesFreteAgendado div.ordenar.prazofreteAgendado {
    padding: 0 14px;
    text-align: center;
    font-size: 12px;
    font-size: 0.75rem;
    display: -webkit-flex;
    -webkit-align-items: center;
    display: flex;
    align-items: center;
    line-height: 25px;
    margin: 1rem 0;
    width: 100% !important;
}
.coluna-fechamento #divOpcoesEntrega .boxes.frete .fbits-opcao-frete {
    display: block;
    float: left;
    width: 100%;
}
.coluna-fechamento div#fbits-pickupstore-lojas {
    width: 100%;
    padding: 1rem 0;
}
.coluna-fechamento.inicial .opcoesFrete label[for="pickupstore-selecionar"] {
    display: block;
    float: left;
    width: 55%;
    text-align: right;
    padding-right: 10px;
    margin: 0;
    height: 37px;
    line-height: 37px;
    margin-bottom: .5rem;
    font-size: 11px;
    font-size: .6875rem;   
    font-weight: normal;
    top: inherit;
}
.coluna-fechamento.inicial .opcoesFrete select#pickupstore-selecionar {
    height: 37px;
    display: block;
    float: left;
    width: 45%;
    margin-bottom: .5rem;
    background: #fff;
}
select#pickupstore-selecionar {
    border: solid 1px #bebebe;
}
.coluna-fechamento .fbits-pickupstore-loja {
    width: 100%;
    float: left;
    margin-right: 0;
    display: block;
    clear: both;
    overflow: visible;
    padding-bottom: 0.5rem;
}
.coluna-fechamento .fbits-pickupstore-loja label[for^="lojaId"] {
    display: block;
    float: left;
    width: 100%;
    height: auto!important;
    font-size: 11px;
    font-size: .6875rem;
    margin-right: 0;
}
span.fbits-pickupstore-loja-nome {
    font-weight: bold;
    display: block;
    color: #6d6d5f;
    float: left;
    width: auto;
    line-height: 20px;
}
span.fbits-pickupstore-loja-prazoEntrega {
    color: #982222;
    float: left;
    font-weight: bold;
    margin-right: 5px;
    display: block;
    width: 100%;
    line-height: 16px;
}
span.fbits-pickupstore-loja-cidade  {
    display: block;
    margin-right: 5px;
    clear: both;
    float: left;
    width: 100%;
    line-height: 16px;
}
span.fbits-pickupstore-loja-logradouro {
    display: block;
    clear: both;
    float: left;
    line-height: 16px;
}
span.fbits-pickupstore-loja-cep {
    display: block;
    float: left;
    line-height: 16px;
    width: 100%;
}
span.fbits-pickupstore-loja-cep:before {    
    margin-left: 0;    
}
span.fbits-pickupstore-loja-textoComplementar {
    display: block;
    float: left;
    width: 100%;
    clear: both;
    line-height: 16px;
}
span.fbits-pickupstore-loja-telefone {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    line-height: 16px;
}
span.fbits-pickupstore-loja-email {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    line-height: 16px;
}
.coluna-fechamento.final .tLined.carrinho td .cartNome {
    min-height: auto;
}
div#observacoesAdicionais {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    margin-bottom: 1rem;
}  
div#observacoesAdicionais h3.titleFrete {
    margin-bottom: 0.5rem;
    font-size: 12px;
    font-size: 0.75rem;
    text-transform: none;
    font-weight: 600;
    margin-left: 5px;
}
div#observacoesAdicionais h3.titleFrete:before {
    display: none;
}
div#observacoesAdicionais textarea#observacoesAdicionais {
    margin: 0!important;
    display: block!important;
    float: left!important;
    width: 100%!important;
    clear: both!important;
    padding: 1rem;
    height: 66px !important;
    border: solid 1px #dadada;
}
.half.right.pedidoStatus+b .boletoFechamento {
    display: none;   
}
.colunaProduto div[id^="view-item-quantidade"]+div {
    display: block;
    clear: both;
    float: left;
    width: 100%;
}
.colunaProduto div[id^="view-item-quantidade"]+div br {
    display: none;
}
.colunaProduto div[id^="view-item-quantidade"]+div span {
    display: block;
    float: left;
    line-height: 1.5rem;
    padding-right: 0.5rem;
}
.coluna-fechamento.final table td.fbits-td-retiradaLoja-texto {
    text-align: left;
}
.fbits-spot-preco-boleto {
    color: #000;
    font-size:23px;
    font-size:1.4375rem;
    line-height: 1.6rem;
    overflow: hidden;
    padding: 0;
    font-weight: bold;
}
.fbits-spot-preco-boleto span.fbits-boleto-ou {
    font-size:13px;
    font-size:0.8125rem;
    font-weight: normal;
}
.fbits-spot-preco-boleto span.fbits-boleto-no-boleto {
    font-size:13px;
    font-size:0.8125rem;
    font-weight: normal;
}
form#formBuscaCEP {
    display: block;
    float: left;
    width: 100%;
}
form#formBuscaCEP h3.title.small {
    text-align: center;
    text-transform: uppercase;
    line-height: 2rem;
    font-weight: normal;
}
form#formBuscaCEP div#contentBuscarCep {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
form#formBuscaCEP .labelCol {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
form#formBuscaCEP input.bt.btBuscarCep {
    display: block;
    float: none;
    margin: 1rem auto;
    clear: both;
    height: 30px;
    line-height: 33px;
    padding: 0 1rem;
}
form#formBuscaCEP .labelCol .forminline.left {
    display: block;
    float: left !important;
    width: 100%;
    clear: both;
    margin-bottom: 1rem;
}
form#formBuscaCEP .labelCol .forminline.left label {
    display: block;
    float: left;
    height: 30px;
    line-height: 30px;
    width: 25%;
    font-size:12px;
    font-size:0.75rem;
}
form#formBuscaCEP .labelCol .forminline.left select {
    display: block;
    float: left;
    width: 20%;
    height: 30px;
    line-height: 30px;
    border: 1px solid #ccc;
    font-size:12px;
    font-size:0.75rem;
}
form#formBuscaCEP .labelCol .forminline.left input {
    display: block;
    float: left;
    margin-left: 5%;
    width: 50%;
    height: 30px;
}
form#formBuscaCEP .labelCol .forminline.left input#Cidade {
    margin-left: 0;
    width: 40%;
}
form#formBuscaCEP .labelCol .forminline.left label[for="UF"] {
    width: 15%;
    padding: 0 1%;
    text-align: center;
}
form#formBuscaCEP div#contentBuscarCep div#ajaxupdate-CepBuscadoDIV {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
form#formBuscaCEP div#contentBuscarCep div#ajaxupdate-CepBuscadoDIV table.tLined {
    display: block;
    float: left;
    width: 100% !important;
    clear: both;
}
form#formBuscaCEP div#contentBuscarCep div#ajaxupdate-CepBuscadoDIV table.tLined tbody {
    display: block;
    float: left;
    width: 100%;
}
form#formBuscaCEP div#contentBuscarCep div#ajaxupdate-CepBuscadoDIV table.tLined tbody tr {
    display: block;
    float: left;
    width: 100%;
}
form#formBuscaCEP div#contentBuscarCep div#ajaxupdate-CepBuscadoDIV table.tLined th {
    font-size:11px;
    font-size:0.6875rem;
    text-transform: uppercase;
    padding-bottom: 1rem;
    display: block;
    float: left;
    width: 100%;
}
form#formBuscaCEP div#contentBuscarCep div#ajaxupdate-CepBuscadoDIV table.tLined tr td {
    font-size:12px;
    font-size:0.75rem;
    font-weight: normal;
    width: 33.333%;
    display: block;
    float: left;
    text-align: center;
}
form#formBuscaCEP div#contentBuscarCep div#ajaxupdate-CepBuscadoDIV table.tLined tr.lista td b,
form#formBuscaCEP div#contentBuscarCep div#ajaxupdate-CepBuscadoDIV table.tLined tr.lista td {
    font-weight: normal;
    font-size:10px;
    font-size:0.625rem;
    line-height: 2rem;
}
#fancybox-wrap {   
    padding: 0 !important;    
}
#fancybox-content { 
    width: 100% !important;
    height: auto !important;
}
.cart-sem-itens.fadeIn {
    display: none;
}
.drill-down.fadeIn {
    display: none;
}
a#btnVerMais {
    display: block;
    background: #0F2134;
    clear: both;
    height: 2rem;
    width: auto;
    margin: 0 auto;
    color: #fff;
    text-align: center;
    line-height: 2rem;
    text-decoration: none;
    text-transform: uppercase;
    font-size: 12px;
    font-size: 0.75rem;
}
.fbits-confirmacaoPedido .title.fbits-numero-pedido  {
    font-size: 20px;
    font-size: 1.25rem;
    text-align: center;
    font-weight: normal;
}
.div-busca-desktop {display: none;}
#fbits-produto-matriz-atributos img {
    border: 0;    
    max-width: 100%;
}

#fbits-produto-matriz-atributos tr {
    height: auto;
    float: left;
    width: 100%;
    padding: 0.5rem 0;
    display: -webkit-flex;
    -webkit-align-items: center;
    display: flex;
    align-items: center;
}
#fbits-produto-matriz-atributos tr th {
    display: block;
    float: left;
    width: 65%;
    max-width: inherit;
    font-size: 14px;
    font-size: .875rem;
}
.matriz-atributos-quantidade {
    display: block;
    width: 30%;
    max-width: 65px;
    height: 34px;
    float: left;
}
table.produto-matriz-atributos td input[type="text"]  {
    border: 1px solid #acacac;
    border-radius: 0;
    box-shadow: none;
    height: 34px;
    line-height: 34px;
    padding-left: 0;
    vertical-align: middle;
    width: 50px;
    font-size: 14px;
    font-size: .875rem;
    display: inline-block;
    margin: auto;
    float: left;
    text-indent: 0;
    text-align: center;
}
.matriz-grupo-alterar-quantidade {
    display: inline-block;
    margin-left: 0;
    position: inherit;
    top: inherit;
    float: left;
    height: 34px;
    border: 1px solid #acacac;
    border-left: 0;
    width: 15px;
}
.matriz-grupo-alterar-quantidade>a {
    display: block;
    float: right;
    clear: both;
    height: 50%;
    width: 100%;
}
.matriz-grupo-alterar-quantidade span, .cartItem .fbits-campo-quantidade a {
    background: #eee;
    border-bottom: 1px solid #ccc;
    border-left: 0;
    color: #222;
    font-family: 'avenir-lt-55-roman', Arial;
    font-size: 14px;
    font-weight: normal;
    height: 100%;
    line-height: 17px;
    text-align: center;
    width: 100%;
    float: left;
    display: block;
}
.geral-homologacao-teste {
    display: block;
    float: left;
    clear: both;
    padding: 1rem 3vw;
    text-align: center;
    font-size: 12px;
    font-size: .75rem;
    line-height: 16px;
    width: 100%;
}
.conteudo-geral-homologacao-teste {
    border: 2px solid #db2929;
    padding: 0.5rem;
}
.geral-homologacao-teste span {
    font-weight: bold;
    color: #0F2134;
}
.fbits-responsive-carrinho-container {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.modalEmbalagem {
    display: block;
    float: left;
    width: 100%;
}
.title-embalagem {    
    height: 40px;
    line-height: 40px;
    font-weight: normal;
    color: #6d6d5f;    
    font-size: 14px;
    font-size: 0.875rem;
    text-transform: uppercase;
}
span.icone-embalagem {
    background: transparent;
    width: auto;
    height: 40px;
    display: block;
    float: left;
    margin-right: 5px;
    font-family: 'icofont';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    color: #a3bd31;
    font-size: 20px;
}
span.icone-embalagem:before {
    content: "\f010";
}
.conteudo-modal-embalagem {
    display: block;
    position: relative;
    clear: both;
    float: left;
    width: 100%;
}
table.tabela-add-embalagem {
    border: 1px solid #d4d4d4;
    display: block;
    float: left;
    width: 100%;
}
table.tabela-add-embalagem tbody {
    display: block;
    float: left;
    width: 100%;
}
table.tabela-add-embalagem tbody tr {
    display: block;
    float: left;
    width: 100%;
}
table.tabela-add-embalagem tr td {
    border-bottom: 1px solid #d4d4d4;
    width: 100%;
    display: block;
    float: left;
    clear: both;
    padding: 0.5rem;
    text-align: center;
}
table.tabela-add-embalagem tbody tr:last-child td {
    border-bottom: 0;
}
table.tabela-add-embalagem tr td img.imagem-embalagem {
    display: block;
    float: none;
    padding: 10px;
    margin: auto;
}
table.tabela-add-embalagem tr td span.embNome {
    color: #6d6d5f;
    display: block;
    font-size: 12px;
    line-height: 18px;
    text-align: center;
    width: 100%;
    text-transform: uppercase;
}
table.tabela-add-embalagem tr td span.embAtributo {
    font-size: 12px;
    display: block;
}
table.tabela-add-embalagem tr td.emb-box {
    padding: 0.5rem;
    width: 100%;
}
table.tabela-add-embalagem span.txt-seleciona-embalagem {
    color: #6d6d5f;
    font-size: 12px;
    font-weight: normal;
    display: block;
    line-height: 18px;
    width: 100%;
    padding-bottom: 0.5rem;
}
table.tabela-add-embalagem p.valor-embalagem {
    display: block;
    width: 100%;
    color: #6d6d5f;
    margin-bottom: 8px;
    padding-top: 0.5rem;
}
.modalEmbalagem .modalAcoes {
    display: block;
    width: 100%;
    text-align: right;
    margin: 15px 0;
    clear: both;
    float: left;
}
.modalEmbalagem .modalAcoes span.botao-cancelar-embalagem {
    background: #c4c4c4;
    width: 48%;
    height: 40px;
    display: block;
    text-align: center;
    line-height: 40px;
    color: #fff;
    cursor: pointer;
    text-transform: uppercase;
    font-size: 12px;
    font-size: 0.75rem;
    float: left;
}
.modalEmbalagem .modalAcoes input.botao-salvar-embalagem {
    background: #5f5f5f;
    width: 48%;
    height: 40px;
    display: block;
    text-align: center;
    line-height: 40px;
    color: #fff;
    cursor: pointer;
    margin-left: 0;
    float: right;
    font-size: 12px;
    font-size: 0.75rem;
    text-transform: uppercase;
}
table.tabela-add-embalagem .area-cartao-presente {
    width: 100%;
    float: left;
    clear: both;
}
table.tabela-add-embalagem .area-cartao-presente input.input-cartao-presente {
    float: none;
    margin-top: 5px;
    margin-right: 5px;
}
table.tabela-add-embalagem .area-cartao-presente text.texto-cartao-presente {
    display: inline-block;
    color: #5f5f5f;
    font-size: 12px;
    line-height: 20px;
}
table.tabela-add-embalagem .area-cartao-presente .textarea-cartao-presente {
    border: 1px solid #7c7c7c;
    padding: 10px;
    width: 100%;
    margin: 10px 0;
    color: #000;
    background: #fff;
}
.fbits-responsive-carrinho-embalagem.aright {
    color: #6d6d5f;
    font-size: 12px;
    font-size: .75rem;
    font-weight: normal;
    padding: 0;
    text-align: center;
    text-transform: uppercase;
    white-space: nowrap;
    float: left;
    width: 100%;
    background-color: transparent;
    height: 40px;
    line-height: 40px;
    border-bottom: 1px solid #ccc;
}
.fbits-responsive-carrinho-embalagem.aright span#valorEmbalagem {
    margin: 0 10px;
}
.fbits-responsive-carrinho-opcao-frete {
    display: block;
    float: left;
    width: 100%;
}
.fbits-responsive-carrinho-opcao-frete .fbits-responsive-carrinho-opcao-frete-pickupstore {
    border: 1px solid #bebebe;
    padding: 10px 5px;
    font-size: 12px;
    font-size: .75rem;
    font-weight: normal;   
    float: left;    
    width: 100%;
    display: -webkit-flex;
    -webkit-align-items: center;
    display: flex;
    align-items: center;
    margin-bottom: 8px;
    border-radius: 0;
}
.fbits-responsive-carrinho-opcao-frete-pickupstore label.pointer {
    display: block;
    width: 100%;
    float: left;
    height: auto;
}
span.fbits-opcao-frete-nome-texto {
    display: block;
    width: 90%;
    float: left;
    text-align: center;
}
.fbits-responsive-carrinho-opcao-frete-pickupstore input[type="radio"], .fbits-responsive-carrinho-frete-lista div[id^="opcaoFrete"] > div:first-child input[type="radio"] {
    margin-left: 6px;   
    float: left;
}
.fbits-responsive-carrinho-frete-opcoes div#opcaoCalculoFrete.fbits-responsive-carrinho-frete-lista {
    padding-top: 0px;
    display: block;
    float: left;
    width: 100%;
}
.fbits-responsive-carrinho-frete-opcoes div#opcaoCalculoFrete.fbits-responsive-carrinho-frete-lista .fbits-responsive-carrinho-frete-lista-header {
    display: none;
}
.fbits-responsive-carrinho-frete-lista div[id^="opcaoFrete"] {
    border: 1px solid #bebebe !important;
    padding: 10px 5px !important;
    display: -webkit-flex !important;
    -webkit-align-items: center !important;
    display: flex !important;
    align-items: center !important;
    border-radius: 0;
}
.fbits-responsive-carrinho-frete-lista div[id^="opcaoFrete"] > div  {
    display: block !important;
    margin: 0 !important;
    padding: 0 !important;
    text-align: center !important;
    /*width: 30% !important;*/
    border: 0 !important;
    font-size: 12px;
    font-size: .75rem;
}
.fbits-responsive-carrinho-frete-lista div[id^="opcaoFrete"] > div:first-child {
    border: 0 !important;
    height: auto !important;
    margin: 0 !important;
    width: 10% !important;
    padding: 0 !important;
}
.fbits-responsive-carrinho-frete-lista div[id^="opcaoFrete"] > div:last-child {
    border-right: 0 !important;
}
div#fbits-pickupstore-lojas {
    padding: 0 !important;
}
.fbits-pickupstore-template1 {
    float: left;
    clear: both;
    margin-top: 12px;
    font-size: 12px;
    font-size: 0.75rem;
    display: -webkit-flex;
    -webkit-align-items: center;
    display: flex;
    align-items: center;
}
.fbits-pickupstore-template1 input[type="checkbox"] {
    margin: 0 5px;
}
.center.listadesejos p {
    padding: 1rem 0;
    text-align: center;
    font-size: 14px;
    font-size: 0.875rem;
    line-height: 20px;
}





/*Minha conta customizada*/
.content.minhaconta {
    display: block;
    float: left;
    width: 100%;
    margin-bottom: 3rem;
}
.textoInterna p, .mainBarInterna p {
    font-size: 16px;
    font-size: 1rem;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar .filtroTitle.title {
    background: #f5f5f5;
    border: solid 1px #ddd;
    border-radius: 0;
    color: #999;
    display: block!important;
    font-size: 14px;
    font-size: .875rem;
    font-weight: normal;
    height: 55px;
    line-height: 55px;
    padding: 0 25px;
    text-align: left;
    text-transform: uppercase;
    color: #0F2134;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar .filtroTitle.title:after {
    content: "\f080";
    font-family: 'icofont';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    float: right;
    font-size: 20px;    
    font-weight: normal;
}
.content.minhaconta .sideBar .filtros>ul {
    display: none;
    width: 100%;
}
.content.minhaconta .sideBar .filtros ul {
    display: block;
    width: 100%;
    float: left;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar .filtroPai {
    border: none;
    font-size: 12px;
    font-size: .75rem;
    margin: 0;
    padding: 10px 0 0;
    text-indent: 0;
    text-transform: uppercase;
    line-height: 1rem;
    /*float: left;*/
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li {
    border: none;
    height: auto;
    line-height: normal;
    margin-bottom: 10px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a {
    border: solid 1px #e5e5e5;
    color: #999;
    display: flex;
    font-size:13px;
    font-size:0.8125rem;
    line-height: 20px;
    padding: 15px 10px 15px 60px;
    position: relative;
    text-decoration: none;
    text-transform: capitalize;
    border-radius: 0;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a.sel {
    border: solid 1px #0F2134;
    color: #0F2134;
    font-weight: 700;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a:before {
    content: "";
    font-family: 'icofont';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    speak: none;
    font-variant: normal;
    font-size: 20px;
    font-weight: normal;
    background: #e9d237;
    height: 100%;
    border-right: solid 1px #e9d237;
    left: 0;
    width: 50px;
    padding: 0;
    position: absolute;
    top: 0;
    text-align: center;
    line-height: 50px;
    border-radius: 0;
    color: #ffffff;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Meus Pedidos"]:before {
    content: "?";  
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Meus Créditos"]:before {
    content: "\ea7d";  
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Minhas Assinaturas"]:before {
    content: "\ecd5";  
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Meus Produtos Digitais"]:before {
    content: "\efdd";  
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Lista de Desejos"]:before {
    content: "\f08a";
    font-family: 'FontAwesome';
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Meus Pedidos Recorrentes"]:before {
    content: "\ed5d";  
}

body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Alterar E-mail"]:before {
    content: "\ed32";  
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Alterar Senha"]:before {
    content: "\ed4f";  
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Comunicação"]:before {
    content: "\efc0";  
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Meus Dados"]:before {
    content: "\edd7";  
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Meus Endereços"]:before {
    content: "\ef0e";  
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Cadastrar Novo Endereço"]:before {
    content: "\f051";  
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Meus Cartões"]:before {
    content: "\ed6d";  
}

body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a[title="Lista de Desejos"] {
    display: none;
}

body.minhaConta.fbits-minhaConta table.tbl_orders_list thead tr th:nth-child(2), body.minhaConta.fbits-minhaConta table.tbl_orders_list thead tr th:nth-child(3), body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td:nth-child(2), body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td:nth-child(3) {
    display: none !important;
}
/*
#headerLoginMaster, .headerLoginMaster, body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul li:first-child ul li:nth-child(2), body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul li:first-child ul li:last-child, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.histPed, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.histPed tbody, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.histPed tr, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.histPed th, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tr, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed td, body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr:last-child, table.tbl_orders_list tbody tr:last-child td {
    display: none;
    position: absolute; 
    visibility: hidden;
    width: 0;
}
*/
#headerLoginMaster, .headerLoginMaster, body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul li:first-child ul li:nth-child(2), body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul li:first-child ul li:last-child {
    display: none;
    position: absolute; 
    visibility: hidden;
    width: 0;
}
#headerLoginMaster, .headerLoginMaster {
    visibility: visible;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna {
    border: solid 1px #e5e5e5;
    box-sizing: border-box;
    padding: 20px 10px;
    text-align: left;
    float: right;
    width: 100%;
    display: block;
    border-radius: 0;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .line {
    background: none;
    border-radius: 0;
    display: block;
    height: auto;
    text-align: left;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .line span {
    border: none;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .line .title {
    border: none;  
    font-size:15px;
    font-size:0.9375rem;   
    height: auto;     
}
body.minhaConta.fbits-minhaConta .historicoPedido {
    border: 0;
    background: #fff;
    float: left;
    width: 100%;
    padding-top: 1rem;
}
body.minhaConta.fbits-minhaConta table.tbl_orders_list {
    border-spacing: 0;
    text-align: center;
    width: 100%;
}
body.minhaConta.fbits-minhaConta table.tbl_orders_list thead {
    margin-bottom: 10px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.histPed tbody tr.headerTabela, body.minhaConta.fbits-minhaConta table.tbl_orders_list thead tr {
    background: #fff;
    border-radius: 0;
    height: auto;
    border: solid 1px #e5e5e5;
    display: table;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.histPed, body.minhaConta.fbits-minhaConta table.tbl_orders_list {
    border: none !important;
    border-radius: 0;
    margin: 0 0 10px;
    text-transform: uppercase;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed, body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody {
    margin-bottom: 10px !important;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed:hover {
    background: none;
}
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr:nth-child(odd) {
    height: 65px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.histPed tbody tr.headerTabela th:first-child, body.minhaConta.fbits-minhaConta table.tbl_orders_list thead tr:first-child {
    text-align: center;
    text-indent: 0;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.histPed tbody tr th, body.minhaConta.fbits-minhaConta table.tbl_orders_list thead tr th {
    border-left: solid 1px #e5e5e5;
    border-radius: 0;
    color: #555;
    font-weight: normal;
    text-transform: uppercase;
    display: table-cell;
    font-size: 10px;
    font-size: 0.625rem;
    padding: 1rem 0.5rem;
    width: 20%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.histPed tbody tr th:first-child, body.minhaConta.fbits-minhaConta table.tbl_orders_list thead tr th:first-child {
    border-left: 0;
}
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr.order_canceled:hover td {
    background: #f9d2d2;
    border-bottom: solid 1px #ecb7b7 !important;
    border-right: solid 1px #ecb7b7;
    border-top: solid 1px #ecb7b7;
}
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr.order_canceled:hover td:first-child {
    border-left: solid 1px #ecb7b7;
}
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr:nth-child(even), body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr:nth-child(even) td, body.minhaConta.fbits-minhaConta table.tbl_orders_list thead tr:nth-child(even), body.minhaConta.fbits-minhaConta table.tbl_orders_list thead tr:nth-child(even) th {
    height: 5px;
    border: none!important;
    display: block;
}
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr:nth-child(even):hover td {
    background: none;
    border: none !important;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr td, body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td {
    color: #878787;
    font-size: 10px;
    padding: 0 5px;
}
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr:hover td {
    border-bottom: solid 1px #ccc !important;
    border-right: solid 1px #ccc;
    border-top: solid 1px #ccc;
}
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr.order_canceled td {
    background: #ffeded;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr td:first-child, body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td:first-child {
    border-left: solid 1px #e5e5e5;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr td a, body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td a {
    color: #fe6622;
    font-size: 10px;
    text-decoration: none;
}
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr:hover td:first-child {
    border-left: solid 1px #ccc;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr td span,
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td span {
    margin: 0
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr td .order_canceled, body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td .order_canceled {
    background-color: #ff6b6b;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr:hover td,
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr:hover td {
    background: #eee;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr td:nth-child(3) span, body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td:nth-child(5) span {
    color: #0F2134;
    font-size:14px;
    font-size:0.875rem;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr td:nth-child(3) span small, table.tbl_orders_list tbody tr td:nth-child(5) span small {
    color: #878787;
    font-size:9px;
    font-size:0.5625rem;
    display: block;
}
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td:last-child button.button_order_details_view {
    background: #fff;
    border: solid 1px #aaa;
    border-radius: 5px;
    color: #0F2134;
    font-size: 11px;
    font-size: .6875rem;
    padding: 8px 15px;
    text-align: center;
    text-transform: capitalize;
}
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td:last-child button.button_order_details_view:hover {
    color: #fe6622;
    cursor: pointer;
    text-decoration: underline;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr td .label, body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td .label {
    border-radius: .25rem;
    color: #fff;
    display: inline-block;
    font-weight: normal;
    line-height: 12px;
    padding: .2rem .6rem .3rem;
    text-align: center;
    vertical-align: baseline;
    font-size: 9px;
    font-size: .5625rem;
    margin: 0 auto;
    width: 90%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr td .order_received, body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td .order_received {
    background-color: #0F2134;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr td .order_paid,
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td .order_paid {
    background-color: #f5a623;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr td .order_billed,
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td .order_billed {
    background-color: #45b7af;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr td .issued_invoice, body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td .issued_invoice {
    background-color: #a3bd31;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGeral.histPed tbody tr td .order_dispatched,
body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td .order_dispatched {
    background-color: #cc50c3;
}
.meusPedidos .pedidoStatus a.boletoImprimir.bt {
    float: none;
    margin: 0 auto;
    background-color: #009045;
}

/* BEGIN ANIMATOR ELEMENTS */
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_address_details,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details ul.item_details table,
article.container_institutional_pages .col-lg-3,
article.container_institutional_pages .col-lg-3 p,
.wrapper_menu-my_account li.holder_menu-my_account span:after,
footer .fstore.rjs {
    -webkit-transition: all 0.5s ease;
       -moz-transition: all 0.5s ease;
        -ms-transition: all 0.5s ease;
         -o-transition: all 0.5s ease;
            transition: all 0.5s ease;
}
/* END ANIMATOR ELEMENTS */


/* BEGIN DETALHES DOS PEDIDOS */
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details {
    background: #fff;
    border: solid 1px #e5e5e5;
    box-sizing: border-box;
    float: left;
    margin-bottom: 20px;
    padding: 15px;
    width: 51%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta h4.title_panel {
    color: #333;
    font-size:10px;
    font-size:0.625rem;
    font-weight: normal;
    line-height: 10px;
    padding-bottom: 15px;
    text-align: left;
    text-transform: uppercase;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta h4.title_panel span {
    color: #fe6622;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details ul {
    margin-top: 17px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details ul li {
    float: left;
    position: relative;
    width: 20%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details ul li:nth-child(2) {
    display: none;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details ul li span.icon_status i {
    float: left;
    height: 30px;
    margin: 2px;
    width: 30px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details ul li span.icon_status {
    background: #aaa;
    border: solid 5px #bdc3c7;
    border-radius: 20px;
    float: left;
    height: 44px;
    margin-left: 27%;
    margin-top: -17px;
    position: relative;
    width: 44px;
    z-index: 2
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details ul li span.bar_progress {
    background: #bdc3c7;
    display: block;
    height: 11px;
    position: absolute;
    width: 100%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details ul li:first-child span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details ul li:last-child span.bar_progress {
    width: 50%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details ul li:first-child span.bar_progress {
    right: 0
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details ul li small {
    clear: both;
    display: block;
    padding-top: 5px;
    text-align: center;
}
/*pedido recebido*/
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_received ul li:nth-child(1) span.icon_status,
/*pedido pago*/
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_paid ul li:nth-child(1) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_paid ul li:nth-child(3) span.icon_status,
/*pedido faturado*/
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_billed ul li:nth-child(1) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_billed ul li:nth-child(3) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_billed ul li:nth-child(4) span.icon_status,
/*entregue a transportadora*/
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.issued_invoice ul li:nth-child(1) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.issued_invoice ul li:nth-child(3) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.issued_invoice ul li:nth-child(4) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.issued_invoice ul li:nth-child(5) span.icon_status,
/*pedido entregue*/
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_dispatched ul li:nth-child(1) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_dispatched ul li:nth-child(3) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_dispatched ul li:nth-child(4) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_dispatched ul li:nth-child(5) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_dispatched ul li:nth-child(6) span.icon_status {
    background: #27ae60;
    border: solid 5px #2ecc71;
}
/*pedido cancelado*/
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(2) {
    display: block;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(3) {
    display: none;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(1) span.icon_status {
    background: #27ae60;
    border: solid 5px #2ecc71;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(2) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(3) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(4) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(5) span.icon_status,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(6) span.icon_status {
    background: #c7414c;
    border: solid 5px #f8cbd4;
}
/*pedido recebido*/
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_received ul li:nth-child(1) span.bar_progress,
/*pedido pago*/
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_paid ul li:nth-child(1) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_paid ul li:nth-child(3) span.bar_progress,
/*pedido faturado*/
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_billed ul li:nth-child(1) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_billed ul li:nth-child(3) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_billed ul li:nth-child(4) span.bar_progress,
/*entregue a transportadora*/
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.issued_invoice ul li:nth-child(1) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.issued_invoice ul li:nth-child(3) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.issued_invoice ul li:nth-child(4) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.issued_invoice ul li:nth-child(5) span.bar_progress,
/*pedido entregue*/
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_dispatched ul li:nth-child(1) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_dispatched ul li:nth-child(3) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_dispatched ul li:nth-child(4) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_dispatched ul li:nth-child(5) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_dispatched ul li:nth-child(6) span.bar_progress {
    background: #2ecc71;
}
/*pedido cancelado*/
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(1) span.icon_status {
    background: #27ae60;
    border: solid 5px #2ecc71;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(1) span.bar_progress {
    background: #2ecc71;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(2) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(3) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(4) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(5) span.bar_progress,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_status_details.order_canceled ul li:nth-child(6) span.bar_progress {
    background: #f8cbd4;
}

body.minhaConta.fbits-minhaConta div.content.minhaconta .order_address_details {
    border: solid 1px #e5e5e5;
    box-sizing: border-box;
    color: #878787;
    float: right;
    font-size:11px;
    font-size:0.6875rem;
    margin-bottom: 20px;
    padding: 15px;
    width: 21%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_address_details ul li {
    padding-left: 30px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_address_details strong {
    color: #555;
    font-weight: 600;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_address_details .address_mobile,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_address_details .address_email {
    padding-top: 15px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_address_details .address_email strong {
    word-wrap: break-word;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_address_details ul li i {
    float: left;
    height: 30px;
    margin-left: -30px;
    width: 30px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details {
    border: solid 1px #e5e5e5;
    box-sizing: border-box;
    background: #fff;
    float: left;
    margin-bottom: 15px;
    padding: 15px;          
    text-align: center;
    width: 51%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details .button_order_details_print {
    background: #5cb85c;
    border: solid 1px #4cae4c;
    border-radius: 5px;
    color: #fff;
    font-size: 11px;
    font-weight: 600;           
    margin: 0 auto;
    padding: 8px 15px;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;          
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details .button_order_details_print:hover {
    text-decoration: underline;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details ul.item_details li {
    border-bottom: solid 1px #e5e5e5;
    padding: 20px 0;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details ul.item_details table {
    color: #555;
    font-size:13px;
    font-size:0.8125rem;
    font-weight: normal;
    text-align: left;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details ul.item_details table tbody tr td:nth-child(2) {
    display: inline-block;
    padding: 0 15px;
    /*max-width: 80%*/
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details ul.item_details table tbody tr td img {
    height: 83px;
    width: 83px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details ul.item_details table tbody tr td p {
    margin: 0;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details ul.item_details table tbody tr td p + p {
    margin-top: 15px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details ul.item_details table tbody tr td p span {
    color: #009bdf;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details ul.item_details table tbody tr td p sub {
    color: #878787;    
    font-size:10px;
    font-size:0.625rem;
    vertical-align: baseline;    
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details ul.item_details table tbody tr td p sub + span {
    font-size: 16px;
    padding-left: 2px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta table.order_subtotal {
    width: 100%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta table.order_subtotal tr td {
    border-bottom: solid 1px #e5e5e5;
    font-size:14px;
    font-size:0.875rem;
    font-weight: normal;
    padding: 12px 0;
    text-align: right;
    width: 75%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta table.order_subtotal tr td:last-child {
    color: #009bdf;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta table.order_subtotal tr:last-child td:last-child {
    color: #ff6b6b;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta table.order_subtotal tfoot tr:last-child {
    border: none;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta table.order_subtotal tfoot tr:last-child td {
    border: none;
    padding: 20px 0;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta table.order_subtotal tfoot tr:last-child td:last-child {
    color: #27ae60;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta table.order_subtotal tr td p {
    margin: 0;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta table.order_subtotal tr td sub {
    color: #878787;
    font-family: sans-serif;
    font-size:10px;
    font-size:0.625rem;
    margin-right: 2px;
    vertical-align: baseline;
}
/* END DETALHES DOS PEDIDOS */

/* BEGIN OVERRIDER FBITS */
.minhaconta .mainBarInterna input#txtCEP, .minhaconta input[type="text"], .minhaconta input[type="password"] {
    height: 40px !important;
}
.minhaconta input#TelefoneRes, .minhaconta input#TelefoneCel {
    width: 75%;
    margin-left: 3%;
}
.minhaconta input#DDDRes, .minhaconta input#DDDCel {
    width: 20%;
}
.minhaconta input#DDDRes, .minhaconta input#DDDCel, .minhaconta input#txtNumero {
    text-align: center;
    text-indent: 0;
}
.headerLogin {
    /*display: inline-block !important;*/
    display: block !important;
    float: left !important;
    padding: 0 10px;
    width: 100%;
}
.entrega p {
    font-weight: 400 !important;
}
/* END OVERRIDER FBITS */


/* BEGIN MEUS DADOS */
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline  {
    clear: none;
    float: left;
    width: 100%;
    margin-bottom: 8px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(3), body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(4), body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(7), body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(8), body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(11) {
    width: 100%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(5), body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(9) {
    width: 100%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(6), body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(10) {
    margin-left: 0;
    width: 100%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(5) {
    padding: 0 0 1rem;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna.labelCol .forminline label {
    display: block;
    float: left;
    font-size: 10px;
    font-size: .625rem;
    font-weight: normal;
    line-height: normal;
    /*margin-bottom: 8px;*/
    text-align: left;
    text-transform: uppercase;
    width: auto;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline input#TipoSexoId, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline input#TipoSexoId {
    float: left;
    margin: -2px 5px 0;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline label,
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline input {
    box-sizing: border-box;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline input[type="text"] {
    font-size:10px;
    font-size:0.625rem;
    font-weight: normal;
    text-transform: uppercase;
    width: 100%;
}
body.minhaConta.fbits-minhaConta .minhaconta input#DDDRes, body.minhaConta.fbits-minhaConta .minhaconta input#DDDCel, body.minhaConta.fbits-minhaConta .minhaconta input#txtNumero, body.minhaConta.fbits-minhaConta .minhaconta input#TelefoneRes, body.minhaConta.fbits-minhaConta .minhaconta input#TelefoneCel, body.minhaConta.fbits-minhaConta .minhaconta input#DDDRes, body.minhaConta.fbits-minhaConta .minhaconta input#DDDCel {
    font-size:10px;
    font-size:0.625rem;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline input.nowide {
    float: left;
    margin-right: 2%;
    width: 20%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline input.nowide + input.normal {
    width: 78%
}
body.minhaConta.fbits-minhaConta input[readonly="readonly"], body.minhaConta.fbits-minhaConta input[readonly="readonly"]:hover, body.minhaConta.fbits-minhaConta input[readonly="readonly"]:focus {
    cursor: not-allowed;
    box-shadow: none;    
}
body.minhaConta.fbits-minhaConta input[type="submit"], body.minhaConta.fbits-minhaConta input[type="button"]  {
    background: #00bf5c;
    color: #fff;
    display: block;
    float: none;
    font-size: 10px;
    font-size: .625rem;
    font-weight: 700;
    margin: 1rem auto;
    padding: 0;
    text-align: center;
    text-transform: uppercase;
    width: 100%;
    max-width: 260px;
    font-family: 'avenir-lt-55-roman', Arial, sans-serif;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta form[action$="AtualizaDados"] .mainBarInterna input[type="submit"]{
    margin-top: 22px !important;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(4), body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(7), body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(9), body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(12) {
    margin-left: 0;
}
/*gender option*/
body.minhaConta.fbits-minhaConta #sliderLabel {
    cursor: pointer;
    display: block;
    height: 45px;
    overflow: hidden;
    position: relative;
    width: 90px !important;
}
body.minhaConta.fbits-minhaConta #sliderLabel input {
    /* display: none; */
    z-index: 999;
    position: absolute;
}
body.minhaConta.fbits-minhaConta #sliderLabel .icheckbox.checked + #slider {
    left: 0px;
}
body.minhaConta.fbits-minhaConta #slider {
    left: -45px;
    position: absolute;
    top: 0px;
    -webkit-transition: left .25s ease-out;
    -moz-transition: left .25s ease-out;
    -o-transition: left .25s ease-out;
    -ms-transition: left .25s ease-out;
    transition: left .25s ease-out;
}
body.minhaConta.fbits-minhaConta #sliderOn,
body.minhaConta.fbits-minhaConta #sliderBlock,
body.minhaConta.fbits-minhaConta #sliderOff {
    display: block;
    height: 45px;
    line-height: 45px;
    position: absolute;
    text-align: center;
    top: 0px;
}
body.minhaConta.fbits-minhaConta #sliderOn {
    background: #f58fcb;
    color: #fff;
    left: 0px;
    width: 45px;
}
body.minhaConta.fbits-minhaConta #sliderBlock {
    background: #fff;
    border: solid 1px #ddd;
    height: 45px;
    left: 45px;
    width: 45px;
}
body.minhaConta.fbits-minhaConta #sliderOff {
    background: #8fc9f5;
    color: #fff;
    left: 90px;
    width: 45px;
}
/* END MEUS DADOS */


/* BEGIN CADASTRAR NOVO ENDEREÇO */       
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna.novoEndereco .forminline label {
    width: 100% !important;
}
/* END CADASTRAR NOVO ENDEREÇO */


/* BEGIN ALTERAR E-MAIL */
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna.smallLabel .forminline:nth-child(2n) {
    margin-left: 0 !important;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna.smallLabel .forminline:nth-child(odd) {
    margin-left: 0 !important;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna.smallLabel .forminline label {
    color: #999;
    font-size:10px;
    font-size:0.625rem;
    font-weight: normal;
    line-height: normal;
    margin-bottom: 5px;
    text-align: left;
    text-transform: uppercase;
    width: 100% !important;
    line-height: 16px;
}
/* END ALTERAR E-MAIL */


/* BEGIN ALTERAR SENHA */
body.minhaConta.fbits-minhaConta form[action$="AlteracaoSenha"] div.content.minhaconta .mainBarInterna .forminline:nth-child(2n) {
    margin-left: 0 !important;
}
body.minhaConta.fbits-minhaConta form[action$="AlteracaoSenha"] div.content.minhaconta .mainBarInterna .forminline:nth-child(odd) {
    margin-left: 0 !important;
}
body.minhaConta.fbits-minhaConta form[action$="AlteracaoSenha"] div.content.minhaconta .mainBarInterna .forminline label {
    color: #999;
    font-size:10px;
    font-size:0.625rem;
    font-weight: normal;
    line-height: normal;
    margin-bottom: 5px;
    text-align: left;
    text-transform: uppercase;
    width: 100% !important;
    line-height: 16px;
}
body.minhaConta.fbits-minhaConta form[action$="AlteracaoSenha"] div.content.minhaconta .mainBarInterna .forminline input {
    width: 100% !important;
}
/* BEGIN ALTERAR SENHA */


/* BEGIN COMUNICAÇÃO POR E-MAIL */
body.minhaConta.fbits-minhaConta form[action$="AtualizaConfiguracao"] div.content.minhaconta .mainBarInterna .tLined.carrinho tbody tr.headerTabela th {
    width: 30% !important;
}
body.minhaConta.fbits-minhaConta form[action$="AtualizaConfiguracao"] div.content.minhaconta .mainBarInterna .tLined.carrinho tbody tr.headerTabela th:first-child {
    width: 10% !important;
    max-width: 40px;
}
body.minhaConta.fbits-minhaConta form[action$="AtualizaConfiguracao"] div.content.minhaconta .mainBarInterna .tLined.carrinho tr:last-child td {
    width: 30% !important;
}
body.minhaConta.fbits-minhaConta form[action$="AtualizaConfiguracao"] div.content.minhaconta .mainBarInterna .tLined.carrinho tr:last-child td:first-child {
    width: 10% !important;
    min-width: 40px;
}
/* END COMUNICAÇÃO POR E-MAIL */


/* BEGIN MEUS ENDEREÇOS */
ul.my_address_list {
    background: #fff;
    border: solid 1px #e5e5e5;
    color: #555;
    float: left;
    font-size: 13px;
    margin-bottom: 10px;
    margin-right: 2%;
    padding: 20px;
    text-transform: capitalize;
    width: 49%;
}
ul.my_address_list:nth-of-type(odd) {
    margin-right: 0;
}
ul.my_address_list:first-child span {
    color: #008cd8;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details + .mainBarInterna,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details + .mainBarInterna .pedidoStatus,
body.minhaConta.fbits-minhaConta div.content.minhaconta .order_details + .mainBarInterna .boxes {
    position: absolute;
    visibility: hidden;
    width: 0;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna ul.meusEnderecos, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna ul.meusEnderecos li {
    width: 100%;
    display: block;
    float: left;
    clear: both;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna ul.meusEnderecos .minhaconta-endereco {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    padding-bottom: 0.5rem;
    line-height: 22px;
}
.mensagem-assinatura {
    background-color: #cae2fb;
    border: solid 1px #0F2134;
    color: #0F2134;
    float: left;
    font-size: 9px;
    font-size: .5625rem;
    padding: 0 0.5rem;
    text-transform: uppercase;
    margin-right: 10px;
    margin-top: .5rem;
    line-height: 25px;
}
.meus-cartoes .item div {
    display: block;
    float: left;
    width: 100%;
}
.meus-cartoes .item div .mensagem-assinatura {
    width: auto;
}
.meus-cartoes .item div .remover  {
    float: right;
    font-size: 0;
    margin: 1rem 0 0 0;
    width: 25px;
    height: 25px;
}
div#fbits-acoes {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
ul.my_address_list li:last-child a:first-child {
    margin-right: 5px;
}
ul.my_address_list li:last-child a:first-child,
ul.my_address_list li:last-child a + a {
    background: #008cd8;
    border-radius: 20px;
    float: left;
    height: 35px;
    margin: 10px 5px 0 0;
    width: 35px;
}
ul.my_address_list li {
    font-size: 11px;
}
/* END MEUS ENDEREÇOS */


/* BEGIN ASSINATURA */
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .grupoAssinatura {
    display: block;
    float: left;
    clear: both;
    padding: 0 0 1rem;
    width: 100%;
    font-size: 13px;
    font-size: 0.8125rem;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna a.bt.link-assinatura {
    color: #fff;
    padding: 0 1rem;
    display: block;
    margin: 1rem auto;
    max-width: 260px;
    text-decoration: none;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna a.bt.pausarAssinatura {
    color: #fff;
    padding: 0 1rem;
    max-width: 260px;
    display: block;
    clear: both;
    margin: 1rem auto;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna a.bt.cancelarAssinatura {
    color: #fff;
    padding: 0 1rem;
    max-width: 260px;
    margin: auto;
    display: block;
    background: #0F2134;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna img {
    display: block;
    margin: 0 auto;
    max-width: 100%;
    width: auto!important;
    float: none;
    clear: both;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna div#cartao-credito {
    display: block;
    float: left;
    clear: both;
    padding: 1rem 0;
    font-size: 14px;
    font-size: 0.875rem;
    line-height: 20px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna div#endereco {
    display: block;
    float: left;
    width: 100%;
    clear: both;
    font-size: 14px;
    font-size: 0.875rem;
    line-height: 20px;
}
span.red.mensagemAssinatura, .red.mensagemCancelar {
    width: 100%;
    clear: both;
    display: block;
    text-align: center;
    line-height: 24px;
    font-size: 14px;
    font-size: 0.875rem;
}
.content.minhaconta .meusPedidos .boxes tfoot.fbits-responsive-carrinho-adicional td {
    white-space: normal;
}
/* END ASSINATURA */


/* BEGIN PRODUTOS DIGITAIS */
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined {
    display: block;
    float: left;
    width: 100%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna thead, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody {
    display: block;
    float: left;
    width: 100%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna thead tr.headerTabela, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr, table#tbItensListaDesejo tr.headerTabela, table#tbItensListaDesejo tbody#tbdListaDeDesejos tr.produtosListaDesejos {
    float: left;
    width: 100%;
    border: solid 1px #e5e5e5;
    margin-bottom: 1rem;
    display: table;
    height: auto;
    border-collapse: collapse;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna thead tr.headerTabela {   
    line-height: inherit;
    background: transparent;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna thead tr.headerTabela th, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tr th, table#tbItensListaDesejo tr.headerTabela th {
    width: 20%!important;
    float: none;
    text-align: center;
    font-size: 10px;
    font-size: .625rem;
    text-transform: uppercase;
    border-left: solid 1px #e5e5e5;
    height: auto;
    display: table-cell;
    white-space: normal;
    min-width: 55px;
    padding: 1rem 0;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna thead tr.headerTabela th:first-child, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr td:first-child, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tr th:first-child {
    border-left: 0;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna thead tr.headerTabela th a {
    display: inline-block;
    width: 100%;
    color: #555;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .tbl_orders_list tr {
    display: block;
    margin-bottom: 5px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr.order_canceled, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr.Pago, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr.issued_invoice, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr.order_received  {
    display: table;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr td, table#tbItensListaDesejo tbody#tbdListaDeDesejos tr.produtosListaDesejos td {
    width: 20% !important;
    text-align: center;
    font-size: 10px;
    font-size: 0.625rem;
    text-transform: uppercase;
    border-left: solid 1px #e5e5e5;
    display: table-cell;
    padding: 0.5rem 0;
    float: none;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr td a {
    color: #fe6622;
    text-decoration: underline;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .fbits-numero-pedido-minha-conta {
    line-height: 25px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .fbits-numero-pedido-minha-conta-txt {
    display: block;
    float: left;
    width: 100%;
    line-height: 20px;
    padding: 1rem 0;
    font-size: 14px;
    font-size: 0.875rem;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .fbits-numero-pedido-minha-conta-txt strong {
    font-weight: normal;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .pedidoStatus {
    display: block;
    float: left;
    width: 100%;
    text-align: left;
    line-height: 20px;
    padding: 1rem 0;
    font-size: 14px;
    font-size: .875rem;
    border: 0;
    margin: 0;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .meusPedidos .pedidoStatus .bt.recompra {
    max-width: 260px;
    color: #fff;
    display: block;
    float: none;
    text-decoration: none;
    margin: 0 auto 1rem;
    background: #00bf5c;
    height: 40px;
    line-height: 40px;
    font-family: 'avenir-lt-55-roman', Arial, sans-serif;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .meusPedidos .boxes table.tLined.carrinho {
    margin: 0;
    padding: 0;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna thead tr.headerTabela th.txtCenter.fbits-responsive-carrinho-header-ean, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr td.name.fbits-responsive-carrinho-item-descricao, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr td.txtCenter.fbits-responsive-carrinho-item-ean {
    display: none;
}
body.minhaConta .content.minhaconta .mainBarInterna .meusPedidos .boxes td.preco {
    width: 20%!important;
    text-align: center!important;
    min-width: inherit;
}
body.minhaConta .content.minhaconta .mainBarInterna .meusPedidos .boxes .fbits-responsive-carrinho-item-valor-unitario {
    display: table-cell !important; 
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tfoot tr td {
    width: 50%;
    font-size: 14px;
    font-size: 0.875rem;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .meusPedidos .boxDefault.confirmacao  {
    padding: .5rem;
    margin: 0;
    font-size: 14px;
    font-size: .875rem;
    color: #6d6d5f;
    border: solid 1px #e5e5e5;
    width: 100%;
    float: left;
}
.enderecoConfirmacao h3 {
    font-size: 14px;
    font-size: .875rem;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .meusPedidos a.bt.btcontinuar, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .meusPedidos a.bt.btfinalizar {
    padding: 0 1rem !important;
    width: auto !important;
    max-width: 260px;
    margin: 1rem auto;
    float: none;
    color: #fff;
    height: 40px;
    line-height: 40px;
    font-size: 16px;
    font-size: 1rem;
    display: block;
}
/* END PRODUTOS DIGITAIS */


/* BEGIN LISTA DESEJOS */
table#tbItensListaDesejo tr.headerTabela {   
    border-collapse: collapse;
}
table#tbItensListaDesejo tr.headerTabela th {
    width: 20% !important;
    display: table-cell;
    height: auto;
    padding: 1rem 0;
    float: none;
}
table#tbItensListaDesejo tbody#tbdListaDeDesejos {
    display: block;
    float: left;
    width: 100%;
}
table#tbItensListaDesejo tbody#tbdListaDeDesejos tr {
    display: table;
}
table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td  {
    display: table-cell;
    float: none;
    width: 20%!important;
    margin: 0;
    height: auto;
    text-align: center;
    vertical-align: top;
}
table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td.hide, table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td.cartProd {
    display: none !important;
}
table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td[id^="produto-dados-variante"], table#tbItensListaDesejo .headerTabela th:first-child {
    border-left: 0;
    width: 40%!important;
}
table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td select.optionProduct {   
    width: auto;
}
tbody#tbdListaDeDesejos tr td.remover {
    width: 10%;
}
tbody#tbdListaDeDesejos tr td.preco {
    width: 30%;
}
table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td.preco .precoPor  {
    line-height: 35px;
}
table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td input[id^="comprar"] {
    width: 95%;
    margin: auto;
    float: none;
    font-size: 10px;
    font-size: .625rem;
}
table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td .precoPor.com-precoDe:before {
    display:none;
}
table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td.remover input.remover  {
    background: url(../i/SVG-diversos/icone-remover-carrinho.svg) no-repeat;
    background-position: center;
    width: 30px;
    height: 30px;
    background-size: 25px;
    margin: 0 auto;
    display: block;
    float: none;
    cursor: pointer;
}
table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td[id^="produto-dados-variante"] span.cartNome {
    width: 100%;
    display: block;
    float: left;
    font-size: 10px;
    font-size: 0.625rem;
}
table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td.cartProd img {
    display: block;
    float: none;
    max-width: 100%;
    margin: auto;
}
.center.listadesejos .acenter {
    clear: both;
    float: left;
    width: 100%;
    text-align: center;
    padding: 1rem 0;
}
button#todos-comprar {
    max-width: 260px;
    margin: auto;
    display: block;
    float: none;
    padding: 0 1rem;
}
tbody#tbdListaDeDesejos tr td.cartProd {
    width: 10%;
}
tbody#tbdListaDeDesejos tr td[id^="produto-dados-variante"]  {
    width: 50%;
    min-height: 1rem;
}
.optionAtributos ul li ul li div + div + div > div, .optionAtributos ul li .container-tamanhos {
    display: block;
    float: left;
    width: 100% !important;
    text-align: center;
}
.headerTabela th {
    font-size:15px;
    font-size:0.9375rem;
    float: left;
    display: block;
    width: 25%;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGrupo td.noborderRight a {
    display: block;
    float: left;
    width: 100%;
    text-align: center;
    text-decoration: none;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna table.tLined.carrinho.bgGrupo td.noborderRight a input.bt.btGrande {
    margin: 0 auto;
    width: 100%;
    float: none;
    background: transparent;
    color: #a3bd31;
    font-size: 8px;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tfoot.fbits-responsive-carrinho-adicional {
    border: solid 1px #e5e5e5;
    margin-bottom: 1rem;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tfoot.fbits-responsive-carrinho-adicional tr {
    border-bottom: solid 1px #e5e5e5;
    padding: 0 0.5rem;
}
 body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna thead tr.headerTabela th, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tr th, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr td{
    font-weight: normal;
    color: #6d6d5f;
}
body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna>h1.title.big+p {
    padding: 15px 0;
}


/* END LISTA DESEJOS MINHA CONTA */


/* BEGIN Geolocalização */
.wrapper .navegacao {
    position: fixed;
    top: initial;
    bottom: 0;
    left: 0;
    z-index: 99;
    background-color: #0F2134;
    width: 100%;
    color: #fff;
    font-size: .8em;
    padding: 1em;
}
.wrapper .navegacao > div {
    display: block;
    float: left;
    width: 100%;
    clear: both;
    position: relative;
}
.wrapper .navegacao input#txtEndereco {
    display: block;
    float: left;
    width: 100%;
    height: 50px;
    color: #5e5e5e;
    text-transform: none;
}
.wrapper .navegacao>div>input+span {
    display: block;
    position: absolute;
    right: 0;
    top: 0;
    height: 50px;
    width: 50px;
    line-height: 50px;
    font-size: 0;
    cursor: pointer;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-family: 'FontAwesome';
    text-align: center;
    color: #0F2134;
}
.wrapper .navegacao>div>input+span:before {
    content: "\f002";
    width: 50px;
    height: 50px;
    display: block;
    font-size: 20px;
}
.wrapper .navegacao > div div#busca {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    padding-top: 1rem;
}
.wrapper .navegacao > div div#busca span#endereco-buscado {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    padding-bottom: 1rem;   
    font-family: 'avenir-lt-55-roman', Arial;
}
.wrapper .navegacao>div .resultado-busca {
    padding: 0.5rem 0 0 0;
    background-color: #0F2134;
    height: auto;
    position: relative;
    margin-top: 0;
    clear: both;
    float: left;
    width: 100%;
    border-top: 1px solid #fff;
    overflow-y: inherit;
}
.wrapper .navegacao > div .resultado-busca input#pickupStore {
    display: block;
    float: left;
    margin-top: 8px;
} 
.wrapper .navegacao>div .resultado-busca label[for="pickupStore"] {
    display: block;
    float: left;
    padding-left: 0.5rem;
    line-height: 30px;
}
.wrapper .navegacao > div .resultado-busca div#lojas {
    overflow-x: hidden;
    overflow-y: auto;
    display: block;
    float: left;
    clear: both;
    background-color: #fff;
    padding: .5rem;
    max-height: 250px;
    margin-top: 0.5rem;
    width: 100%;
}
.wrapper .navegacao > div .resultado-busca div#lojas::-webkit-scrollbar {
    width: 8px;
} 
.wrapper .navegacao > div .resultado-busca div#lojas::-webkit-scrollbar-track {
    background: #bababa;
    border-radius: 10px;
} 
.wrapper .navegacao > div .resultado-busca div#lojas::-webkit-scrollbar-thumb {
    border-radius: 10px;
    background: #9a979c;
} 
.wrapper .navegacao>div .resultado-busca div#lojas .loja {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    margin: 0 0 .5rem 0;
    background: #ececec;
    color: #0F2134;
    border: 1px solid #ececec;
    padding: .5rem;
    line-height: 18px;
    cursor: pointer;
    font-size: 12px;
    font-size: 0.75rem;
}
.wrapper .navegacao > div .resultado-busca div#lojas .loja:hover {
    border: 1px solid #232323;
}
.wrapper .navegacao>div .resultado-busca div#lojas .loja:before {
    font-family: 'icofont';
    content: "\ee10";
    display: block;
    float: left;
    width: 35px;
    height: 35px;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: left;
    color: #0F2134;
    font-size: 40px;
    line-height: 35px;
}
.wrapper .navegacao > div .resultado-busca div#lojas .loja .nome,
.wrapper .navegacao > div .resultado-busca div#lojas .loja .endereco,
.wrapper .navegacao > div .resultado-busca div#lojas .loja .cidade,
.wrapper .navegacao > div .resultado-busca div#lojas .loja .telefone,
.wrapper .navegacao > div .resultado-busca div#lojas .loja .texto {
    padding-left: 40px;
}
.wrapper .navegacao>div .resultado-busca div#lojas .loja .nome {
    padding-bottom: .3rem;
    color: #6e7812;
    font-size: 14px;
    font-size: .875rem;
    text-transform: uppercase;
}
div[class^="como-chegar"] {
    display: block;
    float: right;
    padding: 0 1rem;
    height: 35px;
    line-height: 35px;
    text-align: center;
    background: #a3bd31;
    color: #fff;
    margin-top: .5rem;
    cursor: pointer;
}
div[class^="como-chegar"] .como-chegar {
    display: inline-block;
    float: left;
    text-transform: uppercase;
    letter-spacing: 0.05rem;
    font-family: 'avenir-lt-55-roman', Arial, Helvetica, sans-serif;
    font-size: 12px;
    font-size: 0.75rem;
}
div[class^="como-chegar"]:after {
    font-family: 'icofont';
    content: "\ef0e";
    display: inline-block;
    width: 35px;
    height: 35px;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: right;
    font-size: 22px;
}
.wrapper .navegacao div#rota {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.wrapper .navegacao div#rota div#voltar-lojas {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    padding-bottom: 10px;
    padding-top: 10px;
    height: 40px;
    line-height: 20px;
    cursor: pointer;
}
.wrapper .navegacao div#rota div#voltar-lojas:before {
    content: "\eb54";
    display: inline-block;
    width: 20px;
    height: 20px;
    line-height: 20px;
    margin-right: 5px;
    float: left;
    font-family: 'icofont';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-size: 20px;
    text-align: left;
}
.wrapper .navegacao div#rota div#resultado-navegacao {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    background: #fff;
    max-height: 250px;
    padding-bottom: 1rem;
    overflow-x: hidden;
    overflow-y: auto;
}
.wrapper .navegacao div#rota div#resultado-navegacao::-webkit-scrollbar {
    width: 8px;
} 
.wrapper .navegacao div#rota div#resultado-navegacao::-webkit-scrollbar-track {
    background: #bababa;
    border-radius: 10px;
} 
.wrapper .navegacao div#rota div#resultado-navegacao::-webkit-scrollbar-thumb {
    border-radius: 10px;
    background: #9a979c;
} 
.wrapper .navegacao div#rota div#resultado-navegacao .adp-placemark {
    background: #fff;
    border: 1px solid #ccc;
    color: #000;
    cursor: pointer;
    margin: 10px 0px 10px 0px;
    vertical-align: middle;
    padding: 0.5rem 0;
}
.wrapper .navegacao div#rota div#resultado-navegacao .adp-summary {
    padding: 0 3px 0.8rem 7px;
}
.wrapper .navegacao div#rota div#resultado-navegacao .adp-legal {
    padding-left: 0.7rem;
}
.wrapper .navegacao div#rota div#resultado-navegacao .adp table {    
    width: 100%;
}
/* END Geolocalização */

.content.modalAdicionar .optionAtributos ul li ul li div+div+div>div {
    text-align: left;
}

/*BEGIN Contraproposta e Alerta valores*/
.fbits-Contraproposta-modal-content {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.fbits-Contraproposta-modal-header, .tituloAlertaValores {
    padding: 0 15px;
    line-height: 35px !important;
    height: 35px !important;
    background-color: #fff;
    font-weight: normal;
    text-transform: uppercase;
    color: #000;
    font-size: 11px;
    font-size: 0.6875rem;
    border: 1px solid #000;
    margin-bottom: 1rem;
    width: 100%;
    float: left;
}
.fbits-Contraproposta-modal-header span.fbits-icone-money, .tituloAlertaValores span.fbits-icone-pagar-menos {
    font-family: "Ionicons";
    display: block;
    font-size: 18px;
    float: left;
    margin-right: 0;
    line-height: 35px;
    height: 35px;
}
.fbits-Contraproposta-modal-header span.fbits-icone-money:before {
    content: "\f353";  
}
.tituloAlertaValores span.fbits-icone-pagar-menos:before {
    content: "\f316";
}
.fbits-Contraproposta-modal-header h2.fbits-Contraproposta-titulo {
    padding: 0;
    text-align: center;
}
.fbits-Contraproposta-modal-body, .fbits-alerta-valor-modal-body {
    padding: 10px 0;
    float: left;
    min-width: 200px;
}
.fbits-alerta-valor-modal-body div#formulario {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
.fbits-Contraproposta-info {
    color: #fff;
    background-color: #D44D4A;
    text-align: center;
    font-size: 12px;
    padding: 5px;
    margin-bottom: 15px;
    display: none;
    float: left;
    width: 100%;
}
.fbits-Contraproposta-formulario, .fbits-Contraproposta-div-url, .fbits-Contraproposta-div-url+br+div, .fbits-Contraproposta-div-infos, .fbits-alerta-valor-formulario {
    display: block;
    float: left;
    width: 100%;
    clear: both;
    margin:0;
    padding:0;
}
.fbits-Contraproposta-formulario .fbits-Contraproposta-label-inputs, .fbits-alerta-valor-label-inputs {
    display: block;
    float: left;
    clear: both;
    width: 100%;
}
.fbits-Contraproposta-bold {
    font-weight: normal;
}
.fbits-Contraproposta-formulario .fbits-Contraproposta-label-inputs label.fbits-Contraproposta-labelInline, .fbits-Contraproposta-div-url label.fbits-Contraproposta-url-Label, label.fbits-Contraproposta-bold.infos, .fbits-alerta-valor-label-inputs label.fbits-alerta-valor-labelInline {
    display: block;
    float: left;
    width: 100%;
    line-height: 25px;
    margin: 0;
    text-align: left;
}
.fbits-Contraproposta-formulario .fbits-Contraproposta-label-inputs .fbits-Contraproposta-div-inputs, .fbits-Contraproposta-div-url-input, .fbits-alerta-valor-label-inputs .fbits-alerta-valor-div-inputs {
    width: 100%;
    float: left;
    display: block;
    clear: both;
    margin: 0 0 8px 0;
}
.fbits-Contraproposta-input-group-addon, .fbits-Contraproposta-url-span {
    min-width: inherit;
    display: block;
    margin-right: 0;
    font-weight: normal;
    float: left;
    top: 0;
    position: relative;
    width: 25%;
    padding: 0 5px;
    height: 40px;
    line-height: 40px;
    font-size: 10px;
}
.fbits-Contraproposta-input-group-addon span.fbits-icone-envelope-email {
    padding: 0;   
    font-family: "Ionicons";
    font-size: 25px;
    color: #555;
    font-weight: normal;
    font-style: normal;
}
.fbits-Contraproposta-input-group-addon span.fbits-icone-envelope-email:before {   
    content: "\f132"; 
}
.fbits-Contraproposta-form-control, .fbits-alerta-valor-label-inputs .fbits-alerta-valor-div-inputs .fbits-Contraproposta-form-control {
    width: 73%;
    margin-left: 2%;
    margin-right: 0;
    float: left;
    height: 40px;
    line-height: 40px;
    padding: 0 5px;
    font-size: 10px;
    max-width: inherit !important;
    text-indent: 0;
}
.fbits-Contraproposta-info-textarea {
    margin: 0 0 12px 0;
    width: 100%;
    float: left;
    clear: both;
    display: block;
}
#BtnGeraContraProposta, button#btnAlertar {
    background-color: #00bf5c;
    color: #fff;
    font-size: 12px;
    display: block;
    float: left;
    clear: both;
    width: 100%;
    height: 40px;
    line-height: 40px;
    padding: 0 10px;
    text-align: center;
    text-transform: uppercase;    
    max-width: 260px;
    margin: 0 auto;
}
#BtnGeraContraProposta {min-width: inherit;}
/*END Contraproposta e Alerta valores*/


.modalConteudo .modalIcone.left {
    display: block;
    float: left;
    width: 100%;
    clear: both;
}
i.icon.imodalicon {
    display: block;
    float: left;
    width: 100%;
    padding: 0 0 1rem;
    text-align: center;
}
i.icon.imodalicon:before {
    content: "\ec4f";
    font-family: 'Icofont';
    font-style: normal;
    font-size: 45px;
    color: #0F2134;
}
.modalConteudo .modalNovoItem.left {
    display: block;
    float: left;
    width: 100%;
    clear: both;
    text-align: center;
    font-size: 15px;
    font-size: 0.9375rem;
    color: #0F2134;
}
.modalConteudo .modalNovoItem.left .modalItensCesta {
    margin-top: 1em;
    display: block;
    float: left;
    width: 100%;
    clear: both;
    text-align: center;
    font-size: 14px;
    font-size: 0.875rem;
}
.modalConteudo .modalBotoes.left {
    display: block;
    float: left;
    clear: both;
    width: 100%;
    text-align: center;
}
#fbits-resumo-mensagem-erro {
    color: #911314;
    font-size: 10px;
    font-weight: normal;
    margin-bottom: 0px;
    margin-top: 0px;
    text-align: center;
    text-transform: none;
    line-height: 18px;
}
span#spnDadosBoleto {
    display: block;
    float: left;
    width: 100%;
    text-align: center;
    text-transform: uppercase;
    line-height: 25px;
    font-size: 16px;
    font-size: 1rem;
}
span#spnDadosBoleto::after {
    content: " à vista";
    text-transform: none;
}

.fbits-hotsite.QuemSomos li.menu-quem-somos a,
.fbits-hotsite.ComoComprar li.menu-como-comprar a,
.fbits-hotsite.CompraSegura li.menu-compra-segura a,
.fbits-hotsite.ComoRegistrar li.menu-como-registrar a,
.fbits-hotsite.PoliticadePrivacidade li.menu-politica-privacidade a,
.fbits-hotsite.FormasPagamento li.menu-formas-pagamento a,
.fbits-hotsite.Entrega li.menu-entrega a,
.fbits-hotsite.DuvidasFrequentes li.menu-duvidas-frequentes a,
.fbits-hotsite.TrocaseDevolucoes li.menu-trocas-devolucoes a,
.fbits-hotsite.ContratoDeCompraEVenda li.menu-termos a,
.fbits-hotsite.Atendimento li.menu-atendimento a,
.fbits-hotsite.nossa-historia li.menu-nossa-historia a,
.fbits-hotsite.nossos-parceiros li.menu-nossos-parceiros a,
.fbits-hotsite.premios li.menu-premios a,
.fbits-hotsite.regras-do-site li.menu-regras-site a,
.fbits-hotsite.nossas-lojas li.menu-nossas-lojas a {
    text-decoration: underline;
}

/*AJUSTE SLIDESHOW*/

.fbits-banner-centro > a img {
	position: relative!important;
	width: 100% !important;
	display: block;
	float: left;
}

/* PÁGINA NOSSAS LOJAS */
.iframe-youtube {
    width: 100%;
    margin-bottom: 1rem;
}
.loja-localiza {
    width: 50%;
    margin-bottom: 1rem;
    display: none;
}
.loja-localiza label {
    display:block;
}
.loja-localiza select {
    border: solid 1px #bebebe;
    height: 35px;
    width: 100%;
    max-width: 250px;
}

.loja-navegacao .loja-painel {
    background: #ededed;
    border: solid 1px #bebebe;
    font-size: 18px;
    font-size: 1.125rem;
    font-weight: 700;
    color: #000000;
    min-height: 35px;
    line-height: 25px;
    padding: 5px 10px;
}
.loja-navegacao .loja-painel:after {
    content: "";
    display: inline-block;
    width: 16px;
    height: 16px;
    text-align: right;
    background: url(../i/loja-plus.png) 0 0 no-repeat;
    float: right;
    margin-top: 5px;
    display: none;
}
.loja-navegacao .loja-painel:before {
    content: "";
    display: inline-block;
    width: 16px;
    height: 16px;
    text-align: right;
    background: url(../i/loja-mark.png) 0 0 no-repeat;
    margin-right: 10px;
    vertical-align: middle;
}
.loja-navegacao .loja-abre {
    /*display: none;*/
    margin: 1rem 0 2rem;
}
.loja-navegacao .loja-mapa {
    display: block;
    width: 100%;
    vertical-align: top;
}
.loja-navegacao .loja-endereco {
    display: block;
    width: 100%;
    vertical-align: top;
}
.loja-navegacao .loja-endereco h2 {
    font-weight: 700;
    margin-bottom: 0.625rem;
}
.loja-navegacao .loja-endereco li {
    margin-bottom: 5px;
    margin-left: 10px;
    line-height: 0.9375rem;
}
.loja-navegacao .loja-endereco .loja-atendimento {
    margin-top: 0.625rem;
    padding: 10px;
    background-color: #eaf2fa;
    border: solid 1px #bebebe;
    color: #000000;
    line-height: 16px;
}
/**/

@media (min-width: 768px) {
    .fbits-home .fbits-banner-centro, .fbits-home .slidesjs-container {
        overflow: hidden !important;
    }
    .fbits-home .fbits-banner-centro .slidesjs-container, .fbits-home .fbits-banner-centro > a img {
	    height: 263px!important;
	    overflow: visible!important;
	    z-index: 8!important;
	    left: 50% !important;
	    width: 1400px !important;
	    margin-left: -700px !important;
	}
	.fbits-home .fbits-banner-centro .slidesjs-container .slidesjs-control {
	    height: 263px!important;
        width: 1400px !important;
	}
	.fbits-home .fbits-banner-centro .slidesjs-control, .fbits-home .fbits-banner-centro .slidesjs-control a.slidesjs-slide {
        width: 1400px !important;
        height: 263px!important;
    }
	.fbits-home .fbits-banner-centro .slidesjs-control img {
	    width: 1400px !important;
	    height: 263px!important;
	    left: 0!important;
	    margin-left: 0!important;
	}
}

@media (min-width: 1035px) {
    .fbits-home .fbits-banner-centro, .fbits-home .slidesjs-container {
        overflow: hidden;
    }
    .fbits-home .fbits-banner-centro .slidesjs-container, .fbits-home .fbits-banner-centro > a img {
	    height: 360px!important;
	    overflow: visible!important;
	    z-index: 8!important;
	    left: 50% !important;
	    width: 1920px !important;
	    margin-left: -960px !important;
	}
	.fbits-home .fbits-banner-centro .slidesjs-container .slidesjs-control {
	    height: 360px!important;
        width: 1920px!important;
	}
	.fbits-home .fbits-banner-centro .slidesjs-control, .fbits-home .fbits-banner-centro .slidesjs-control a.slidesjs-slide {
        width: 1920px!important;
        height: 360px!important;
    }
	.fbits-home .fbits-banner-centro .slidesjs-control a.slidesjs-slide img {
	    width: 1920px !important;
	    height: 360px!important;
	    left: 0!important;
	    margin-left: 0!important;
	}
}
/*FIM AJUSTE SLIDESHOW*/

/*AJUSTE SLIDESHOW MOBILE */
@media (max-width: 767px) {

	.fbits-home .fbits-banner-centro > a img {
		position: relative!important;
		width: 100% !important;
		display: block;
		float: left;
	}

	.fbits-home .fbits-banner-centro, .fbits-home .slidesjs-container {
	    overflow: hidden !important;
	}
	.fbits-home .fbits-banner-centro .slidesjs-container, .fbits-home .fbits-banner-centro > a img {
	    overflow: visible!important;
	    z-index: 8!important;
	    left: 50% !important;
	    width: 1200px !important;
	    height: 225px!important;
	    margin-left: -600px !important;
	}
	.fbits-home .fbits-banner-centro .slidesjs-container .slidesjs-control,
	.fbits-home .fbits-banner-centro .slidesjs-control, .fbits-home .fbits-banner-centro .slidesjs-control a.slidesjs-slide {
		width: 1200px !important;
	    height: 225px!important;    
	}
	.fbits-home .fbits-banner-centro .slidesjs-control img {
	    width: 1200px !important;
	    height: 225px!important;
	    left: 0!important;
	    margin-left: 0!important;
	}
	.fbits-home .fbits-banner-centro .slidesjs-next, .fbits-home .fbits-banner-centro .slidesjs-previous {
		top: 48%;
	}
}

@media (max-width: 685px) {
	.fbits-home .fbits-banner-centro .slidesjs-container, .fbits-home .fbits-banner-centro > a img {
	    width: 900px !important;
	    height: 168px!important;
	    margin-left: -450px !important;
	}
	.fbits-home .fbits-banner-centro .slidesjs-container .slidesjs-control,
	.fbits-home .fbits-banner-centro .slidesjs-control, .fbits-home .fbits-banner-centro .slidesjs-control a.slidesjs-slide,
	.fbits-home .fbits-banner-centro .slidesjs-control img {
		width: 900px !important;
	    height: 168px!important;
	}
}

@media (max-width: 540px) {
	.fbits-home .fbits-banner-centro .slidesjs-container, .fbits-home .fbits-banner-centro > a img {
	    width: 700px !important;
	    height: 131px!important;
	    margin-left: -350px !important;
	}
	.fbits-home .fbits-banner-centro .slidesjs-container .slidesjs-control,
	.fbits-home .fbits-banner-centro .slidesjs-control, .fbits-home .fbits-banner-centro .slidesjs-control a.slidesjs-slide,
	.fbits-home .fbits-banner-centro .slidesjs-control img {
		width: 700px !important;
	    height: 131px!important;
	}
}

@media (max-width: 440px) {
	.fbits-home .fbits-banner-centro .slidesjs-container, .fbits-home .fbits-banner-centro > a img {
	    width: 600px !important;
	    height: 112px!important;
	    margin-left: -300px !important;
	}
	.fbits-home .fbits-banner-centro .slidesjs-container .slidesjs-control,
	.fbits-home .fbits-banner-centro .slidesjs-control, .fbits-home .fbits-banner-centro .slidesjs-control a.slidesjs-slide,
	.fbits-home .fbits-banner-centro .slidesjs-control img {
		width: 600px !important;
	    height: 112px!important;
	}
	.fbits-home .fbits-banner-centro .slidesjs-previous:before, .fbits-home .fbits-banner-centro .slidesjs-next:before {
		width: 16px;
    	height: 34px;
	}
	.fbits-home .fbits-banner-centro .slidesjs-previous:before {
		background-size: 20px;
		float: left;
	}
	.fbits-home .fbits-banner-centro .slidesjs-next:before {
		background-size: 20px;
		float: right;
	}
}

@media (max-width: 375px) {
	.fbits-home .fbits-banner-centro .slidesjs-container, .fbits-home .fbits-banner-centro > a img {
	    width: 550px !important;
	    height: 103px!important;
	    margin-left: -275px !important;
	}
	.fbits-home .fbits-banner-centro .slidesjs-container .slidesjs-control,
	.fbits-home .fbits-banner-centro .slidesjs-control, .fbits-home .fbits-banner-centro .slidesjs-control a.slidesjs-slide,
	.fbits-home .fbits-banner-centro .slidesjs-control img {
		width: 550px !important;
	    height: 103px!important;
	}
}

@media (max-width: 360px) {
	.fbits-home .fbits-banner-centro .slidesjs-container, .fbits-home .fbits-banner-centro > a img {
	    width: 500px !important;
	    height: 93px!important;
	    margin-left: -250px !important;
	}
	.fbits-home .fbits-banner-centro .slidesjs-container .slidesjs-control,
	.fbits-home .fbits-banner-centro .slidesjs-control, .fbits-home .fbits-banner-centro .slidesjs-control a.slidesjs-slide,
	.fbits-home .fbits-banner-centro .slidesjs-control img {
		width: 500px !important;
	    height: 93px!important;
	}
}
/*FIM AJUSTE SLIDESHOW MOBILE */

/*MOBILE tela deitada*/
@media (min-width: 568px) {     
    .fbits-home .fbits-banner-topo a {   
        width: 50%;  
    }
    #carrossel-fabricantes.jcarousel li {
        width: 28vw;   
    }
    .fbits-banner-rodape a {  
        /*width: 50%;*/
        width: 100%;   
        clear: none;
    }
    footer span.icones-pagamento-footer {  
        width: 12.5%;
        height: 50px; 
        background-size: 92%; 
        background-position: center;
    }
    a#btnVerMais {    
        width: 50%;   
    }
}

@media (max-width: 1299px) {
    .fixed-bar, .ac_results { display:none!important;}
}

@media (max-width: 934px) {
    li.linksfooter a.fbits-redes-sociais {
        width: 64px;
        margin-bottom: 14px;
    }
}

@media (max-width: 924px) {
    #bodyListaCompra .fbits-componente-listacompra-preco-por {
        line-height: 10px;
    }
}

@media (max-width: 910px) {
    h3.titleFechamento {
        font-size: 22px !important;
        font-size: 1.375rem !important;
    }
}

@media (max-width: 767px) {
    .fixed-bar, .ac_results {
        display:none!important;
    }
    .headerLogo {
        display: inline-block;
        width: 50%;
        vertical-align: middle;
        max-width: 190px;
    }
    .headerLogo img {
        width: 100%;
        margin-top: 0;
    }
    .top-icons.icons-mobile {
        width: 90px;
        float: right;
    }
    input.inputSearch[type="text"] {
        border: none;
        height: 44px;       
    }
    .headerSearch button#btnBusca, button#btnBuscaBarraFixa, button#btnBuscaFooter {
        height: 44px;
    }
    button#btnBusca i.icon.isearch:before, button#btnBuscaBarraFixa i.icon.isearch:before, button#btnBuscaFooter i.icon.isearch:before {
        height: 44px;
    }
    .menu li.item.raiz a, .menu li.item.raiz span.todas-categorias, .menu li.item.raiz span.menu-geral {
        font-size: 14px;
        font-size: 0.875rem !important;
        line-height: 3.125rem !important;
    }
    .menu li.item.raiz.todas-categorias {
        display: none;
    }
    footer {
        padding-bottom: 40px;
    }
    #bodyListaCompra .fbits-componente-listacompra-preco-por {
        line-height: 35px;
    }
    .texto-descricao td {
        display: block;
        width: 100%;
    }
    .spot {
        width: 43vw;
    }
    .fbits-home .fbits-banner-rodape {
        display: none !important;
    }
    div#historyBoard {
        margin-top: 4rem;
    }
    .jcarousel-prev:before, .jcarousel-next:before, .jsCarrousel-prev-historico.jcarousel-prev-horizontal:before, .jsCarrousel-next-historico.jcarousel-next-horizontal:before, #bodyProduto .jsCarrousel-prev.jcarousel-prev-horizontal:before, #bodyProduto .jsCarrousel-next.jcarousel-next-horizontal:before {
        background-size: inherit;
    }
    h2.titleHistBusca, h3.title.titleTag {
        text-indent: 20px;
    }
    h2.titleHistBusca {
        font-size: 0;
    }
    /* newsletter */
    .footerNewsForm {
        float: none;
    }
    i.icon.inews {
        width: 100%;
        height: 100px;
    }
    i.icon.inews:before {
        width: 100%;
        height: 100px;
        /*background: url(../i/news-icone.png) 50% 0 no-repeat;*/
        background: url(../i/news-icone.svg) 50% 0 no-repeat;
        background-size: contain;
        position: static;
    }
    .txtNews.left::after {
        text-align: center;
    }
    .menu li.item.raiz ul.filho li.menu-geral-filho a {
        color: #6d6d5f;
        line-height: 0.75rem !important;
    }
    /**/
    
    footer .footer-seguranca {
        margin-top: 2rem;
    }
    
    /* produto mobile */
    .produto .fbits-sku {
        display: inline-block;
        vertical-align: middle;
        float: none;
    }
    .produto .fbits-avaliacao {
        float: none;
        width: 48%;
        display: inline-block;
        vertical-align: middle;
    }
    .fbits-componente-imagemvariantethumb.fbits-produto-imagens {
        margin-top: 1rem;
    }
    .details-content .simule {
        text-align: left;
    }
    .produtoInfo #naoSeiCep, .details .details-content a#naoSeiCep {
        text-align: left;
    }
    .fbits-calculafrete .carrinhoInputBlock .btnCalculaFreteProduto {
        margin-top: 10px;
        width: 16%;
        max-width: 43px;
    }
    .details-content .simule br {
        display: none;
    }
    img#zoomImagemProduto, img#zoomImagem {
	    pointer-events: none;
	}
	#thumbVideo img {
	    background-size: cover !important;
        background-position: center !important;
        max-width: none;
        width: 100%;
	}
	#bodyListaCompra .listacompra-comprarselecionados, .produtoRecomendadoComprar button#btnComprarTodos {
        font-size: 18px !important;
        font-size: 1.125rem !important;
    }
    
    /* menu mobile */
    .menu li.item.raiz a img, .menu li.item.raiz span.todas-categorias img, .menu li.item.raiz span.menu-geral img, .menu li.item.raiz ul.filho li.menu-imagem {
        display: none;
    }
    .menu li.item.raiz ul li {
        line-height: 1rem;
        min-height: 0;
    }
    .menu li.item.raiz ul.filho li a {
        line-height: .75rem;
        padding-top: 1rem;
        padding-bottom: 1rem;
    }
    /**/
    
    /* carrinho mobile */
    .fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-total, .coluna-fechamento.final table.tLined.carrinho .produto-linha td.valor-total-colunas {
        margin-top: 1rem;
    }
    .passos {
        background-size: 100%;
    }
    /**/
    
    /* menu minha conta mobile*/
    .content.minhaconta .sideBar:hover .filtros ul {
        display: block;
    }
    .content.minhaconta .sideBar .filtros ul {
        display: none;
    }
    /**/
    
    /* filtros mobile */
    .filtros.filtro-lateral-categoria > ul, .fbits-hotsite .fbits-estatica-esquerda .filtros > ul {
        display: none;
    }
    /**/
    
    /* spot mobile */
    .fbits-spot-conteudo {
        height: 205px;
    }
    #bodyProduto .fbits-spot-conteudo {
        height: 220px;
    }
    #spot-vitrine .fbits-spot-conteudo {
        height: 222px;
    }
    .spotPreco {
        height: 9.2rem;
        line-height: 1.10rem;
    }
    .spot .precoDe {
        display: block;
        height: 20px;
        margin-bottom: 2px;
    }
    .spot .precoPor {
        line-height: 1.7rem;
    }
    /**/
    
    li.linksfooter a.fbits-redes-sociais {
        width: 45px;
        margin-bottom: 0;
    }
    
}
@media (max-width: 669px) {
    .fbits-home .fbits-carrossel li {
        width: 87vw !important;
    }
    .fbits-home div[id^="fbits-vitrine-item"] .fbits-carrossel li {
        padding: 0 2vw 0 3vw;
    }
}
@media (max-width: 620px) {
    .fbits-categoria .fbits-banner-centro .slidesjs-previous, .fbits-categoria .fbits-banner-centro .slidesjs-next {
        top: 38%;
    }
}
@media (max-width: 567px) {
    footer span.icones-pagamento-footer {
        width: 12.5%;
        height: 30px;
        background-size: contain;
        background-position: center;
    }
}
@media (max-width: 480px) {
    .fbits-categoria .fbits-banner-centro .slidesjs-previous, .fbits-categoria .fbits-banner-centro .slidesjs-next {
        top: 32%;
    }
}
@media (max-width: 447px) {
    .spot {
        width: 100%;
    }
    
    .coluna-fechamento span.fbits-opcoes-frete {
        /*width: 66.6666%;*/
        width: 50% !important;
    }
}

@media (max-width: 420px) {
    .fbits-produtos-acessados-item {
        width: 48%;
        margin: 0% 1%;
        text-align: center;
    }
    .produtosAcessados img {
        margin: 0 auto 0.3rem;
    }
}

@media (max-width: 350px) {
    .spotPreco {
        height: auto;
    }
    .spot .precoPor {
        font-size: 21px;
        font-size: 1.313rem;
    }
    .precoDeVazio {
        height: auto;
        margin-bottom: 0;
    }
}

/* AJUSTE DE IMAGENS NO SPOT */
@media (min-width: 499px) {
    .spotImg {
        min-height: 198px;
    }
}
@media (min-width: 599px) {
    .spotImg {
        min-height: 241px;
    }
}
@media (min-width: 699px) {
    .spotImg {
        min-height: 275px;
    }
}
@media (min-width: 799px) {
    .spotImg {
        min-height: 156px;
    }
}
@media (min-width: 899px) {
    .spotImg {
        min-height: 179px;
    }
}
@media (min-width: 999px) {
    .spotImg {
        min-height: 203px;
    }
}
@media (min-width: 1099px) {
    .spotImg {
        min-height: 225px;
    }
}
@media (min-width: 1199px) {
    .spotImg {
        min-height: 248px;
    }
}
@media (min-width: 1299px) {
    .spotImg {
        min-height: 271px;
    }
}
@media (min-width: 1399px) {
    .spotImg {
        min-height: 210px;
    }
}

/* AJUSTES IMAGENS MEGAMENU */
@media(min-width: 1450px) {
	.menu li.mnu-img ul.filho::after {
        right: -81% !important;
    }
}

@media(min-width: 1560px) {
	.menu li.mnu-img ul.filho::after {
        right: -82% !important;
    }
}

@media(min-width: 1760px) {
    .menu li.mnu-img ul.filho::after {
        right: -86% !important;
    }
}

/* AJUSTES NO IE */
@media screen and (-ms-high-contrast: active), (-ms-high-contrast: none) {
   .precoDeVazio {
        height: 15px;
    }
    #lembraSenha input[type='submit'] {
        height: 40px;
    }
    .fbits-responsive-carrinho-desconto-texto::before {
        line-height: 1.5 !important;
    }
    .spot .botoesSpot .spotIndisponivel .error {
        position: absolute;
        bottom: 4px;
    }
}

/* AJUSTES NO FIREFOX */
@-moz-document url-prefix() {
  .precoDeVazio {
        height: 14px;
    }
    span.customSelect {
        display: none !important;
    }
    .fbits-calculafrete .carrinhoInputBlock .btnCalculaFreteProduto {
        position: relative;
        top: 2px;
    }
    .coluna-fechamento #lembraSenha input[type="text"] {
        height: 35px;
    }
    .coluna-fechamento #lembraSenha input[type="submit"] {
        position: relative;
        top: 2px;
    }
    .spot .botoesSpot .spotIndisponivel .error {
        position: absolute;
        bottom: 4px;
    }
}

/* AJUSTES NO EDGE */
/* Microsoft Edge Browser 12+ (All) - @supports method */
@supports (-ms-ime-align:auto) {
    .spot .botoesSpot .spotIndisponivel .error {
        position: absolute;
        bottom: 4px;
    }
}

/* AJUSTES NO IPHONE */
@media (max-device-width : 667px) {
    body {
        font-family: Arial, sans-serif;
    }
    .paddingbox, .fbits-produto-informacoes-extras, .fbits-produto-informacoes-extras .ui-slider-tabs-list li a h3, 
    .contentBrand .alphabet-numeric li a, .contentBrand .marcas-row .marcas-char, .matriz-grupo-alterar-quantidade span, 
    .cartItem .fbits-campo-quantidade a, body.minhaConta.fbits-minhaConta input[type="submit"], body.minhaConta.fbits-minhaConta input[type="button"], 
    body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .meusPedidos .pedidoStatus .bt.recompra, 
    .wrapper .navegacao > div div#busca span#endereco-buscado, div[class^="como-chegar"] .como-chegar, .btcontinuar, .btfinalizar, .btlimpar {
        font-family: -apple-system, avenir-lt-55-roman, sans-serif;
        font-family: Arial, sans-serif;
    }
    ul.filtroFilho>li input[type="checkbox"] {
        visibility: hidden;
    }
    ul.filtroFilho>li input[type="checkbox"]::before {
        visibility: visible;
    }
}

/* Ajuste para botao lojas */
@media (min-width: 768px) {
	.div-busca-desktop {
		width: 36% !important;
		margin-right: 0 !important;
	}
	.lojas-wrapper {
		float:left;
		margin:0 4% 0 2%;
		width: 13%;
	}
}
.lojas-link {
	display:block;
	padding:10px 5px;
	background:#FFDE00;
	color:#000;
	font-size:12px;
	text-transform:uppercase;
	text-align:center;
}
@media (max-width:991px) {
	.lojas-link span {
		display:none;
	}
}
@media (max-width:767px) {
	.lojas-wrapper {
		display:none;
	}
}

/*TABLET RESPONSIVO*/

@media (min-width: 768px) {
	html {
	    font-size: 12px;
	}
	.head {
	    padding: 0 0 0.5rem;
	}
	.head .center {
	    padding: 0 2vw;
	}
	.align-items {
	    display: -webkit-flex;
	    -webkit-align-items: center;
	    display: flex;
	    align-items: center;
	}

	/* TOPO HEADER */
	.topBar {
	    background: #e9d237;
	    height: 35px;
	    line-height: 35px;
	    position: relative;
	    display: block;
	    display: none;
	}
	.topBar .center {
	    float: none;
	    padding: 0 2vw;
	    margin: auto;
	}
	.fbits-topo-left {
	    width: 10%;
	    min-width: 128px;
	    font-size: 12px;
	    font-size: .75rem;
	    color: #fff;
	    float: left;
	}
	.fbits-topo-left.fbits-telefones::before {
	    content: "";
	    width: 18px;
	    height: 17px;
	    display: inline-block;
	    margin: 0 8px 0 0;
	    background: url(../i/topo-fone.png) 0 0 no-repeat;
	    vertical-align: middle;
	}
	.fbits-topo-left.fbits-email {
	    width: 13%;
	    min-width: 166px;
	}
	.fbits-topo-left.fbits-email a {
	    color: #ffffff;
	}
	.fbits-topo-left.fbits-email::before {
	    content: "";
	    width: 18px;
	    height: 17px;
	    display: inline-block;
	    margin: 0 8px 0 0;
	    background: url(../i/topo-mail.png) 0 0 no-repeat;
	    vertical-align: middle;
	}
	.fbits-topo-right {
	    display: block;
	    float: right;
	    width: 50%;
	}

	.top-icons {
	    text-align: right;
	    margin: 0;
	    display: block;	   
	    width: 8%;
	    float: right;
	}
	.top-icons>div {	   
	    display: inline-block;	   
	}
	.top-icons.menu-mobile {	   
	    display: none;	   
	}

    .toplinks {
	    float: right;
	    width: 100%;
	    display: block;
	    font-size: 12px;
	    font-size: .75rem;
	    text-align: right;
	}
	.toplinks a {
		color: #fff;
		text-decoration: none;
		text-transform: uppercase;
	}
	.toplinks a:before {
		content: "|";
		margin-right: 4px;
    	margin-left: 0px;
	}
    .toplinks a:before {        
        margin-right: 8px;
        margin-left: 3px; 
    }
    .toplinks a:before {
    	content: "";
    	display: inline-block;
    	vertical-align: middle;
    	width: 18px;
    	height: 17px;
    	margin: 0 8px 0 0;
    }
    .toplinks a.fbits-link-historicoPedido:before {
        background: url(../i/topo-pedidos.png) 0 0 no-repeat;
    }
    .toplinks a.fbits-link-listaDesejos {
        margin-left: 20px;
    }
    .toplinks a.fbits-link-listaDesejos:before {
        background: url(../i/topo-desejos.png) 0 0 no-repeat;
    }
	
	/* HEADER CENTRO */
	.head .center .align-items {   
	    height: 80px;
	}
	.head.head-carrinho.headFechamento .center.fbits-center-responsivo {
	    display: -webkit-flex;
	    -webkit-align-items: center;
	    display: flex;
	    align-items: center;
	}
	.headerLogo {
	    float: left;
	    text-align: left;
	    width: 24%;
	    min-width: 244px;
	    display: block;
	    margin-right: 1%;
	}
	.headerLogo img {
	    width: 100%;
	    margin: 0;
	    max-width: 244px;
	}
	.headerSearch {
	    width: 50%;
	    float: right;
	    display: block;
	    padding: 0;
	    margin: 0.5rem 0;
	}
	.top-icons .ico-menu, .top-icons .ico-minha-conta, .top-icons .ico-lista-desejos, .top-icons .ico-busca {
		display: none;
	}
	.div-busca-topo-oculta {
	    display: none!important;
	}

    .div-busca-desktop {
	    display: block;
	    float: left;
	    width: 45%;
	    margin-right: 10%;
	}
    .btSearch {	    
	    cursor: pointer;
	}
    .headerSearch {
	    width: 100%;
	}
	.headerSearch input.inputSearch[type="text"] {
	    width: 100%;  
	    border: 1px solid #ffffff;
	    border-radius: 0;
	    height: 35px;
	    font-size: 16px;
	    font-size: 1rem;
	}

	.header-log {
	    display: block;
	    width: 14%;
	    margin-right: 1%;
	    position: relative;
	    /*padding: 12px 0;*/
	}
    .headerLogin {
	    display: inline-block;
	    margin: 0;
	    width: auto;
	    padding: 12px 0;
	    position: relative;
	    z-index: 99;
	}
    .headerLogin::before {
	    content: "";
	    width: 17px;
	    height: 23px;
	    display: inline-block;
	    /*background: url(../i/header-login.png) 0 0 no-repeat;*/
	    background: url(../i/minha-conta.svg) 0 0 no-repeat;
	    vertical-align: middle;
	    margin-left: -23px;
	    margin-right: 0;
	}
    .loginHead {
	    max-width: inherit;
	    min-width: 142px;
	    width: 85%;
	    margin: 0;
	    margin-top: 0;
	    margin-bottom: 0;
	    line-height: 14px;
	    text-align: left;
	    padding-right: 0;
	    font-size: 16px;
	    font-size: 1rem;
	    color: #ffffff;
	    vertical-align: middle;
	    display: inline-block;
	}
    .loginHead .textloginp {
	    text-align: center;
	}
	.loginHead img.fbits-usuario-fotoFacebook {
	    position: absolute;
        top: 8px;
        left: -41px;
        width: 36px;
	}
	.fixed-bar .loginHead img.fbits-usuario-fotoFacebook {
	    left: -26px;
	}
	.headerLogin a {
	    color: #e9d237;
	    text-decoration: underline;
	    font-weight: 700;
	}
	.headerLogin a:last-child {
	    display: block;
        text-align: left;
	}
	.toplinks .headerLogin a:before {
		display: none;
	}
	.headerLogin a.fbits-login-link-cadastro:before {
	    content: "ou";
		display: inline-block;
		margin-right: 3px;
		color: #ffffff;
	}
	.headerLogin a.fbits-login-link-cadastro:after {
        content: "";
        width: 9px;
        height: 6px;
        display: inline-block;
        margin-left: 5px;
        background: url(../i/dropdown-minha-conta.svg) 0 0 no-repeat;
        /*background: url(../i/seta-login.png) 0 0 no-repeat;*/
	}
	.header-log .header-sublog {
        display: none;
		position: absolute;
		left: 0;
		top: 52px;
		background-color: #ffffff;
		padding: 7px;
		font-size: 14px;
		font-size: 0.875rem;
		line-height: 0.875rem;
		width: 100%;
		max-width: 134px;
		border-top: solid 9px #0d0c0d;
		border: solid 1px #bebebe;
	}
	.header-log .header-sublog::before {
        display: block;
        content: "";
        width: 11px;
        height: 5px;
        background: url(../i/header-busca-seta.png) center 0 no-repeat;
        position: absolute;
        top: -5px;
        /*right: 29%;*/
        right: 50%;
	}
	.header-log:hover .header-sublog {
        display: block;
        z-index: 99;
	}
	.header-log .header-sublog a {
        display: block;
        color: #000000;
        text-decoration: none;
        line-height: 0.875rem;
        margin-bottom: 0.5rem;
        text-align: left;
	}
	.header-log .header-sublog .head-entrar {
        width: 100%;
        text-align: center;
        background-color: #e9d237;
        display: block;
        padding: 0.4rem 0;
        color: #000000;
        margin-bottom: 0.5rem;
	}
	.header-log .header-sublog hr {
	    height: 1px;
	    background: #b3b3b3;
	    margin: -0.1rem 0 0.5rem;
	}
	
	/* Efeito Login/Carrinho Header */
	.black-box {
	    position: fixed;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
        background: #000;
        opacity: .7;
        display: none;
        z-index: 90;
	}
	.header-log:hover .black-box {
	    display: block;
	    -webkit-animation: show 0.5s;
	    -moz-animation: show 0.5s;
	    -o-animation: show 0.5s;
	    animation: show 0.5s;
	}
	.header-log .black-box:hover {
        display: none;
	    -webkit-animation: hide 0.5s;
	    -moz-animation: hide 0.5s;
	    -o-animation: hide 0.5s;
	    animation: hide 0.5s;
	}
	
	.carrinho.carrinhoHead .black-box {
	    z-index: 99;
	}
	
	.carrinho.carrinhoHead:hover > a {
	    z-index: 100;
	    position: relative;
	}
	
	.carrinho.carrinhoHead:hover .black-box {
	    display: block;
	    -webkit-animation: show 0.5s;
	    -moz-animation: show 0.5s;
	    -o-animation: show 0.5s;
	    animation: show 0.5s;
	}
	
	.carrinho.carrinhoHead .black-box:hover {
	    display: none;
	    -webkit-animation: hide 0.5s;
	    -moz-animation: hide 0.5s;
	    -o-animation: hide 0.5s;
	    animation: hide 0.5s;
	}
	
	/*@-webkit-keyframes show {*/
 /*       from {*/
 /*           opacity: 0;*/
 /*       }*/
 /*       to {*/
 /*           opacity: .7;   */
 /*       }*/
 /*   }*/
 /*   @-webkit-keyframes hide {*/
 /*       from {*/
 /*           opacity: .7; */
 /*           display: block;*/
 /*       }*/
 /*       to {*/
 /*           opacity: 0;*/
 /*           display: none;*/
 /*       }*/
 /*   }*/
    
 /*   @-moz-keyframes show {*/
 /*       from {*/
 /*           opacity: 0;*/
 /*       }*/
 /*       to {*/
 /*           opacity: .7;   */
 /*       }*/
 /*   }*/
 /*   @-moz-keyframes hide {*/
 /*       from {*/
 /*           opacity: .7; */
 /*           display: block;*/
 /*       }*/
 /*       to {*/
 /*           opacity: 0;*/
 /*           display: none;*/
 /*       }*/
 /*   }*/
    
 /*   @-o-keyframes show {*/
 /*       from {*/
 /*           opacity: 0;*/
 /*       }*/
 /*       to {*/
 /*           opacity: .7;   */
 /*       }*/
 /*   }*/
 /*   @-o-keyframes hide {*/
 /*       from {*/
 /*           opacity: .7; */
 /*           display: block;*/
 /*       }*/
 /*       to {*/
 /*           opacity: 0;*/
 /*           display: none;*/
 /*       }*/
 /*   }*/
	
	@keyframes show {
        from {
            opacity: 0;
        }
        to {
            opacity: .7;   
        }
    }
    @keyframes hide {
        from {
            opacity: .7; 
            display: block;
        }
        to {
            opacity: 0;
            display: none;
        }
    }
    /* Fim Efeito Login/Carrinho Header */

    .cart-sem-itens {
	    display: none;
	    width: 200px;
	    padding: 15px;
	    text-transform: none;
	    background: #FFF;
	    text-shadow: none;
	    color: #0F2134;
	    position: absolute;
	    top: 100%;
	    z-index: 3;
	    right: 0;
	    border-top: solid 9px #0d0c0d;
	    text-align: center;	  
	    webkit-box-shadow: 0 8px 12px 0 rgba(50,50,50,0.2);
	    -moz-box-shadow: 0 8px 12px 0 rgba(50,50,50,0.2);
	    box-shadow: 0 8px 12px 0 rgba(50,50,50,0.2);
	}
    .cart-sem-itens::before {
	    display: block;
        content: "";
        width: 11px;
        height: 5px;
        background: url(../i/header-busca-seta.png) center 0 no-repeat;
        position: absolute;
        top: -5px;
        right: 9%;
	}
	.carrinhoHead:hover .cart-sem-itens {
		display: block;
		z-index: 999;
	}
	.drill-down.fadeIn {
	    display: none;
	    width: 300px;
	    padding: 15px;
	    text-transform: uppercase;
	    background: #FFF;
	    text-shadow: none;
	    color: #0F2134;
	    position: absolute;
	    top: 100%;
	    /*top: 50px;*/
	    z-index: 100;
	    right: 0;
	    border: 0;
	    border-top: solid 9px #0d0c0d;
	    webkit-box-shadow: 0 8px 12px 0 rgba(50,50,50,0.2);
	    -moz-box-shadow: 0 8px 12px 0 rgba(50,50,50,0.2);
	    box-shadow: 0 8px 12px 0 rgba(50,50,50,0.2);
	}
	.drill-down.fadeIn ::before {
	    display: block;
        content: "";
        width: 11px;
        height: 5px;
        background: url(../i/header-busca-seta.png) center 0 no-repeat;
        position: absolute;
        top: -5px;
        right: 9%;
	}
	.carrinho:hover .drill-down.fadeIn, .fixed-bar .cart:hover .drill-down.fadeIn {
	    display: block;
	}
	.cartItens {
	    margin-left: 0;
	    max-height: 228px;
	    overflow-x: hidden;
	    overflow: auto;
	    padding: 0;
	    text-shadow: none;
	    width: 100%;
	}
	.cartItens::-webkit-scrollbar {
	    width: 8px;
	}
	 
	.cartItens::-webkit-scrollbar-track {
	    background: #bababa;
	    border-radius: 10px;
	}
	 
	.cartItens::-webkit-scrollbar-thumb {
	    border-radius: 10px;
	    background: #9a979c;
	}
	.top-icons .ico-carrinho {
	    display: block;
	    margin: 0;
	    width: auto;
	    text-align: right;
	}
	.top-icons .ico-carrinho:before {
		display: none;
	}
	.carrinho.carrinhoHead {
	    width: auto;
	    /*height: auto;*/
	    height: 100%;
	    margin: 0;
	    padding: 0;
	    /*padding: 10px 0 14px;*/
	    position: relative;
	    top: inherit;
	    font-size: 14px;
	    font-size: 0.875rem;
	    float: right;
	}
	.carrinho.carrinhoHead a {
		font-family: 'avenir-lt-55-roman', Arial, sans-serif;;
		font-weight: normal;
		width: auto;
	}
	.carrinho.carrinhoHead > a::before {
		content: "Meu Carrinho";
		color: #ffffff;
		font-size: 12px;
		font-size: 0.75rem;
		font-family: 'avenir-lt-55-roman', Arial, sans-serif;
	    position: absolute;
	    line-height: 12px;
	    width: 80px;
	    top: 0;
	    right: 0;
	    display: none;
	}
	.carrinhoHead .drill-down.fadeIn .cartTotalPrice + a {
	    width: 100%;
	}
	.carrinhoHead i.icon.icart {
	    display: inline-block;
	    font-style: normal;
	    width: 26px;
	    height: 24px;
	    font-family: 'icofont';	   
	    text-rendering: auto;
	    -webkit-font-smoothing: antialiased;
	    -moz-osx-font-smoothing: grayscale;
	    text-align: left;
	    line-height: 35px;
	    font-size: 35px;
	    position: relative;
	    color: #a3bd31;
	    font-weight: normal;
	    float: left;
	    /*background: url(../i/header-cart.png) 0 0 no-repeat;*/
	    background: url(../i/carrinho.svg) 0 0 no-repeat;
	    left: 0;
	    bottom: -5px;
	}
	.carrinhoHead i.icon.icart:before {	    
	    /*content: "";*/
	}
	.carrinho.carrinhoHead span.minicart-qtde-itens, .carrinho.carrinhoHead span.minicart-txt-itens {
		margin: 2px 0 0;
	}
	span.minicart-qtde-itens {
	    position: initial;
	    background: #e9d237;
	    color: #0d0c0d;
	    padding: 0;
	    width: auto;
	    min-width: 15px;
	    border-radius: 20px;
	    top: initial;
	    right: initial;
	    display: inline-block;
	    height: 15px;
	    line-height: 16px;
	    font-size: 13px;
	    font-size: 0.8125rem;
	    float: left;
	    padding-right: 0;
	    text-align: center;
	}
	span.minicart-qtde-itens:before {
		/*content: "(";*/
	}
	span.minicart-qtde-itens:after {
		/*content: ")";*/
	}
	span.minicart-txt-itens, span.minicart-valor-total-ext {
	    display: inline-block;
	    color: #fff;
	    height: 35px;
	    line-height: 35px;
	    font-size: 14px;
	    font-size: .875rem;
	    clear: none;
	    float: left;
	    display: none;
	}
	span.minicart-valor-total-ext {
	    font-size: 12px;
	    font-size: .75rem;
	    line-height: 36px;
	    display: none;
	}
	span.minicart-valor-total-ext:before {
    	content: "|";
	    padding-left: 5px;
	    padding-right: 5px;
	    display: inline-block;
	}
	.cartVazio  {	  
	    text-align: center;
	    height: 45px;
	    line-height: 45px;
	    width: 100%;
	}	
	.top-icons>div {
		font-family: 'avenir-lt-55-roman', Arial, sans-serif;;
	}
	.cartItem {
	    clear: both;
	    padding-top: 15px;
	    padding-bottom: 15px;
	    overflow: hidden;
	    position: relative;
	    width: 100%;
	    border-bottom: 1px solid #e7e7e7;
	}
	.cartImg {
	    float: left;
	    margin-right: 5px;
	    width: 100%;
	    max-width: 70px;
	}
	.carrinhoHead .arrowDown {
	    display: inline-block;
	    border-left: 4px solid rgba(0,0,0,0);
	    border-right: 4px solid rgba(0,0,0,0);
	    border-top: 5px solid #a3bd31;
	    margin-left: 5px;
	    display: none;
	}

	/* pop carrinho */
	.drill-down.fadeIn .cartProd, .drill-down.fadeIn .cartPrice {
		float: left;
		width: 180px;
		text-align: left;
		overflow: hidden;
	}
	.drill-down.fadeIn .cartProd {
	    display: inline-block;
	    font-weight: normal;
	    height: 28px;
	    line-height: 28px;
	    overflow: hidden;
	    text-align: left;
	    font-size: 12px;
	    font-size: .75rem;
	}
	.drill-down.fadeIn .cartPrice  {
	    text-align: left;
	    font-weight: normal;
	    height: 30px;
	    line-height: 30px;
	    float: left;
	    font-size: 13px;
	    font-size: 0.8125rem;
	}
	.fbits-campo-quantidade {
	    width: auto;
	    position: inherit;
	    float: left;
	    right: inherit;
	    margin-left: 0;
	}
	.fbits-campo-quantidade:before {
	    content: "Quant.:";
	    text-transform: none;
	    text-align: left;
	    float: left;
	    line-height: 25px;	   
	    font-size: 14px;
	    font-size: .875rem;
	    color: #959595;
	    margin-right: 5px;
	}
	.cartItem .fbits-campo-quantidade a {
	    border: solid 1px #bebebe;
	    color: #bebebe;
	    display: inline-block;
	    background: #fff;
	    height: 25px;
	    line-height: 25px;
	    padding-top: 0;
	    width: 25px;
	    position: initial;
	    vertical-align: middle;
	    float: left;
	    margin: 0;
	    font-size: 14px;
	    font-size: .875rem;
	}
	.cartItem .fbits-campo-quantidade a.fbits-remover {
	    border-radius: 0;
	    border-right: none;
	}
	.cartItem .fbits-campo-quantidade a.fbits-adicionar {
	    border-radius: 0;
	    border-left: none;
	}
	.matriz-grupo-alterar-quantidade span:hover, .cartItem .fbits-campo-quantidade a:hover {
	    background: #fff;
	    color: #e9d237;
	}
	.cartItem .fbits-valor {
	    border: 1px solid #bebebe;
	    border-radius: 0;
	    box-shadow: none;
	    display: inline-block;
	    color: #bebebe;
	    font-weight: normal;
	    height: 25px;
	    line-height: 24px;
	    margin-left: 0;
	    float: left;
	    margin-right: 0;
	    text-align: center;
	    width: 25px;
	}
	.cartItem .icon.remover.replace {
	    margin-top: 0;
	    position: inherit;
	    right: inherit;
	    background: url(../i/SVG-diversos/icone-remover-carrinho.svg) no-repeat;
	    width: 20px;
	    height: 25px;
	    background-size: 20px;
	    background-position: center;
	    font-size: 0;
	    float: right;
	}
	.cartTotalPrice {
	    padding: 0;
	    font-weight: normal;
	    text-align: right;
	    font-size: 16px;
	    font-size: 1rem;
	    text-transform: none;
	}
	.cartGo {
	    text-align: center;
	    background: #00bf5c;
	    color: #fff;
	    font-weight: normal;
	    width: 132px;
	    height: 35px;
	    line-height: 35px;
	    margin: 0;
	    float: right;
	    font-size: 12px;
	    font-size: 0.75rem;
	    border-radius: 0;
	    border-bottom: solid 3px #009a4a;
	}
	.cartGo:hover {opacity: 0.9;}
	/**/

	/*Menu*/
	/*import 1300*/
	.menu-container {
	    display: block;
	    background: transparent;
	    position: inherit;
	    height: auto;
	    overflow: inherit !important;
	    top: inherit;
	    left: inherit;
	    z-index: 10;
	}
	.ico-menu-fecha {
	    display: none;   
	}
	.menu-mobile-dynamic {
	    width: 100%;
	    height: auto;
	    overflow-x: inherit;
	    overflow-y: inherit;
	    padding: 0;
	    position: relative;
	    max-width: inherit;
	    background: #3a3a3a;
	    box-shadow: none;
	}
	.navbar-mobile.dynamic-content-headercustomerinfo {  
	    display: none;
	}
	span.arrowmenu { display:none;}
	.menu-container ul.menu {
	    clear: both;
	    display: table;
	    font-weight: normal;
	    height: auto;
	    overflow: visible;
	    position: relative;
	    margin: 0 auto;
	    text-transform: uppercase;
	    width: 100%;
	    max-width: 1280px;
	}
	.menu li {			
		list-style: none outside none;		
		margin: 0;
	}
	.menu li.item.raiz {
	    text-align: center;
	    border-bottom: 0;
	    display: table-cell!important;
	    vertical-align: middle;
	    min-width: 80px;
	    /*position: relative;*/
	    position: static;
	}
	.menu li:hover.item.raiz.submenu:after {
	    content: "";
	    width: 15px;
	    height: 7px;
	    display: block;
	    position: relative;
	    bottom: -6px;
	    z-index: 9999;
	    left: 50%;
	    margin-left: -7px;
	    margin-top: -7px;
	    background: url(../i/seta-menu-hover.png) 0 0 no-repeat;
	}
	.menu a {
		color: #fff;
		display: block;
		margin: 0;
		padding: 0;
	}
	.menu li.item.raiz a, .menu li.item.raiz span.todas-categorias, .menu li.item.raiz span.menu-geral {
	    width: 100%;
	    padding: 0;
	    line-height: 12px;
	    border-top: 3px solid transparent;
	    height: 40px;
	    line-height: 34px;
	    font-size: 14px;
	    font-size: 0.875rem;
	    padding-top: 0;
	}
	.menu li.item.raiz a img, .menu li.item.raiz span.todas-categorias img, .menu li.item.raiz span.menu-geral img {	  
	    /*display: block;*/
	    max-height: inherit;
	    max-width: 100%;
	    float: none;
	    margin: auto;
	    padding-bottom: 0;
	    display: inline-block;
	    vertical-align: middle;
	    padding: 0;
	    margin-right: 6px;
	    margin-top: -5px;
	}
	.menu li.item.raiz:hover a.menu-geral, .menu li.item.raiz:hover span.todas-categorias, .menu li.item.raiz:hover span.menu-geral {
	    color: #ffffff;
	    background-color: #3a3a3a;
	    border-top: 3px solid #e9d237;
	}
	.menu li.item.raiz:hover a.menu-geral img, .menu li.item.raiz:hover span.menu-geral img {
	    filter: grayscale(100%) brightness(100%);
	    opacity: 0.5;
	}	
	.menu ul.filho {
		display: none;
		margin: 0;
		padding: 0;		
		background: #fff;
	}
	.menu li.item.raiz ul.filho {
		position: absolute;
		top: 40px;
		background: #fff;
	    padding: 10px 20px;
	    width: 100%;
	    z-index: 9998;
	    border: none;
	    border-bottom: 4px solid #e9d237;
	    border-radius: 0;
	}
	.menu li.item.raiz > ul.filho {
	    /*min-width: 758px;*/
	    left: 0;
	}
	.menu li.item.raiz ul.filho li {
	    display: block;
	    position: relative;
	    height: auto;
	    min-height: 10px;
	    /*
	    min-height: inherit;
	    height: 32px;
	    min-height: 32px;
	    */
	}
	
	.menu li.item.raiz.mnu-img:hover ul.filho {
	    display: table;
	}
	.menu li.item.raiz.mnu-img ul.filho li.menu-geral-filho {
	    float: none;
	}
	.menu li.item.raiz.mnu-img ul.filho li.menu-geral-filho a {
	    text-align: center;
	    color: #0d0c0d;
	    text-transform: uppercase;
	    font-size: 13px;
	    font-size: 0.8125rem;
	    font-weight: 600;
	}
	.menu li.item.raiz.mnu-img ul.filho li.menu-geral-filho a img {
	    display: block;
	    margin: 0 auto 10px;
	}
	.menu li.item.raiz.mnu-img ul.filho li.menu-imagem {
	    width: auto;
	    display: table-cell;
	    transition: .5s;
	}
	.menu li.item.raiz.mnu-img ul.filho li.menu-imagem:hover {
	    opacity: .6;
	}
	.menu li.item.raiz.mnu-img ul.filho li.menu-geral-filho a:hover {
	    color: #e9d237;
	}
	.menu li.item.raiz.mnu-img ul.filho li.menu-geral-filho a:hover img {
	    opacity: 0.9;
	}

/*  MEGA MENU FULL-WIDTH  */

    .menu li.mnu-img ul.filho::before {
        content: "";
        height: 100%;
        width: 100%;
        background: #ffffff;
        display: inline-block;
        position: absolute;
        top: 0;
        left: -50%;
        border-bottom: 4px solid #e9d237;
    }

    .menu li.mnu-img ul.filho::after {
        content: "";
        height: 100%;
        width: 100%;
        display: inline-block;
        position: absolute;
        top: 0;
        right: -80%;
        border-bottom: 4px solid #e9d237;
        background-color: #FFF;
    }


    .menu li.mnu-img.mmu-cordas ul.filho::after {
        background: url('https://recursos.madeinbrazil.com.br/MediaCenter/menu-bg-intrumentos-corda.jpg') top left no-repeat;    
    }
    .menu li.mnu-img.mmu-bateria ul.filho::after {
        background: url('https://recursos.madeinbrazil.com.br/MediaCenter/menu-bg_bateria_percussao.jpg') top left no-repeat;    
    }
    .menu li.mnu-img.mmu-tecnologia ul.filho::after {
        background: url('https://recursos.madeinbrazil.com.br/MediaCenter/menu-bg_audio_tecnologia.jpg') top left no-repeat;    
    }
    .menu li.mnu-img.mmu-sopro ul.filho::after {
        background: url('https://recursos.madeinbrazil.com.br/MediaCenter/menu-bg_arcos_sopro.jpg') top left no-repeat;    
    }
    .menu li.mnu-img.mmu-teclas ul.filho::after {
        background: url('https://recursos.madeinbrazil.com.br/MediaCenter/menu-bg_instrumentos_teclas.jpg') top left no-repeat;    
    }
    .menu li.mnu-img.mmu-presentes ul.filho::after {
        background: url('https://recursos.madeinbrazil.com.br/MediaCenter/menu-bg_presentes_souvinir.jpg') top left no-repeat;    
    }
    .menu li.mnu-img.mmu-promocionais ul.filho::after {
        background: url('../i/menu-bg_kits_promocionais.jpg') top left no-repeat;    
    }
	
/*  FIM MEGA MENU FULL-WIDTH  */
	
	
	.menu li.item.raiz.todas-categorias ul.filho li a {
		color: #ffffff;
	}
	.menu li.item.raiz.todas-categorias ul.filho li a::after {
		content: "";
		width: 5px;
		height: 9px;
		display: block;
		background: url(../i/seta-menu-categoria.png) right 50% no-repeat;
        position: absolute;
        right: 10px;
        margin-top: -12px;
	}
	.menu li.item.raiz.todas-categorias ul.filho ul.filho li a::after {
		display:none;
	}
	.menu li.item.raiz ul.filho li a {
		text-align: left;
	}	
	.menu li:hover>ul {
		display: block;
	}
	.menu li.item.raiz ul.filho li.menu-imagem {
	    float: right;
	    width: 40%;
	    /*height: 270px;*/
	    padding: 0;
	}
	.menu ul li {
		float: none;
		margin: 0;
		padding: 0;
		z-index: 3;
		text-shadow: none;
	}
	.menu .wideImg.raiz ul.filho {
		padding-right: 20px;
		width: 528px;
	}
	.menu li.item.raiz ul.filho li.menu-imagem a.menu-imagem {
	    height: 100%;
	    padding: 0;
	    width: 100%;
	}
	.menu li.item.raiz ul.filho li.menu-imagem a.menu-imagem img {    
	    padding: 0;
	}
	
	.menu li.item.raiz ul.filho li.menu-geral-filho {
	    width: auto !important;
	    min-height: inherit;
	    height: auto;
	    display: table-cell!important;
	    clear: none;
	}
	.menu li.item.raiz ul.filho li.menu-geral-filho a  {
	    padding: 0;
	    text-align: left;
	    border: 0;
	    text-transform: none;
        height: auto;
        line-height: 12px;
        font-size: 12px;
        font-size: .75rem;
        padding: 4px 0;
        color: #6d6d5f;
	}
	.menu li.item.raiz.submenu ul.filho li.menu-geral-filho > span  {
        font-size: 0;
        height: 10px;
        display: block;
	}
	.menu li.item.raiz.submenu ul.filho li.menu-geral-filho a  {
        font-size: 0;
        height: 10px;
	}
	.menu li.item.raiz li.menu-geral-filho {
        padding: 0;
    }
	.menu li.item.raiz li.menu-geral-filho ul.filho {
	    display: block;
	    border: 0;
	    padding: 0;
	    position: inherit;
	    top: inherit;
	    left: inherit;
	}
	.menu li.item.raiz ul.filho li ul li.menu-geral-neto a.menu-geral-neto {
	    text-transform: none;    
	    height: auto;
	    line-height: 12px;
	    font-size: 12px;
	    font-size: 0.75rem;
	    padding: 4px 0;
	    /*
	    height: 32px;
	    line-height: 32px;
	    */
	}
	.menu li.item.raiz ul.filho li ul li.menu-geral-neto a.menu-geral-neto:before {
	    content: "• ";
	    color: #c9c8c8;
	    padding-right: 15px;
	    display: none;
	}
	.menu li.item.raiz ul.filho li ul li.menu-geral-neto a.menu-geral-neto:hover {
	    color: #0F2134;
	}
	
	/* todas as categorias */
	.menu .todas-categorias {
	    position: relative;
	}
	.menu .todas-categorias li.todas-categoria-sub {
	    float: left;
	    margin: 0;
	    min-height: 260px;
	    text-align: left;
	    width: 100%!important;
	    position: static;
	}
	.menu .todas-categorias li.todas-categoria-sub:hover > a {
	    color: #212121 !important;
	    background-color: #e9d237;
	}
    .menu .raiz.todas-categorias ul.filho {
	    width: 100%!important;
	    padding: 5px 15px 15px!important;
	    left: 0;
	}	
	.menu .todas-categorias li.todas-categoria-sub {
		float: left;
		margin: 0;
		min-height: none;
		text-align: left;
		width: 100%!important;
	}
	.menu .raiz.todas-categorias a.todas-categoria-sub {
		font-weight: bold;
		height: auto;
		margin-bottom: 0;
		width: auto;
		padding: 7px 7px 7px 15px;
	}
	.menu .raiz.todas-categorias .todas-categoria-sub ul {
	    width: 100%!important;	    
	    border: 0!important;
	    box-shadow: none;
	    background: rgba(0,0,0,0)!important;
	    display: block;
	    margin-left: 0!important;
	    margin-top: 0!important;
	    padding: 0!important;
	    position: initial!important;
	    left: initial!important;
	    top: initial!important;
	    float: left;
	    height: auto;
	}	
	.menu .raiz.todas-categorias li.todas-categoria-item {
		display: block!important;
		float: none;
		height: 19px;
		padding-right: 2px;
		width: 100%;
	}
	.menu .raiz.todas-categorias a.todas-categoria-item {
		color: #676767;	
		font-weight: bold;
		height: auto;
		line-height: 0.75rem;
		margin-bottom: 0;
		text-transform: uppercase;
		white-space: normal;
		padding: 4px 0;
		border: none;
	}	
	.menu li.item.raiz span.todas-categorias::before {
	    content: "";
	    display: inline-block;
	    width: 19px;
	    height: 21px;
	    vertical-align: middle;
	    /*background: url(../i/menu-todas.png) 0 0 no-repeat;*/
	    /*margin: -3px 6px 0 0;*/
	    background: url(../i/menu.svg) 0 0 no-repeat;
	    margin: 7px 4px 0 2px;
	    background-size: 15px;
	    
	}	
	.menu li.item.raiz span.todas-categorias::after {
	    content: "";
	    display: inline-block;
	    width: 9px;
	    height: 6px;
	    vertical-align: middle;
	    /*background: url(../i/seta-categorias.png) 0 0 no-repeat;*/
	    background: url(../i/seta-categorias.svg) 0 0 no-repeat;
	    margin: -3px 0 0 3px;
	}
	.menu li.item.raiz.todas-categorias ul.filho .filho {
		display: none;
	}
	.menu li.item.raiz.todas-categorias ul.filho .item.todas-categoria-sub:hover .filho {
		display: block;
        position: absolute !important;
        top: 0 !important;
        right: -250px !important;
        background-color: #ffffff !important;
        padding: 11px 15px 10px !important;
        border-bottom: 4px solid #e9d237 !important;
        /*min-height: 102.5%;*/
        /*min-height: 385px;*/
        min-height: 405px;
	}
	.menu li.item.raiz.todas-categorias > ul.filho {
	    background-color: #212121;
	    max-width: 250px;
	    padding: 5px 0 15px !important;
	    min-height: 405px;
	    /*min-height: 385px;*/
	}
	.menu li.item.raiz.todas-categorias ul.filho .item.todas-categoria-sub .filho li a {
	    color: #0d0c0d;
	}
	.menu li.item.raiz.todas-categorias ul.filho .item.todas-categoria-sub .filho li a:hover {
	    color: #e9d237;
	}
	.menu li.item.raiz.todas-categorias ul li {
        position: static;
    }
    /* 
	.menu .raiz.todas-categorias .todas-categoria-sub ul::-webkit-scrollbar {
	    width: 8px;
	}	 
	.menu .raiz.todas-categorias .todas-categoria-sub ul::-webkit-scrollbar-track {
	    background: #bababa;
	    border-radius: 10px;
	}	 
	.menu .raiz.todas-categorias .todas-categoria-sub ul::-webkit-scrollbar-thumb {
	    border-radius: 10px;
	    background: #9a979c;
	}
	*/

	.menu li.item.raiz.menu-promo {
		padding-right: 2vw;
	}
	.menu li.item.raiz.menu-promo a {
		background: #a3bd31;
		border-radius: 4px;
		border-top: none;
		height: 41px;
		line-height: 41px;
		padding-top: 0;
	}
	.menu li.item.raiz.menu-promo:hover a {
		background: #ffffff;
		border-top: none;
		color: #a3bd31;
	}
	.menu li.item.raiz.menu-promo:hover a.menu-geral::before, .menu li.item.raiz.menu-promo:hover span.menu-geral::before {
		content: "";
		width: 28px;
		height: 25px;
		display: inline-block;
		background: url(../i/menu-promo-hover.png) 0 0 no-repeat;
		float: none;
	    padding-bottom: 0;
	    vertical-align: middle;
	    margin: auto;
	    padding: 0;
	    margin-right: 10px;
	    margin-top: -3px;
	}
	.menu li.item.raiz.menu-promo:hover a.menu-geral img, .menu li.item.raiz.menu-promo:hover span.menu-geral img {
		display: none;
	}

	/* HEADER FECHAMENTO */
	.head.head-carrinho {
	    /*border-bottom: 3px solid #e9d237;*/
	}
	.head.head-carrinho.headFechamento {
	    padding: 1.5rem 0;
	    margin: 0;
	}
	.fechamento .headerLogo {
	    text-align: left;
	}
	.fechamento .headerLogo img, .fbits-minhaConta .headerLogo img {
	    max-width: 244px;
	}
	.fechamento .sacNavHeader.fbits-telefones .fechamento-tel, .fechamento .sacNavHeader.fbits-telefones .fechamento-seguro,
	.fbits-minhaConta .sacNavHeader.fbits-telefones .fbits-minhaConta-tel, .fbits-minhaConta .sacNavHeader.fbits-telefones .fbits-minhaConta-seguro {
		width: auto;
		position: relative;
		float: right;
		padding-left: 43px;
	}
	.fbits-minhaConta .sacNavHeader.fbits-telefones .fechamento-tel, .fbits-minhaConta .sacNavHeader.fbits-telefones .fechamento-seguro {
	    width: auto;
	    position: relative;
	    float: right;
	    padding-left: 43px;
	}
	.fechamento .sacNavHeader.fbits-telefones .fechamento-seguro, .fbits-minhaConta .sacNavHeader.fbits-telefones .fechamento-seguro {
		margin-left: 40px;
	}
	.fechamento .sacNavHeader.fbits-telefones .fechamento-tel span, .fechamento .sacNavHeader.fbits-telefones .fechamento-seguro span, 
	.fbits-minhaConta .sacNavHeader.fbits-telefones .fechamento-tel span, .fbits-minhaConta .sacNavHeader.fbits-telefones .fechamento-seguro span {
	    background-color: #0d0c0d;
	    color: #ffffff;
	    height: auto;
	    float: none;
	    line-height: 16px;
	    padding: 0 0;
	    font-size: 12px;
	    font-size: 0.75rem;
	    width: 100%;
	    display: block;
	    text-align: center;
	    text-transform: uppercase;
	}
	.fechamento .sacNavHeader.fbits-telefones .fechamento-tel span:first-child, .fbits-minhaConta .sacNavHeader.fbits-telefones .fechamento-tel span:first-child {
	    color: #ffffff;
	}
	.fechamento .sacNavHeader.fbits-telefones .fechamento-tel span:last-child, .fbits-minhaConta .sacNavHeader.fbits-telefones .fechamento-tel span:last-child {
	    font-size: 18px;
	    font-size: 1.125rem;
	}
	.fechamento .sacNavHeader.fbits-telefones .fechamento-seguro span:first-child, .fbits-minhaConta .sacNavHeader.fbits-telefones .fechamento-seguro span:first-child {
	    font-size: 15px;
	    font-size: 0.9375rem;
	    text-transform: uppercase;
	}
	.fechamento .sacNavHeader.fbits-telefones .fechamento-seguro span:last-child, .fbits-minhaConta .sacNavHeader.fbits-telefones .fechamento-seguro span:last-child {
	    font-size: 10px;
	    font-size: 0.625rem;
	}
	.fechamento .fechamento-tel::before, .fechamento .fechamento-seguro::before, .fbits-minhaConta .fechamento-tel::before, .fbits-minhaConta .fechamento-seguro::before {
	    content: "";
	    width: 23px;
	    height: 24px;
	    display: inline-block;
	    margin-right: 10px;
	    position: absolute;
	    left: 10px;
	    top: 50%;
	    margin-top: -12px;
	}
	.fechamento .fechamento-tel::before, .fbits-minhaConta .fechamento-tel::before {
	    /*background: url(../i/head-fec-fone.png) 0 0 no-repeat;*/
	    background: url(../i/telefone-checkout.svg) 0 0 no-repeat;
	    background-size: 22px;
	}
	.fechamento .fechamento-seguro::before, .fbits-minhaConta .fechamento-seguro::before {
	    background: url(../i/seguranca-checkout.svg) 0 0 no-repeat;
	    background-size: 18px;
	}


	/* home */
	.hide {
		display: none;
	}
	.fbits-home .fbits-banner-topo {
	    background-color: #3a3a3a;
	    margin-bottom: 17px;
	}
	.fbits-home .fbits-banner-topo a {
	    width: 100%;
	    display: block!important;
	}
	#carrossel-fabricantes.jcarousel li {
	    width: 22.5vw;
	}
	.carrossel-fabricantes img {	    
	    opacity: 0.5;
	    -webkit-filter: grayscale (100%);
	    filter: grayscale (100%);
	}
	.carrossel-fabricantes img:hover {
	    opacity: 1;
	    -webkit-filter: grayscale (0%);
	    filter: grayscale (0%);
	}

	/* banner center lower */
	.fbits-banner-centrolower a {
	    width: 33.333%;	   
	}
	.fbits-home .fbits-banner-centrolower a {
	    width: 24.25%;
	    margin-right: 0.75%;
	}
	.fbits-home .fbits-banner-centrolower a:last-child {
	    margin-right: 0;
	}
	.fbits-home .fbits-banner-centrolower a img {
	    max-width: none;
	}
	/**/
    
    .fbits-home .fbits-banner-centrolower a:hover, .fbits-home .fbits-banner-rodape a:hover {
	    opacity: 0.7;
	}
    
	/* banner rodapé */
	.fbits-home .fbits-banner-rodape a {
	    width: 49.5%;
	    margin-right: 1%;
	    margin-bottom: 1%;
	}
	.fbits-home .fbits-banner-rodape a:nth-child(2) {
	    margin-right: 0;
	}
	.fbits-home .fbits-banner-rodape a:last-child {
	    margin-right: 0;
	    width: 100%;
	}
	.fbits-home .fbits-banner-rodape img {
	    max-width: none;
	}
	/**/

	.bt-prev-fab, .bt-next-fab {  
	    width: 5vw;   
	}
	#carrossel-fabricantes.jcarousel {  
	    width: 90vw;   
	}
	.carrossel-fabricantes {
	    margin-bottom: 3.75rem;
	}
	.slidesjs-pagination {display: block !important;}
	.content.produto {
		padding: 0;
	}
	.cf:before, .cf:after {
		content: " ";
		display: table;
	}

	/*voltar ao topo*/
	.voltarTopo {
	    width: 60px;
	    height: 60px;
	    line-height: 60px;
	}
	a.voltarTopo:before {
	    content: "\f3d8";
	    padding: 0;
	    padding-right: 0;
	    font-family: "Ionicons";
	    text-rendering: auto;
	    -webkit-font-smoothing: antialiased;
	    -moz-osx-font-smoothing: grayscale;
	    speak: none;
	    font-variant: normal;
	    float: left;
	    width: 100%;
	    line-height: 32px;
	    display: block;
	    height: 28px;
	    font-size: 20px;
	}
	a.voltarTopo:after {
	    content: "TOPO";
	    font-family: Arial;	   
	    padding: 0;
	    float: left;
	    width: 100%;
	    line-height: 20px;
	    height: 20px;
	    display: block;
	}
	/**/

	/* Produtos vistos e Produtos pesquisados*/
	.produtosVistos {
	    clear: none;
	    width: 49%;
	}
	.produtosAcessados.produtosAcessadosGrid {
	    width: 100%;
	}
	div#dvTermosPesquisados {
	    clear: none;
	    width: 49%;
	}
	/**/
	
	/* Categorias */
	.filtroTitle.title {
	    display: none;
	}

	/* Produto */
	#bodyProduto #fixed-bar {
    	display: none;
    }
	.bread {
	    line-height: 30px;
	    text-align: left;
	    padding: 0 2vw;
	    font-size: 16px;
	    font-size: 1rem;
	}
	.fbits-categoria .interna.cf, .busca .interna.cf {	  
	    padding: 0 2vw;
	}
	.detalhe-produto-itens {
	    display: block;
	}
	.colunaProduto, .coluna-listacompra {
	    float: left;
	    position: relative;
	    width: 50%;
	}
	.colunaProduto.coluna1, .coluna-listacompra.coluna1 {
	    width: 45%;
	    /*padding-right: 5px;*/
	    margin-right: 5%;
	    display: block;
	}
	.colunaProduto .fbits-etiquetas-sequencial {
	    /*right: 2.5%;*/
	    right: 0;
	    padding-top: 1rem;
	}
	div[id^="view-item-quantidade"] {
	    display: inline-block;
	    width: 10%;
	    min-width: 40px;
	    clear: none;
	    margin-top: 0.5rem;
	    display: none;
	}
	.produtoInfo-title.colunaWide {
	    display: block;
	    float: left;
	    width: 50%;
	    padding: 0;
	}
	#bodyListaCompra .produtoInfo-title.colunaWide > span {
	    display: block;
	    width: 100%;
	}
	#bodyListaCompra .content.listacompra .fbits-avaliacao {
	    float: left;
	}
	#bodyListaCompra .coluna-listacompra.coluna2 {
	    border-top: solid 1px #bebebe;
	    border-bottom: solid 1px #bebebe;
        padding: 1rem 0;
	}
	#bodyListaCompra .fbits-componente-listacompra-preco {
	    width: 50%;
	    margin-bottom: 0;
	}
	#bodyListaCompra .listacompra-comprarselecionados {
	    max-width: 180px;
        float: none;
        margin-bottom: 0;
	}
	#bodyListaCompra .coluna-listacompra.coluna3 .listacompra-comprarselecionados {
	    max-width: none;
	}
	
	/* Ajustes Thumb */
	#bodyListaCompra .fbits-componente-imagemvariantethumb .jcarousel li, #bodyListaCompra .fbits-imagensMinicarrossel-item{
    float: none;
    }
    #bodyListaCompra .fbits-componente-imagemvariantethumb .jcarousel li a.zoom-thumbnail, #bodyListaCompra .fbits-imagensMinicarrossel-item a.zoom-thumbnail {
        display: inline-block;
        width: auto;
    }
    #bodyListaCompra .fbits-componente-imagemvariantethumb .jcarousel li a.zoom-thumbnail, #bodyListaCompra .fbits-imagensMinicarrossel-item a.zoom-thumbnail {
        width: 70px;
	    margin-right: 3px;
	    margin-left: 3px;
	    margin-top: 1rem;
    }
    /**/
    
	.listacompra .prodTitle {	    
	    width: 60%;
	    float: left;
	}
	.content.listacompra .fbits-avaliacao {
	    float: right;
	    width: auto;	   
	}
	.produto-imagem-eazyZoom {
	    position: relative;
	    display: block;
	    width: 100%;
	    float: left;
	    height: auto;
	}
	.fbits-componente-imagem {
	    display: block;
	    width: 100%;
	    float: left;
	    height: auto;
	    /*max-width: 500px;*/
	}
	.productVideo {
		display: none;
		padding-top: 2px;
	}
	.verDetalhes {
	    /*display: block;*/
	    width: 100%;
	    height: auto;
	    clear: both;
	    margin: 0.625rem 0 1.25rem;
	    overflow: hidden;
	    text-align: center;
	    display: none;
	}
	.verDetalhes i.icon.icoVerDetalhes {
	    display: block;
	    float: left;
	    width: 100%;
	    color: #0F2134;
	    height: 18px;
	    line-height: 18px;
	}
	.verDetalhes i.icon.icoVerDetalhes:before {
	    /*
	    content: "\f002";
	    text-rendering: auto;
	    -webkit-font-smoothing: antialiased;
	    -moz-osx-font-smoothing: grayscale;
	    font-family: 'FontAwesome';
	    font-style: normal;
	    font-size: 13px;
	    */
	    content: "";
	    display: inline-block;
	    width: 13px;
	    height: 13px;
	    float: none;
	    background: url(../i/produto-lupa.png) 0 0 no-repeat;
	    vertical-align: middle;
	    margin-right: 10px;
	}
	.verDetalhes i.icon.icoVerDetalhes:after {
	    content: "clique na imagem e veja mais detalhes";
	    display: inline-block;
	    font-style: normal;
	    font-size: 12px;
	    font-size: 0.75rem;
	    color: #707070;
	}
	form#formIndica table {
	    width: 100%;
	}
	.colunaProduto .fbits-produto-imagensMinicarrossel-item, .coluna-listacompra .fbits-produto-imagensMinicarrossel-item {
		display: inline-block!important;
		position: relative!important;		
	}
	.fbits-produto-imagens .jcarousel-prev-horizontal {
        left: 0;
    }
	.fbits-produto-imagens .jcarousel-next-horizontal {
        right: 0;
    }
	.prodTitle {
	    margin: 0 0 0.75rem 0;
	    width: 100%;
	    line-height: 25px;
	    overflow: hidden;
	    font-size: 30px;
	    font-size: 1.875rem;
	}
	.colunaProduto.coluna2, .coluna-listacompra.coluna2 {
	    margin-top: 0;
	    display: block;
	    /*border-top: solid 1px #bebebe;*/
	}
	.colunaProduto.coluna2 .produto-comprar {
        width: 50%;
        text-align: right;
    }
	.colunaProduto.coluna2 .bt.comprarProduto {
        max-width: 322px;
    }
	.colunaProduto {
	    display: block;
	    padding-top: 1rem;
	    margin: 0;
	    overflow: inherit;
	    /*padding-left: 20px;*/
	}
    .zoomWindow {
	    border: 1px solid rgb(136, 136, 136) !important;
	}
	.fbits-confirmacao-acoes a.bt.btcontinuar {
	    width: 100%;
	    float: left;
	    margin-top: 0;
	    max-width: 260px;
	}
	.fbits-confirmacao-acoes a.bt.btfinalizar {
	    width: 100%;
	    max-width: 260px;
	    clear: none;
	    margin: 0;
	}
	.produto .fbits-forma-pagamento {
	    width: 50%;
        clear: none;
	}
	.prodVariante {
		clear: both;
		width: 100%;
		position: relative;		
	}
	#divItensCombo-0 {
		margin-top: 5px;
	}
	.prodVariante .erro {
		display: none;
		position: absolute;
		/*width: 184px;*/
		border: 2px red solid;
		background: white;
		z-index: 999;
		left: 0;
		/*top: -26px;*/
		top: 9.375rem;
		padding: 10px;
		font-size: 18px;
		font-size: 1.125rem;
	}
	.prodVariante .summaryDesktop, #ulFrete .summaryDesktop, .prodVariante .summary, #ulFrete .summary {  
	    font-size: 17px;
	    font-size: 1.063rem;
	    line-height: 15px;
	}
	.details .details-content p {
	    font-size: 17px;
	    font-size: 1.063rem;
	}
	.optionAtributos, .optionAtributos ul, .optionAtributos li {
		display: inline;
	}
	#divItensCombo-0 ul, #divItensCombo-0 li {
		display: inline;
	}
	.details .details-content {  
	    padding: 5px 0 0 15px;
	}
	.details.carrinhoInputBlock .details-content {  
	    padding: 15px 0;
	}
	.details .details-content:before {
	    /*
	    width: 87px;
	    display: inline-block;
	    background: url(../i/frete-icon.png) 0 50% no-repeat;
	    float: left;
	    margin-right: 1.688rem;
	    */
	}
	.details-content .simule {
	    text-align: left;
	    display: inline-block;
	    width: 30%;
	    /*min-width: 128px;*/
	    vertical-align: middle;
	}
	.details-content #txtCalculaFreteProduto {
	    clear: none;
	    width: 50%;
	    max-width: 291px;
        display: inline-block;
        float: none;
        font-size: 16px;
        font-size: 1rem;
	}
	.simule {   
	    padding-left: 0px;  
	    margin-right: 0;
	    width: 62%; 
	    font-size: 16px;
	    font-size: 1rem;
	}
	.error, .combinacaoInexistente {
	    clear: both;        
	}
    .colunaProduto .fbits-calculafrete .errosFrete.error, .coluna-listacompra .fbits-calculafrete .errosFrete.error {   
	    padding-left: 20%;
	}
	.colunaProduto .precoVista, .fbits-parcelamento .precoVista {
	    font-size: 16px;
	    font-size: 1rem;
	}
	.colunaProduto .precoDe, .fbits-componente-listacompra-preco-de, .listacompra-produtos-precode {
	    font-size: 16px;
	    font-size: 1rem;
	}
	#cepCarrinho .resultado-frete {
        border: none;
        border-top: 1px solid #bebebe;
        border-bottom: 1px solid #bebebe;
        border-radius: 0;
        box-shadow: none;
        margin-left: 0;
        margin-top: 10px;
        padding: 27px 3px 3px 3px;
        float: left;
        position: relative;
    }
    #cepCarrinho .resultado-frete::before, #cepCarrinho .resultado-frete::after {
    	font-weight: 600;
        width: 50%;
        text-align: left;
        display: block;
        position: absolute;
        top: 3px;
    }
    #cepCarrinho .resultado-frete::before {
    	content: "frete";
    }
    #cepCarrinho .resultado-frete::after {
    	content: "prazo";
    	right: 0;
    }
	#cepCarrinho .resultado-frete #valorFrete {
        float: left;
        width: 50%;
        text-align: left;
    }
	#cepCarrinho .resultado-frete .frete-prazo {
        float: left;
        width: 50%;
        text-align: left;
    }
	div#msgEstoqueDisponivel {
	    font-size: 16px;
	    font-size: 1rem;
	}
	.atributo-div {
	    color: #100f0f;
	    float: left;	   
	    font-weight: normal;
	    text-transform: uppercase;
	    margin: 0 10px 0 0;
	    line-height: 35px;
	}
	.atributo-div:after {
		content: ":";
	}
	.fbits-titulo-quantidade.atributo-div {
	    line-height: 38px;
	    display: none;
	}
	.optionProduct {
	    min-width: 41px;
	    height: 51px;
	}
	select.optionProduct {
	    /*width: 3rem;*/
	    width: 99%;
	}
	.produto-comprar {
        clear: none;
        margin-top: 11px;
        width: 39%;
        text-align: right;
    }

	.acenter {
		text-align: center;
	}	
	.comprarProduto, .btGrande {		
		padding: 0 25px;
		text-transform: none;
		width: 200px;
	}
	.comprarProduto {
		margin-top: 0;
	}
	.avisoIndisponivel  {
	    background: #f9f9f9;
	    border: 1px solid #ddd;
	    border-radius: 6px;
	    margin-bottom: 12px;
	    margin-top: 10px;
	    padding-left: 18px;
	    padding-top: 10px;
	    text-align: left;
	    float: left;
	    width: 100%;
	    clear: both;
	}
	.avisoIndisponivel h3 {
		color: #4d8118;	
		text-transform: none;
	}
	.avisoIndisponivel p {
		padding-top: 3px;
	}
	.avisoIndisponivel input[type="text"] {
        width: 30%;
		margin-bottom: 0;
		margin-right: 0.5%;
    }
    .avisoIndisponivel #btnEnviarAviseMe {
	    width: auto;
    }
	.comprarMini, .btMedium {
		margin-top: 15px;
		padding: 0;
		min-width: 50px;
		text-align: center;
		padding: 0 10px;
	}
	#btnEnviarAviseMe {
		margin-bottom: 10px;
	}
	.fbits-produto-informacoes-extras {
		/*padding: 2rem 0;*/
		padding: 0 0 2rem;
	}
	.fbits-produto-informacoes-extras .informacao-abas {
		padding: 0;
		margin-bottom: 2rem;
	}
    .fbits-produto-informacoes-extras .ui-slider-tabs-list li {
        border-radius: 4px 4px 0 0;
    }
    .fbits-produto-informacoes-extras .ui-slider-tabs-list li a {
        font-size: 18px !important;
        font-size: 1.125rem !important;
    }
    .ui-slider-tab-content {
        padding: 2rem 3rem !important;
    }
	.infoProd {
		line-height: 1.5;
	}
	.paddingbox {
		text-align: justify;
		padding: 0 3.125rem;
	}
	.paddingbox, .fbits-produto-informacoes-extras {
	    font-size: 18px;
        font-size: 1.125rem;
        line-height: 18px;
	}
    .texto-descricao td {
        width: 50%;
        vertical-align: top;
    }
    .texto-descricao td li {
        list-style: none;
        display: inline-block;
        margin-right: 1rem;
        margin-left: 0;
    }
	.carousel {
		position: relative;		
	}
	#produtos-relacionados.jsCarrousel ul {
		width: 10000px;
		position: relative;
	}	
	.right {
		float: right;
	}
	.left {
		float: left;
	}
	.pontosAvaliacao  {
	    text-align: left;
	    padding: 6px 0 0;
	    width: 56%;
	}
	.btAvaliar {
	    width: 42%;
	    float: right;
	    clear: none;
	    padding-top: 0;
	}	
	.fbits-produtos-acessados-item {
		width: 120px!important;
		/*
		width: 45% !important;
		margin-right: 5%;
		*/
	}
	.produtosAcessados img {
		width: 120px!important;
	}
	.fbits-banner-rodape a {	    
	    width: 25%;
	}
	.fbits-banner-rodape img {margin: 0;}
	.fbits-banner-rodape a:last-child img:last-child {
		margin-right: 0;
	}
	.fbits-conteudo-rodape {
	    padding: 0 2vw;    
	}
	.footerNews .centerContent {
	    display: -webkit-flex;
	    -webkit-align-items: center;
	    display: flex;
	    align-items: center;
	}
	.news.left {
	    width: 10%;
	    text-align: left;
	}
	i.icon.inews  {
	    width: 100%;
	    height: 100%;
	    text-align: left;
	    font-size: 25px;
	}
	.txtNews span {
	    text-align: left;	   
	    padding-top: 0;
	    margin-top: -2px;
	    display: block;
	}
	.txtNews.left {
	    text-align: left;
	    width: 20%;
	    margin: 0;
	    margin-left: 22rem
	}
	.footerNews {
	    padding: 1rem 2vw;
	}
	.footerNewsletter {   
	    width: 100%;    
	}
	.footerNewsForm {
	    width: 45%;
	    margin-left: 4%;
	    padding: 0;
	    position: relative;
	}
	.footerNewsForm input[type="text"] {
	    width: 45%;
	    margin: 0 1% 0 0;
	    float: left;
	    font-size: 16px;
	    font-size: 1rem;
	}
	.footerNewsForm input[type="text"]#Email {
	    border-radius: 0;
	}
		
	.fbits-cadastroNews-Masculino, .fbits-cadastroNews-Feminino {
	    width: 14%;
	    margin: 0;
	    line-height: 35px;
	    display: -webkit-flex;
	    -webkit-align-items: center;
	    display: flex;
	    align-items: center;
	}
	input.btNews {
	    width: 9%;
	    clear: none;
	    float: right;
    	border-radius: 0;
    	position: absolute;
    	right: 0;
	}
    span#newsletter-mensagem {
	    position: absolute;
	    bottom: -16px;
	    font-size: 10px;
	}
	.footerSearch {	
	    padding: 0 2vw;	   
	}
	
	.mainBar .bread {	   
	    display: none;
	}
	
	.fbits-content-topo .bread, .produto .bread {
	    display: block!important;
	    text-align: left;
	    margin: 2px 0 2px !important;
	    /*border-top: 1px solid #a3bd31;*/
	}
	.mostrando {
	    width: 50%;	  
	    line-height: 13px;
	    font-size: 14px;
        font-size: 0.875rem;
	}
	span.fbits-ordenar-por {
	    display: inline-block;
	    float: left;
	    font-size: 14px;
        font-size: 0.875rem;
	}
	.ordenar {
	    margin: 0;
	    width: 50%;
	    float: right;
	    margin-top: -30px;
	}
	.bgResultadosCat.fbits-info-top, .bgResultadosCat.fbits-info-bottom {
	    height: auto;
	    width: 100%;
	    margin-bottom: 20px;
	    margin-top: 1rem;
	    clear: both;
	    float: left;
	}
	.bgResultadosCat.fbits-info-bottom .ordenar.fbits-info-bottom {
	    display: none !important;
	}
	.bgResultadosCat .paginacao {
	    margin: 0 !important;
	    float: left;
	    width: 50%;
	}
	.bgResultadosCat .paginacao ul {
	    float: right;
	}	
	.bgResultadosCat.fbits-info-top .paginacao {
	    display: block;
	    width: 50%;
	    text-align: left;
	    float: left;
	    display: none;
	}
	.paginacao .pg a, .paginacao .ret a {	   
	    width: 25px;
	    height: 25px;	
	    line-height: 26px; 
	}	
	.paginacao .pg, .paginacao .ret {
		margin-left: 6px; 
		display:inline-block;
	}
	.fbits-layout-categoria {
	    clear: both;
	}
	.produto .fbits-sku {
	    text-align: right;
	    width: auto;
	    float: left;
	    margin-bottom: 0;
	    margin-top: 7px;
	    margin-right: 5%;
	    font-size: 16px;
	    font-size: 1rem;
	}
	a.avalie-top {
	    font-size: 16px;
	    font-size: 1rem;
	}
	.colunaProduto div[id^="view-item-quantidade"]+div {
	    display: inline-block;
	    float: left;
	    clear: none;
	    margin-top: 5px;
	    max-width: 200px;
	    width: 30%;
	}
	.bt.comprarProduto {
	    padding: 0;
	    box-shadow: none;
	    border-bottom: 0;
	    /*margin-top: 0.5rem;*/
	    margin-top: 0;
	}
	.bt.comprarProduto:hover {opacity: 0.9;}
	.zoomContainer {
		display: inherit;
	}	
	.produto .fbits-avaliacao {
	    text-align: left;
	    float: left;
	    line-height: 30px;
	    width: 50%;
	}
	.fbits-dados-livraria {	  
	    text-align: center;
	}
	.share .fbits-facebook, .share .fbits-twitter, .share #indicaAmigo {
	    margin-right: 10px;	  
	}	
	input[type="text"]#txtNomeIndicado, input[type="text"]#txtNomeIndicador,
	input[type="text"]#txtEmailIndicado, input[type="text"]#txtEmailIndicador {
	    width: 98%;	   
	    margin: 0 2% 1rem 0;	  
	}
	input[type="text"]#txtEmailIndicado, input[type="text"]#txtEmailIndicador {
	    margin-right: 0 !important;	   
	    float: right;
	}

	.fbits-indicacao-amigo, .fbits-avaliar-produto {	  
	    width: 48%;
	}
	.fbits-indicacao-amigo td, .fbits-avaliar-produto td, .fbits-indicar td {		
		width: 50%;
		text-align: center;
	}
	.colunaProduto .addListaDesejos, .colunaProduto .bt.addCarrinho {
		font-size: 12px;
    	font-size: 0.75rem;
	}	
	.pontosAvaliacao a {  
	    width: 15px;   
	}
	.avaliacoment {
		clear: both;		
	}
	button#btnIndicar, .btAvaliar button {
	    float: right;
	    font-size: 14px;
    	font-size: 0.875rem;
	}
	div#powered {
		text-align: center;
		margin-bottom: 2rem;
		clear: both;
	}	
	.fbits-hotsite .content {
	    padding: 0 2vw;	  
	} 			
	.arrow {
		display: inline-block;
		border-left: 8px solid #FFF;
		border-right: 8px solid #FFF;
		border-bottom: 8px solid #676767;
		vertical-align: middle;
	}	
	.content.contentBrand {
	    padding: 0 2vw;
	}
	select#escolhaFrabricante {
	    display: inline-block!important;
	    float: left;
	    border: 1px solid #ddd;
	    width: 30%;
	    margin-right: 5%;
	    height: 35px;
	    text-indent: 10px;
	}
	span.fbits-indique-avalie.texto-indique, span.fbits-indique-avalie.texto-avalie {    
	    font-size: 18px;
	    font-size: 1.125rem;
	}
	input[type="text"].inputAvaliacao, .textAreaIndicar, .textAreaAvaliacao {
	    font-size: 16px;
	    font-size: 1rem;
	}
	input[type="text"].inputAvaliacao:hover, .textAreaIndicar:hover, .textAreaAvaliacao:hover {
	    border: 1px solid #e9d237;
	    color: #e9d237;
	}
	
	
	/* VEJA MAIS */
    a#linkVejaMaisProdutos {
        max-width: 260px;
        display: block;
        float: none;
        clear: both;
        margin: 0 auto 16px;
    }
	
	
		
	/*footer -->*/	
	footer .center {
	    padding: 0 2vw;
	}
	footer section.fbits-footer-blocos-vertical {
	    display: block;
	    float: left;
	    width: 25%;
	}
	footer section.fbits-footer-blocos-vertical:first-child li.titlefooter {
	    display: none;
	}
	li.titlefooter.title-formas-pagamento {
	    margin-top: 0;
	}
	li.linksfooter {
	    display: block!important;
	}
	ul.blockfooter.toggle li.titlefooter:after {display: none;}
	ul.blockfooter.toggle {
	    border: 0;	    
	}
	section.clear {
		clear: both;
	}
	li.linksfooter a:hover {
		text-decoration: underline;
	}
	footer section.fbits-footer-blocos-horizontal ul.blockfooter {
	    width: 50%;
	    float: left;
	    padding: 0;
	    display: block;
	}
	footer section.fbits-footer-blocos-horizontal ul.blockfooter.bloco-formas-pagamento {
	    /*width: 64%;*/
	    width: 53%;
	}
	footer section.fbits-footer-blocos-horizontal ul.blockfooter.bloco-certificados {
	    /*width: 34%;*/
	    width: 47%;
	}
	.contato-footer {
		margin-bottom: 30px;
	}
	li.titlefooter {
	    line-height: 20px;
	    text-transform: uppercase;
	    color: #e9d237;
	    margin-bottom: 20px;
	    font-size: 16px;
	    font-size: 1rem;
	    font-weight: 500;
	}
	.contato-footer.contato-fone div {
		display: inline-block;
		vertical-align: middle;
		float: none;
	}
	li.linksfooter a {
	    line-height: 1.375rem;
	    font-size: 16px;
	    font-size: 1rem;
	}
	footer .footer-seguranca {
	    padding: 32px 0;
	    padding: 2rem 0;
	}
	.footer-seguranca li.titlefooter.title-formas-pagamento, .footer-seguranca li.titlefooter.title-certificados {
	    font-size: 12px;
	    font-size: 0.75rem;
	    display: inline-block;
	    width: auto;
	    margin-bottom: 0;
	    margin-top: 7%;
	    vertical-align: middle;
	    color: #e9d237;
	}
	footer .footer-seguranca section.fbits-footer-blocos-horizontal ul.blockfooter.noborder li.linksfooter {
		float: none;
	    width: 100%;
	    clear: none;
	}
	footer .footer-seguranca .bloco-certificados .li-certificados {
		margin-top: -17px;
	}
	footer .footer-seguranca .selo-seal img {
        display: block;
        margin: 0 auto;
        float: none;
        width: 95%;
    }
    
    /* Ajustes para o selo do Google*/
    .linksfooter.li-certificados .selo-seal {
        float: left;
        width: 71%;
    }
    li.linksfooter .selo-seal a {
        width: 24% !important;
    }
    footer .blockfooter.noborder.bloco-formas-pagamento .linksfooter.li-formas-pgto {
        margin-top: 7%;
    }
    /**/
    
	footer span.icones-pagamento-footer {
	    width: 6%;
	    height: 27px;
	    background-size: 100%;
	    background-position: left top;
	    cursor: auto;
	    margin: 0 0.5%;
	}
    footer section.fbits-footer-blocos-horizontal ul.blockfooter span.icones-pagamento-footer.icone-master {
	    width: 100%;
	    max-width: 31px;
	    height: 27px;
	    background-size: contain;
	}
    footer section.fbits-footer-blocos-horizontal ul.blockfooter span.icones-pagamento-footer.icone-hipercard {
	    width: 100%;
	    max-width: 58px;
	    height: 27px;
	    background-size: contain;
	}
    footer section.fbits-footer-blocos-horizontal ul.blockfooter span.icones-pagamento-footer.icone-amex {
	    width: 100%;
	    max-width: 25px;
	    height: 27px;
	    background-size: contain;
	}
    footer section.fbits-footer-blocos-horizontal ul.blockfooter span.icones-pagamento-footer.icone-elo {
	    width: 100%;
	    max-width: 28px;
	    height: 27px;
	    background-size: contain;
	}
    footer section.fbits-footer-blocos-horizontal ul.blockfooter span.icones-pagamento-footer.icone-valecult {
	    width: 100%;
	    max-width: 59px;
	    height: 27px;
	    background-size: contain;
	}
	ul.blockfooter.noborder.endereço-footer {  
	    float: left;
	    text-align: left;
	    font-size: 14px;
	    font-size: 0.875rem;
	    line-height: 0.75rem;
	}
	footer section.fbits-footer-blocos-horizontal ul.blockfooter.logo-fbits {
	    width: 100%;	   
	    text-align: center;
	}
	img.certfooter {
		width: 100%;
		max-width: 360px;
	}
	ul.blockfooter.noborder.logosfooter {
		padding-top: 2.4rem;
		clear: none;
		float: right;
		width: auto;
	}
	ul.blockfooter.noborder.copyright {
	    width: 100%;
	    line-height: 1rem;
	    font-size: 14px;
	    font-size: 0.875rem;
	    text-align: left;
	}
	footer section.fbits-footer-blocos-horizontal ul.blockfooter.noborder {
		clear: none;
	}
	footer section.fbits-footer-blocos-horizontal ul.blockfooter.bloco-formas-pagamento {
	    padding-right: 1%;
	}
	footer section.fbits-footer-blocos-horizontal ul.blockfooter.noborder.endereço-footer {
	    width: 70%;
	    float: left;
	    margin: 0;
	}
	.footer-logosDesktop {
		display: block;
	}
	.footer-logosMobile {
		display: none !important;
	}
	.logotipo-footer {
	    margin: 0 0 3.5rem
	}
	footer section.fbits-footer-blocos-horizontal ul.blockfooter.logo-fbits {
	    width: 25%;
	    float: right;
	    clear: none;
	    padding-top: 0;
	    margin: 0;
	}
	footer section.fbits-footer-blocos-horizontal ul.blockfooter.logo-footer {
	    width: 25%;
	    float: left;
	    clear: none;
	    padding-top: 0;
	    margin: 0;
	}
	footer section.fbits-footer-blocos-horizontal ul.blockfooter.logo-footer .logotipo-footer {
	    margin: 0 0 .3rem;
	}
	footer section.fbits-footer-blocos-horizontal ul.blockfooter.noborder.copyright {
	    width: 70%;
	    padding-top: 0;
	    margin: 0;
	    padding-bottom: 10px;
	}
	.fstore {
		float: right;
		margin: .8rem 0 0.3rem 1rem;
	}
	.acupula {
		float: right;
		margin: .8rem 1rem .3rem 0;
	}


	ul.blockfooter.noborder {
	    text-align: left;
	}
	div#nuvemTags {  
	    padding: 0 2vw;
	}
	.navbar-mobile.dynamic-content-headercustomerinfo { 
	    padding: 10px 3vw;   
	}
	.header-links ul li.findastore .loginHead {    
	    font-size: 14px;
	    line-height: 20px;
	}
	/**spot -->**/
	.spot {
		border: 1px solid transparent;
		margin: 0px 1% 1rem;
		width: 31.333%;
	}
	.spot:hover {
		border: 1px solid #dcdee0;
		/*
		width: 31.333%;
	    margin: 0 1% 1rem;
	    */
	}
	.spotTitle {
	    font-size: 18px;
        font-size: 1.125rem;
        margin-bottom: 10px;
	}
	.spotPreco {
	    margin-top: 10px;
	}
	.spot .precoDe {     
	    display: block;
	    margin-right: 10px;
	    vertical-align: bottom;
	    margin-bottom: 2px;
	}
	.spot .precoPor {
		display: inline-block;
	    vertical-align: bottom;
	    margin-bottom: -1px;
	    font-size: 26px;
	    font-size: 1.625rem;
	}
	.spot .precoPor::after {
	    font-size: 17px;
	    font-size: 1.063rem;
	}
	.spot .precoDe, .spot .precoParcela, .spot .precoAssinantes, .spot .fbits-spot-preco-boleto-container, .spot .precoParcela:after {
	    font-size: 17px;
	    font-size: 1.063rem;
	}
	.precoPor span.fbits-avista {
	    display: none;
	}
	.spot .botoesSpot  {
	    /*display: none;*/  
	}
	.spot:hover .botoesSpot {
		display:block;
	}
	
	.spot .botoesSpot .spotIndisponivel {
	    margin-top: 2rem;
	}
	
	.ribbon.fbits-etiqueta-off, .produto .fbits-preco-off {
	    font-size: 15px;
	    font-size: 0.9375rem;
	}

    /* ETIQUETAS PÁGINA PRODUTO*/
    .produtoInfo-title .produto-etiquetas {
        width: 30%;
    }
    .produtoInfo-title .fbits-etiquetas-sequencial {
        float: right;
        clear: both;
        max-width: none;
    }
    .produtoInfo-title .fbits-etiquetas-sequencial .fbits-etiqueta-selo, .produtoInfo-title .fbits-etiquetas-sequencial .fbits-etiqueta-selo img,
    .produtoInfo-title .fbits-etiquetas-sequencial .fbits-etiqueta-lancamento {
        float: right;
    }
    .produtoInfo-title.colunaWide div#fbits-fabricante-logo {
        width: auto;
    }
    /**/

	.spotVejaTambem {
	    width: 28%;	    
	}
	.spotVejaTambem div#divSpotProdutoRecomendado {
	    width: 180px;	
	}	
	.spotVejaTambem .fbits-titulo-quantidade.atributo-div {
	    display: block;
	}
	.spotVejaTambem.produtoRecomendadoComprar {   
	    margin-top: 6rem;
	}


	.fbits-carrossel-historico {
	    width: 90vw!important;   
	}
	.fbits-produtos-acessados-texto {
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	#txtCalculaFreteProduto {
		clear: both;
		margin-top: 6px;
	}	
	.fbits-categoria .interna.cf > .filtro, .minhaconta .sideBar, .fbits-hotsite .fbits-estatica-esquerda, .fbits-busca .interna.cf > .filtro , .fbits-fabricante .interna.cf > .filtro {
	    width: 24%;
	    display: block;
	    float: left;
	    padding-bottom: 1rem;
	}
	.fbits-categoria .interna.cf .filtro .sideBar {
		width: 100%;
	}
	.mainBar, .fbits-categoria .mainBar, .busca .mainBar, .fabricante .mainBar, .fbits-fabricante .mainBar, .minhaconta .mainBarInterna, .fbits-hotsite .fbits-estatica-conteudo, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna {
	    float: right;
	    width: 76%;
	    padding-left: 15px;
	    display: block;
	}
	
	/* Menu Lateral Terceiro Nível Categoria */
    .fbits-categoria .interna.cf .filtro #sidebarLeft .menu-esquerdo {
        display: block;
        width: 90%;
        margin: 0 auto;
        font-weight: bold;
    }
    .fbits-categoria .interna.cf .filtro #sidebarLeft .menu-esquerdo li {
        height: 22px;
        line-height: 22px;
    }
    .fbits-categoria .interna.cf .filtro #sidebarLeft .menu-esquerdo li a {
        color: #505050;
        font-size: 14px;
        font-size: .875rem;
    }
    .fbits-categoria .interna.cf .filtro #sidebarLeft .menu-esquerdo li.menu-titulo {
        height: 1.313rem;
        line-height: 1.313rem;
        margin: .5rem 0 1rem;
    }
    .fbits-categoria .interna.cf .filtro #sidebarLeft .menu-esquerdo li.menu-titulo:after {
        content: "";
        display: block;
        width: 100%;
        max-width: 183px;
        height: 4px;
        background-color: #e9d237;
        position: relative;
        bottom: 0;
        left: -4px;
    }
    .fbits-categoria .interna.cf .filtro #sidebarLeft .menu-esquerdo li.menu-titulo a {
        color: #000;
        font-weight: 700;
        text-transform: uppercase;
        font-size: 20px;
        font-size: 1.25rem;
        cursor: default;
        
    }
    /* Fim Menu Lateral Terceiro Nível Categoria */
    
    /* imagens das subcategorias */
    .subcategoria-imagens li {
    	width: 25%;
    	margin: 0 0 1.25rem;
    	font-size: 15px;
    	font-size: 0.9375rem;
    }
    .subcategoria-imagens li:nth-child(2n+0) {
    	border-right: solid 1px #bebebe;
    }
    .subcategoria-imagens li:nth-child(4n+0) {
    	border-right: none;
    }
    /**/
    
	/* imagens das categorias */
	.categoria-n1 .subcategoria-marcas li {
        width: 25%;
    }
	.categoria-n1 .subcategoria-imagens li:nth-child(2n+0) {
        border-right: none;
    }
    /**/

	/*Início Filtro topo categoria com select*/
	.fbits-categoria.aventura .interna.cf .filtro {
		width: 100%;
	}
	.filtros.filtro-topo-categoria li.filtroPai {
	    width: 14%;
	    margin: 0 .33% 10px 0;
	}
	.filtros.filtro-topo-categoria li.filtroPai:nth-child(7), .filtros.filtro-topo-categoria li.filtroPai:nth-child(14) {
	    margin-right: 0;
	}
	.filtros.filtro-topo-categoria li.filtroPai select {    
	    font-size: 11px;
	    font-size: 0.6875rem;
	}
	.fbits-categoria.aventura .mainBar {
	    width: 100%;
	    padding: 0;
	}
	.filtros.filtro-lateral-categoria, .fbits-hotsite .fbits-estatica-esquerda .filtros, .fbits-filtroSelecionados {
	    border: none;
	}
	.filtros.filtro-lateral-categoria > ul {
	    width: 90%;
	    margin: 0 auto;
	    padding: 0;
	    /*border: solid 1px #e4e4e4;*/
	    margin-top: -6px;
	    border-top: none;
	    border-bottom: solid 4px #707070;
	    border-radius: 0 0 4px 4px;
	}
	li.filtroPai, li.fbits-filtroSelecionados-pai {
	    margin: 0;
	}
	.tituloPai:after {
	    display: none;
	}
	ul.filtroFilho {
	    display: block!important;
	    height: auto!important;
	}
	ul.filtroFilho > li {
	    font-size: 16px;
	    font-size: 1rem;
	}
	/*Fim Filtro topo categoria com select*/
	

	.fbits-categoria.tenis .spot .spotContent {
		height: 33rem;
	}
	.contentBrand p {
	    text-align: left;	
    	line-height: 18px;
	}
	.contentBrand .alphabet-numeric {	    
	    height: 58px;
	}
	.fbits-componente-imagemvariantethumb img {	  
	    width: 60px !important;
	    margin-top: 5px;	
	}
	.fbits-componente-imagemvariantethumb #thumbVideo img {
	    background-position: center !important;
	}
	.fbits-componente-imagemvariantethumb.fbits-produto-imagens {
	    margin-top: 1rem;
	}
	.fbits-componente-imagemvariantethumb .jcarousel {	 
	    width: 90%;
	    display: block;	      
	}
	.fbits-componente-imagemvariantethumb .jcarousel li {
	    width: 70px!important;
	    margin-right: 3px;
	    margin-left: 3px;
	}
	.produto-imagem-eazyZoom .fbits-componente-imagemvariantethumb .jcarousel-prev, .produto-imagem-eazyZoom .fbits-componente-imagemvariantethumb .jcarousel-next {
	    width: 5%;	
	    height: 65px;
	}
	#bodyProduto .fbits-produto-imagens .jcarousel-prev:before, #bodyProduto .fbits-produto-imagens .jcarousel-next:before {
	    background-position: center;
	}
	div#fbits-fabricante-logo {    
	    width: 20%;  
	    margin-top: 0;
	}
	.fbits-Div-BtnContraproposta {
	    max-width: 300px;
	}
	.divisor, .divisorIgual {
	    width: 8%;
	    height: 100%;
	}
	.tmbMore:before, .divisor:before, .tmbIgual:before, .divisorIgual:before {
	    width: 4rem;
        height: 4rem;
        margin-top: 120px;
        line-height: 4rem;
        font-size: 1.875rem;
	}
	.review {
	    padding: 15px;    
	}
	blockquote {	    
	    padding: 0 20px 0 0;
	    border-right: 1px solid #a7a9ab;  
	    border-bottom: 0;
	    width: 70%;	    
	}
	.reviewMeta {	  
	    height: auto;
	    line-height: 30px;	    
	    width: 30%;
	    padding: 0 0 0 20px;
	    margin: 0;
	}
	.reviewUser {    
		display: inherit;  
	    line-height: 18px;
	    float: none;
	    line-height: 18px;   
	}
	.reviewMeta span.icon {  
	    line-height: 18px;
	}
	
	/* carrinho */
	.btcontinuar, .btfinalizar, .btlimpar {
	    max-width: 273px;
	    height: 46px;
	    line-height: 46px;
	    font-size: 18px;
	    font-size: 1.125rem;
	    font-family: 'avenir-lt-55-roman', Arial, sans-serif;
	    font-weight: 700;
	}
	.fbits-botoes-direita>div.limparCarrinho {   
	    padding-left: 32%;   
	}
	.fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-titulo {   
	    display: -webkit-flex;
	    -webkit-align-items: center;
	    display: flex;
	    align-items: center;
	}
	.fechamento.fbits-carrinho .fixed-bar {
	    height: auto;
	    display: none;
	}
	.fechamento.fbits-carrinho .fixed-bar .close .arrow {
	    margin: 42px 10px 0;  
	}
	.fechamento.fbits-carrinho .fixed-bar.nohead .close .arrow {
		margin: 4px 10px;
	}
	.fechamento .headerSearch input {
	    width: 100%;
	    margin: 0;
	}
	.fbits-responsive-carrinho-frete-opcoes {
	    width: 30%;   
	    float: right;
	}
	div#opcaoCalculoFrete {  
	    float: right;
	    min-width: 50%;
	}
	.fbits-responsive-carrinho-frete #prazoEntregaExibicao {	   
	    width: 100%;
	    text-align: center;
	}
	.fbits-responsive-carrinho-item-descricao a {   
	    font-size: 18px;
	    font-size: 1.125rem;
	}
	.fbits-responsive-carrinho-item-descricao span.fbits-responsive-carrinho-item-atributos {  
	    font-size: 12px;
	    font-size: 0.75rem;
	}
	.fbits-responsive-carrinho-item-descricao a.botao-add-embalagem:before {    
	    font-size: 18px;    
	}
	.head.head-carrinho.headFechamento {
	    padding: 0.5rem 0;
	}
	div#RecuperarSenha { 
	    font-size: 14px;
	    font-size: 0.875rem;
	    text-align: center;
	}
	.fbits-responsive-carrinho-header, .coluna-fechamento #divProdutos thead {
	    display: block;
	}

	/*fechamento*/
	.pagamento input, .pagamento select {
		margin-left: 0!important;
	}
	.pagamento .fbits-pedido-pagamento-template2 input, .coluna-fechamento.final table.tLined.carrinho td.fbits-td-descricao span.cartNome {
	    font-size: 14px;
        font-size: 0.875rem;
	}
	.pagamento .fbits-pedido-pagamento-template2 .nomeCartao {
	    font-size: 16px;
	    font-size: 1rem;
	}
	.fbits-botoes-direita {
	    width: 72.5%;
	}
	.fbits-botoes-direita>div {
		float: left;
	}
	.fbits-botoes-direita>div.fbits-botao-finalizarPedido {
	    margin: 0!important;
	    width: 44%;
	    padding-left: 2.5%;
	}
	.fbits-botoes-direita>div.fbits-botao-paypal-carrinho, .fbits-botoes-direita>div.fbits-botao-masterpass-carrinho.masterPassBtn {
	    margin: 0!important;
	    width: 35%;
	    padding-left: 2.5%;
	    display: none !important;
	}
	.fbits-botoes-direita>div.fbits-botao-paypal-carrinho {
		width: 25%;
		padding-left: 0;
	}
	.fbits-botao-finalizarPedido {
		float: right!important;
	}
	a#btnContinuarComprando {
	    max-width: 260px;
	    margin: auto;
	    float: none;
	}
	.fbits-responsive-carrinho-header, .headerTabela {
	    display: block;
	    width: 100%;
	    float: left;
	    background: #ededed;
	    border-bottom: solid 1px #bebebe;
	    border-radius: 0;
	}
	.fbits-responsive-carrinho-header>li, .coluna-fechamento table.tLined.carrinho tr.headerTabela th {
	    float: left;
	    display: block;
	    padding: 0.6875rem 0;
	    color: #000000;
	    border: 0;
	    text-transform: uppercase;
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	.fbits-responsive-carrinho-header>li.fbits-responsive-carrinho-header-coluna-descricao {
	    width: 40%;
	    text-align: left;
	    text-indent: 20px;
	}	
	.coluna-fechamento .fbits-pickupstore-loja label[for^="lojaId"] {
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	.coluna-fechamento table.tLined.carrinho tr.headerTabela th.th-descricao {
	    width: 60%;
	}
	.coluna-fechamento table.tLined.carrinho tr.headerTabela th.th-valor-total.totalborder,
	.coluna-fechamento.final table.tLined.carrinho .produto-linha td.valor-total-colunas {
		width: 25%;
	}
	.coluna-fechamento #divProdutos thead {
    	display: block;
	}
	.coluna-fechamento #divProdutos thead .headerTabela {
    	border: solid 1px #dadada;
	}
	.coluna-fechamento table.tLined.carrinho tr.headerTabela th {
	    font-size: 14px;
	    font-size: 0.875rem;
	    padding: 1px 0;
	    background-color: #ffffff;
	}
	.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-subtotal, .coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorTotal span.fbits-span-valorTotal-texto {
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	.buyInfo, .coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-retiradaLoja td, .coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-entregaAgendada td, .coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorDesconto, .coluna-fechamento .tLined.carrinho tfoot tr.valorfrete {
	    font-size: 16px;
	    font-size: 1rem;
	}
	.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-frete td.fbits-td-frete-texto {
	    text-align: left !important;
        width: 50%;
        float: left;
	}
	.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-frete td.fbits-td-frete-valor {
	    width: 50%;
        float: right;
        text-align: right;
	}
	div#observacoesAdicionais h3.titleFrete {
	    font-size: 14px;
        font-size: .875rem;
	}
	.fbits-responsive-carrinho-header-coluna-remover,
	.fbits-responsive-carrinho-header-coluna-quantidade,
	.fbits-responsive-carrinho-header-coluna-preco,
	.fbits-responsive-carrinho-header-coluna-total,
	.coluna-fechamento table.tLined.carrinho tr.headerTabela th.th-quantidade,
	.coluna-fechamento.final table.tLined.carrinho td.fbits-td-quantidade {
	    width: 15%;
	}
	.fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-titulo {
	    width: 40%;
	    padding: 0!important;
	    margin: 0;
	}
	.coluna-fechamento.final table.tLined.carrinho td.fbits-td-descricao {
	    width: 35%;
	    float: left;
	}
	.fbits-responsive-carrinho-item-descricao {
	    float: left;
	    padding-left: 15px;
	    width: 70%;
	    display: block;
	    line-height: 16px;
	}
	.coluna-fechamento.final table.tLined.carrinho td.fbits-td-quantidade {
	    padding: 0;
	    text-align: center;
	    clear: none;
	}
	.coluna-fechamento.final table.tLined.carrinho .produto-linha td.valor-total-colunas {
	    padding: 0;
	    text-align: center;
	    font-size: 14px;
		font-size: 0.875rem;
	}
	.sidebarLogin .cart .cartProdImg, .coluna-fechamento.final table.tLined.carrinho td.cartProd {
		max-width: inherit;
	}
	.fbits-responsive-carrinho-produtos li, .fbits-responsive-carrinho-item-titulo, .fbits-responsive-carrinho-item-remover{
		background: none;
	}
	.fbits-responsive-carrinho-produtos li {  
	    display: -webkit-flex;
	    -webkit-align-items: center;
	    display: flex;
	    align-items: center;
	}
	.fbits-responsive-carrinho-produtos li:first-child {
	    border-top: none;
	}
	.fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-remover,
	.fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-quantidade.tLined,
	.fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-valor-unitario,
	.fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-total {
	    padding: 0!important;
	    width: 15%;
	    text-align: center;
	}
	.fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-valor-unitario,
	.fbits-responsive-carrinho-item>div.fbits-responsive-carrinho-item-total  {
	    display: inline-block!important;	    
	    line-height: 16px;
	}
	input.qtdCarrinho, input.listacompra-produtos-quantidade {
	    font-size: 16px;
	    font-size: 1rem;
	}
	.fbits-responsive-carrinho-subtotal {
	    padding-right: 0;
	    display: block;
	    clear: both;
	    overflow: hidden;
	    border: solid 1px #bebebe;
	}
	.fbits-responsive-carrinho-subtotal-header {
	    display: inline-block;
	    width: 15%;
	    text-align: center;
	    padding: 0;
	    line-height: 45px;
	}
	.fbits-confirmacaoPedido .fbits-responsive-carrinho-subtotal-header {
	    width: 25%;
	}
	.fbits-responsive-carrinho-subtotal-valor  {
	    margin: 0;
	    display: block;
	    float: right;
	    width: 15%;
	    text-align: center;
	    padding: 0;
	    line-height: 45px;
	}
	.fbits-confirmacaoPedido .fbits-responsive-carrinho-subtotal-valor  {
	    width: 25%;
	}
	.fbits-responsive-carrinho-frete, .fbits-responsive-carrinho-desconto {	    
	    position: relative;
	    border-bottom: 0;
	    display: block;
	    padding: 1rem;
	    font-size: 12px;
    	font-size: 0.75rem;
	}
	.fechamento.fbits-confirmacaoPedido .fbits-responsive-carrinho-frete, .fechamento.fbits-confirmacaoPedido .fbits-responsive-carrinho-desconto {   
	    text-align: right;
	}
	.fechamento.fbits-confirmacaoPedido .fbits-responsive-carrinho-frete .fbits-responsive-carrinho-frete-prazo, .fechamento.fbits-confirmacaoPedido .fbits-responsive-carrinho-frete-valor {
	    width: auto;	  
	    text-align: right;
	    float: none;
	    display: inline-block;
	}
	.fechamento.fbits-confirmacaoPedido .fbits-responsive-carrinho-frete-valor, .fechamento.fbits-confirmacaoPedido span.txtdestaqueTot.prazo-entrega-periodo {	   
	    margin: 0 10px;
	}
	.fbits-confirmacaoPedido .fbits-responsive-carrinho-prazo-entrega {   
	    text-align: right;
	}
	.fechamento.fbits-confirmacaoPedido .fbits-responsive-carrinho-desconto-header, .fechamento.fbits-confirmacaoPedido .fbits-responsive-carrinho-desconto-valor.desconto {
	    width: auto;
	    display: inline-block;
	    float: none;
	}
	.fechamento.fbits-confirmacaoPedido .fbits-responsive-carrinho-desconto-valor.desconto {
	    margin: 0 10px;
	}
	.fbits-responsive-carrinho-frete {
	    /*border-bottom: 1px solid #ccc;*/
	}
	.fbits-responsive-carrinho-frete-texto, .fbits-responsive-carrinho-desconto-texto {   
	    height: 40px;
	    line-height: 40px;
	    /*width: 35%;*/
	    width: 15%;
	    font-size: 0;
	}
	.fbits-responsive-carrinho-frete-texto:before {   
	    content: "Digite seu CEP.";
	    display: block;
	    font-size: 16px;
	    font-size: 1rem;
	}
	.fbits-responsive-carrinho-desconto-texto:before {   
	    content: "Possui Cupom ou Vale? Informe o código";
	    display: block;
	    font-size: 16px;
	    font-size: 1rem;
	    line-height: 1.2rem;
	}
	.fbits-responsive-carrinho-frete-calculo, .fbits-responsive-carrinho-desconto-input {
	    /*width: 35%;*/
	    width: 55%;
	}
	.carrinhoInputBlock {
	    /*width: 100%;*/
	    width: 60%;
	}
	.carrinhoInputBlock input[type="text"], #txtCalculaFrete.fbits-carrinho-calcularFrete-cep {
	    font-size: 16px;
	    font-size: 1rem;
	}
	.fbits-calculafrete .carrinhoInputBlock {
	    width: 100%;
	}
	.fbits-responsive-carrinho-frete-total {	  
	    line-height: 37px;
	    width: 30%;
	    clear: none;
	}
	.fbits-responsive-carrinho-frete-header, .fbits-responsive-carrinho-frete-valor {
	    width: 50%;
	    text-align: center;
	}
	.fbits-responsive-carrinho-frete-valor { 
	    float: right;    
	}
	.fbits-responsive-carrinho-total {
	    display: block;
	    /*border-top: 1px solid #ccc;*/
	}
	.fbits-responsive-carrinho-total-valor {
	    margin: 0;
	    display: inline-block;
	    width: 15%;
	    text-align: center;
	    white-space: nowrap;
	    height: 100%;
	    float: right;
	    padding: 0;
	    font-size: 17px;
	    font-size: 1.063rem;
	}
	.fbits-confirmacaoPedido .fbits-responsive-carrinho-total-valor {
	    width: 25%;
	}
	.fbits-responsive-carrinho-total-header {
	    display: inline-block;
	    width: 15%;
	    height: 100%;
	    padding: 0;
	    font-size: 17px;
	    font-size: 1.063rem;
	    font-weight: 700;
	}
	.fbits-confirmacaoPedido .fbits-responsive-carrinho-total-header {
	    width: 25%;
	}
	.fbits-responsive-carrinho-frete .fbits-responsive-carrinho-frete-prazo {
	    width: 50%;
	    display: inline-block;
	    text-align: center;
	}
	.fbits-responsive-carrinho-desconto .carrinhoInputBlock {
	    /*width: 35%;*/
	    width: 55%;
	    clear: none;
	}
	.fbits-responsive-carrinho-desconto .carrinhoInputBlock .fbits-responsive-carrinho-desconto-input {
	    /*width: 100%;*/
	    width: 60%;
	}
	.carrinhoInputBlock .btnCalcular {
	    max-width: 40px;
	    font-size: 0;
	    background: url(../i/btn-ok.png) 50% 50% no-repeat #e9d237;
	}
	.fbits-responsive-carrinho-desconto-total {
	    width: 30%;
	    float: left;
	    text-align: left;
	    display: block;
	    clear: none;
	}
	.fbits-responsive-carrinho-desconto-header, .fbits-responsive-carrinho-desconto-valor.desconto {
	    width: 50%;
	    text-align: center;
	    line-height: 37px;
	    padding: 0;
	    font-size: 15px;
    	font-size: 0.9375rem;
    	color: #000000;
	}
	.btCadastroEndereco.right {
		width: 100%;
	}
	.bt.recompra {
		width: 250px;
	}
	.meusPedidos .boxes table.tLined.carrinho {
		margin-left: 0;
	}
	.meusPedidos .btcontinuar, .meusPedidos .btfinalizar {
		padding-left: 1rem!important;	
		padding-right: 1rem!important;
		text-align: center!important;
		width: 250px;
	}
	.meusPedidos .boxDefault.confirmacao {
		margin-left: 0;
		width: 520px;
	}
	.historicoPedido {
	    border: 0!important;
	    background: none;
	    margin-top: 50px;
	    display: block;
	    float: left;
	    width: 100%;
	}
	.histPed {
		border-bottom: 0!important;
		margin-left: 0!important;
	}
	.minhaconta a.paypalBotao {
	    display: inline-block;
	}
	.minhaconta .historicoPedido table.tLined.carrinho.histPed tbody tr.headerTabela {
	    height: auto;
	}
	.minhaconta .historicoPedido table.tLined.carrinho.histPed tbody tr.headerTabela th {
	    width: 20%!important;
	    line-height: 1.3rem;
	    float: left !important;
	    display: block !important;
	}
	.minhaconta .historicoPedido table.tLined.carrinho.bgGeral.histPed tbody tr td {
	    width: 20% !important;
	    min-width: initial !important;
	}
	table.tLined.carrinho.bgGeral.histPed {
		width: 100%;  margin-left: 0!important;
	}
	.meusCartoes .bandeiras {
		width: 532px;
		margin-left: 16px;
	}
	.meses, .ano, input#CodigoSeguranca {
		padding: 3px;
		border: 1px solid #acacac;
		margin-left: 12px;
		height: 45px;
	}
	input#CodigoSeguranca {
		width: 6.4rem;
	}
	.minhaconta label[for^="UsarEnderecoEntrega"] {		
		line-height: 20px !important;
	}
	div[id^="lista-endereco-cobranca"] {
	    padding-top: 0;   
	}
	div[id^="lista-endereco-cobranca"] .forminline label {
	    line-height: 1rem !important;
	}
	.meusCartoes .forminline.cartoes label {
		text-align: left;
		width: 110px!important;
		float: none;
		white-space: nowrap;
		display: inline-block;
		height: 2.5rem;
		margin-left: 0;
	}
	.minhaconta .numeroCartaoCredito {
		margin-left: 12px;
	}
    .minhaconta h3.title.big {	
		font-weight: normal;
		line-height: 2rem;
		border-bottom: 2px solid #ddd;
		letter-spacing: 0;		
	}
	.meusCartoes .erroCadastro {
		position: relative;
	}  	
	.fechamento .content {
	    padding-top: 20px;
	    float: left;
	    width: 100%;
	}
	.clearinfo {
		margin-top: 110px;
	}
	.fechamento.fbits-geral span.textloginp {
		display: none;
	}
	.fechamento.fbits-geral  .headerLogin:after, .fechamento.fbits-fechamento  .headerLogin:after  {
		content: "  ";
		margin: 0 2px;
	}
	.passos {				
		max-width: 700px;
	}
	.passo1 {
	    /*background-image: url("../i/SVG-diversos/passo1-carrinho-desktop.png");*/
	    background-image: url("../i/SVG-diversos/passo1-desktop.svg");
	}
	.passo2 {
	    /*background-image: url("../i/SVG-diversos/passo2-carrinho-desktop.png");*/
	    background-image: url("../i/SVG-diversos/passo2-desktop.svg");
	}
	.passo3, .passo3.segundo {
	    /*background-image: url("../i/SVG-diversos/passo3-carrinho-desktop.png");*/
	    background-image: url("../i/SVG-diversos/passo3-desktop.svg");
	}	
	.headerTabela th {		
		display:block;
	}
	.headerTabela th:first-child+th+th+th+th{ display:block; }
	.headerTabela th:first-child+th+th+th{ display:block; }
	.fbits-carrinho-produtoImagem img {
		width: 90px;
		margin-top: 30px;
		position: relative;
	}
	td.fbits-carrinho-item-descricao+td+td {
		width: 157px;
		text-align: left;
	}
	td.fbits-carrinho-item-descricao+td {
		width: 156px;
		text-align: left;
	}
	td.detaqueItemUnit {
		display: table-cell;
		border: 0;
		position: inherit;
		line-height: 18px;
		text-align: left;
		width: 150px;
		vertical-align: middle;
	}
	td.detaqueItemTotal {
		display: table-cell;
		border: 0;
		position: inherit;	
		padding-top: 0!important;
		width: 120px;
		vertical-align: middle;
		text-align: left;
	}
	tr.produtosCart {
		height: 170px;
	}	
	.bgSubtotal {
		background-color: transparent;
		height: 50px;
	}
	.tLined.carrinho tr.bgSubtotal td {	
		display: inline-block;
		line-height: 50px;
		width: 780px;
		padding-top: 4px;
		border-bottom: 1px solid#ccc;
		border-top: 1px solid#ccc;
	}
	td#subtotal {
		display: inline-block;
		right: 0;
		height: 39px;
		top: 0;	
		padding-top: 4px!important;
		text-align: center;
		width: 162px;
		border-bottom: 1px solid#ccc;
	}
	tr.fbits-carrinho-tr-frete {
		display: inline-block;
		float: left;
		width: 310px;
		border-right: 1px solid #ccc;
		padding-top: 10px;
		padding-bottom: 20px;
		height: 212px;
	}
	tr.fbits-carrinho-tr-frete:before {
		content: "CALCULE O FRETE";
		color: #000;	
		font-weight: bold;
		text-align: left;
		display: block;
		margin-top: 10px;
	}
	tr.fbits-carrinho-tr-desconto:before {
		content: "\00a0 \00a0 \00a0 \00a0 CUMPOM DE DESCONTO";
		color: #000;	
		font-weight: bold;
		text-align: left;
		display: block;
		margin-top: 20px;
	}
	.botoes-carrinho-bottom {
	    margin: 2rem 0;
	}
	.fbits-botoes-direita>div.limparCarrinho {    
	    width: 60%;
	    padding-left: 25%;
	    margin-bottom: 0;
	}
	td#resultadoFrete {
		padding-right: 0;
		padding-top: 0;
		position: absolute;
		left: 0;
		text-align: left;
		top: 187px;
	}
	td#resultadoFrete:before {
		content: "Selecione a forma de entrega:";
		text-align: left;
		color: #333;
		font-weight: bold;
	}
	.freteLista {
		margin-left: -10px;
	}
	.freteLista div[id^="opcaoFrete"]>div:first-child {
		border-left: 0;
		height: 1rem;
		margin-left: 0;
		margin-top: 0;
		position: relative;
		top: 2px;
		width: 20px;
	}
	.freteLista div[id^="opcaoFrete"]>div {
		margin-left: -1rem;
		padding: 8px;
		text-align: left;
		width: 100px;
		text-transform: uppercase;
	}
	.freteLista div[id^="opcaoFrete"]>div:last-child {
		border-right: 0;
		font-weight: bold;
		color: #333;
	}
	.tLined span#valorFrete {	
		font-weight: normal;
		margin-right: 49px;
		width: 240px;
		margin-top: -11px;
		border-left: 1px solid #ccc;
		text-align: right;
		height: 62px;
		display: block;
		padding-top: 20px!important;
	}
	span#valorFrete:before {
		content: "Frete:";
		position: absolute;
		top: 20px;
		left: 70px;
		font-weight: bold;
	}	
	li.item.lojista {
		bottom: inherit!important;
	}
	.loginFechamento {	   
	    width: 32%;	 
	    min-height: 319px;
	}
	.cadastroFechamento {
	    width: 32%;	 
	    margin-left: 2%;
	    min-height: 350px;	  
	}
	.sideBarLoginFech {
	    width: 32%;
	    margin-left: 2%;
	    margin-top: 0;
	    min-height: 350px;
	}	
	.stronginput {
		height: 35px;
		width: 332px;
	}
	#linksenha {	
		top: 0;
		right: 0; 
		cursor:pointer;
	}	
	.fbits-responsive-login .fbits-responsive-linha label {
	    font-size: 16px;
        font-size: 1rem;
	}
	.fbits-responsive-login .btRealizarLogin:hover, .fbits-responsive-login .btCadastrar:hover, .fbits-responsive-cadastro-box .cadastro-botoes button:hover {
		opacity: 0.9;
	}
	.cadastroFechamento .subtitle {	
	    margin: 0 auto 30px;
	    font-size: 14px;
	    font-size: .875rem;
	}
	a.bt.btCadastrarLogin {
		width: 100%!important;
		height: 50px;
		line-height: 50px;
		text-decoration: none;	
	}
	.coluna-fechamento .labelEnderecoEntrega {
	    line-height: 14px;
	    width: 100%;
	    padding: 0 2rem 1rem;
	    font-size: 11px;
	    font-size: 0.6875rem;
	}
	.selecionaEndereco span {	
		/*line-height: 15px;*/
		display: inline;
		font-size: 14px;
		font-size: 0.875rem;
	}
	.selecionaEndereco span.lblNome {
	    font-size: 14px;
	    font-size: 0.875rem;
	    display: block;
	}
	.enderecoRadio {
	    height: 21px;
	    width: 13px;
	    position: absolute;
	    margin-top: 10px;
	}
	span.texto-valor-desconto.fbits-span-valorDesconto-texto {
	    display: block;
	    text-align: left;
	}	
	span.valor-desconto.fbits-span-valorDesconto-valor {
	    display: block;
	    text-align: right;
	}
	span.texto-frete-valor {
		float: right;
		margin-left: 0;
	}	
	.coluna-fechamento .noborder.cartLinetr.bgSubt td.destaqueGridTotalS.aright {
	    font-size: inherit;
	}
	tr.produtosCart {
		display: inherit;
	}	
	.fechamento.fbits-fechamento span.textloginp {
		display: none;
	}
	.fbits-cartoes-identificaveis div#codigoSeguranca {	   
	    width: 48%;
	}
	.minhaconta {
		margin-top: 29px;
	}
	.minhaconta .clearinfo { 
		margin-top: 90px;
	}
	.content.cadastro{
	    padding: 0;
	    padding-top: 30px!important;
	    width: 580px;
	    margin: auto;
	    float: none;
	}
	.fechamento .center.formCadastro .formBox {
	    padding: 0;
	}
    
    /* Título Endereço Form. Cadastro */
	.fechamento .center.formCadastro .formBox:nth-child(5) .line .title:after {
	    font-size: 26px;
        font-size: 1.625rem;
        line-height: 45px;
	}
	/**/
	
	.box, .formBox {
		padding: 0;
		margin-bottom: .9rem;
		box-shadow: none;
		border: 1px solid #ddd;
		border-bottom: 2px solid #ccc;
		padding-bottom: 2.5rem;  
		margin-top: 1rem;
	}
	.cadastro label {
	    font-size: 16px;
	    font-size: 1rem;
	}
	.fechamento .center.formCadastro .formBox .forminline a#naoSeiCep {
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	.cadastro input[type="text"], .cadastro input[type="password"] {
	    float: left;
	}
	.cadastro .forminline { position:relative;}
	.erroCadastro {
		margin-left: inherit;
		text-align: right;		
	}
	input#cadastroPessoaFisica, input#cadastroPessoaJuridica {
		margin-top: 10px;
	}
	.fbits-responsive-cadastro-box .fbits-responsive-cadastro input#TipoSexoId-Masc, 
	.fbits-responsive-cadastro-box .fbits-responsive-cadastro input#TipoSexoId-Fem {  
	    margin-top: 10px;
	}
	.fbits-responsive-cadastro-box .fbits-responsive-linha label[for="cadastroPessoaFisica"], 
	.fbits-responsive-cadastro-box .fbits-responsive-linha label[for="cadastroPessoaJuridica"],
	.fbits-responsive-cadastro-box .fbits-responsive-linha label[for="TipoSexoId-Masc"],
	.fbits-responsive-cadastro-box .fbits-responsive-linha label[for="TipoSexoId-Fem"] {	  
	    padding: 0 0.3rem;	
	}	
	.fbits-responsive-cadastro-box input#enderecoInfo_CEP {
	    width: 100%;
	}
	.coluna-fechamento.inicial #naoSeiCep {	   
	    width: 100%;	    
	    text-align: left;
	    height: 20px;    
    	line-height: 20px;
    	margin-top: -11px;
	}
	input#txtCEP {
	    width: 100%;	   
	}
	.cadastro .wauto {
		text-align: left;
		width: 10rem!important;
	}
	.imgfrete {
	    margin-left: 8px;
	    margin-right: 8px;
	}
	input.selectData {   
	    width: 100px;
	}
	.ui-widget-content {
	    width: 40vw!important;
	    margin-left: 0;
	}
	.fbits-responsive-cadastro-box input[type="text"], .fbits-responsive-cadastro-box input[type="password"] {
	   height: 35px;	 
	}
	.cadastro button.bt.btbig.title.acenter {	
	    width: 350px;
	    float: right;
	    margin-bottom: 2rem;
	}
	.txtFpgtos+.forminline span.tipo-forma-pagamento {    
	    margin-bottom: 20px;
	}	
	label.lbnum {
		margin-right: 3px;
	}
	.coluna-fechamento span.fbits-opcoes-frete label {    
	    font-size: 12px;
	    font-size: 0.75rem;
	}
    span[for="enderecoInfo_Numero"] {
    	/*
		top: 57px!important;
		position: absolute!important;
		*/
		width: 10rem;
		right: 2px;
	}	
	.minhaconta>.center {
        padding: 1rem 2vw;
    }
	.minhaconta li.filtroPai {
	    margin-bottom: 1rem;
	    padding: .5rem;
	    color: #000;
	    font-weight: bold;
	    display: block;
	    float: left;
	    text-align: left;
	    padding-top: .7rem;
	    width: 100%;
	}
	.minhaconta ul.filtroFilho {
		padding: 1rem 0;
		clear: both;
		display: block;
	}
	.minhaconta li.filtroPai:last-child {
		background: #fff;
		margin-right: 0;
	}
	.minhaconta .filtroTitle.title  {
	    text-transform: none;
	    color: #fff;
	    display: block;
	    float: left;
	    width: 100%;
	}
	.minhaconta input#DDDRes, .minhaconta input#DDDCel, .minhaconta input#txtNumero{		    
	    height: 45px;	   
	    width: 10%;	    
	}	
	.minhaconta input#TelefoneRes, .minhaconta input#TelefoneCel {
	    width: 85%;
	    float: left;  
	}	
	.minhaconta input.normal, .minhaconta input.wide {
	    width: 65%;
	    margin-left: 0;	 
	}
	.minhaconta input#TipoSexoId {
	    margin-top: 1.2rem;
	    float: left;
	}
	.minhaconta input#txtCEP, input#txtNovaSenha, input#txtSenhaAtual, input#txtConfirmaSenha {
	    width: 65%;
	    height: 45px;
	    color: #000;
	}
	.minhaconta input.normal, .minhaconta input.wide {
	    width: 65%;
	    margin-left: 0; 
	}
	label[for="ConfirmaSenha"] {
		line-height: 1;
	}
	.forminline.cartoes > label:first-child {
		text-align: right!important;
		width: 200px!important;
	}
	.meusPedidos .boxes tr.fbits-minhaconta-produto {
		display: inherit;
		width: auto;
	}
	.meusPedidos .boxes .headerTabela {
		display: inherit;
	}
	.meusPedidos .boxes .headerTabela th:first-child {
		width: 488px;
	}
	.meusPedidos .boxes td.name + td.txtCenter {
		display: none;
	}
	.meusPedidos .boxes .headerTabela th:first-child+th {
		width: 70px;
	}
	.meusPedidos .boxes .headerTabela th:first-child+th+th+th {
		margin-left: 0;
	}
	.meusPedidos .boxes th.txtCenter {
		text-align: center;
	}
	.meusPedidos .pedidoStatus {
		line-height: 1.4rem;
		margin-top: 1rem;
		background: #fff;
		padding-left: 1rem;
		padding-bottom: 1rem;
		padding-top: 1rem;
		border-bottom: 1px solid #ccc;
	}
	.meusPedidos .boxes table.tLined.carrinho {
		margin-top: 0;
	}
	.fechamento .center.pedidoColunas {
	    width: 100%;
	    display: block;
	    float: left;
	    clear: both;	    
	}
	.fbits-responsive-carrinho-center {	    
	    padding: 0 2vw;	  
	}	
	.fbits-calculafrete .carrinhoInputBlock .btnCalculaFreteProduto {	
	    margin-top: 0;
	    float: none;
	    margin-left: -6px;
	}
	.produtoInfo #naoSeiCep, .details .details-content a#naoSeiCep {   
	    margin-left: 30%; 
	    width: 50%;
	    text-align: left;
	    font-style: italic;
	    font-size: 15px;
	    font-size: 0.9375rem;
	}
	.coluna-fechamento.central #divDoisCartoes-1 .forminline.cartoes .bandeiras .bandeira, .coluna-fechamento.central #divDoisCartoes-2 .forminline.cartoes .bandeiras .bandeira {
	   width: 25%;
	}	
	.produto-linha .cartProd + td + td:before {
	    content:"";
	    display: none;
	}
	.fechamento.fbits-confirmacaoPedido .content .passos + .center {	  
	    padding: 0 15px;
	}
	.sacNavHeader.fbits-telefones {
	    display: block;
	    width: 70%;
	    float: right;
	    text-align: right;
	}
	.sacNavHeader.fbits-telefones span {
	    background-color: #a09f9f;
	    color: #fff;
	    height: 40px;
	    display: block;
	    float: right;
	    line-height: 40px;
	    padding: 0 1rem;
	    font-size: 16px;
	    font-size: 1rem;
	    width: auto;
	    text-align: center;
	}
	.fechamento.fbits-confirmacaoPedido .fbits-responsive-carrinho-header>li.fbits-responsive-carrinho-header-coluna-descricao, .fechamento.fbits-confirmacaoPedido li.produtosCart.fbits-responsive-carrinho-item .fbits-responsive-carrinho-item-titulo {
	    width: 55%;
	    display: -webkit-flex;
	    -webkit-align-items: center;
	    display: flex;
	    align-items: center;
	}
	.fechamento.fbits-fechamento .content, .login .center.acenter, .center.integracao-facebook {
	    padding: 1rem 2vw 0;
	}
	.fechamento.fbits-fechamento .painel-cadastro .fbits-responsive-cadastro-box {
		padding: 0
	}
	.fbits-responsive-carrinho-item-quantidade.tLined {  
	    line-height: 20px;
	}
	.coluna-fechamento {
	    display: inline-block;	   
	    margin: 0 0 0 2%;	    
	    width: 32%;	  
	}
	.coluna-fechamento.inicial {
	    margin-left: 0;
	}
	img[alt="Código de Segurança"] {
	    width: auto;	    
	}
	.pedidoNumber.half.left {	   
	    width: 48%;	   
	}
	.half.right.pedidoStatus {
	    width: 50%;
	  	float: right;
	  	clear: none;
	}
	.center.listadesejos {	  
	    padding: 0 2vw 1rem;
	}
	tbody#tbdListaDeDesejos tr td[id^="produto-dados-variante"]  {
	    width: 30%;	   
	}
	tbody#tbdListaDeDesejos tr td.remover {
	    width: 20%;
	}
	tbody#tbdListaDeDesejos tr td.remover input.remover {
	    width: 30px;
	    height: 30px;
	    background-size: 25px;
	}
	tbody#tbdListaDeDesejos tr td.preco {
	    width: 20%;
	}	
	.fechamento.fbits-assinatura .content.center {
	    padding: 20px 15px 0;
	}
	span.fbits-carrinho-item-precoDe-total {
	    /*display: block;*/
	}
	.fbits-responsive-carrinho-item > div .precoParcela {
	    display: block;	
	}	
	
	.fbits-indicar {
	    width: 48%;
	    float: left;
	    clear: both;
	}
	.fbits-avaliar {
	    float: right;
	    width: 48%;
	}
	select#ddlNota {
	    padding: 0 .4rem;	  
	    margin-left: 0.5rem;	  
	}
	.fechamento .center.formCadastro .formBox:nth-child(5) .forminline:nth-child(6) {
	    width: 75%;
	    float: left;
	    display: inline-block;
	    padding-right: 0;
	}
	.fechamento .center.formCadastro .formBox:nth-child(5) .forminline:nth-child(7) {
	    width: 23%;
	    float: right;
	    display: inline-block;
	    /*margin: -83px 0;*/
	    padding-left: 0;
	    clear: none;
	}
	.fbits-spot-conteudo {  
	    height: 150px;
	}
	.spot .avaliacao {   
	    height: 24px;
	}
	.spot .avaliacao span.icon { 
	    font-size: 14px;
	    height: 24px;
	    line-height: 24px;	    
	}
	div#spot-vitrine > div:first-child {
	    font-size: 13px;
        font-size: 0.8125rem;
	}
	.jcarousel-prev, .jcarousel-next, .jsCarrousel-prev-historico.jcarousel-prev-horizontal, .jsCarrousel-next-historico.jcarousel-next-horizontal {    
	    width: 5vw;  
	}
	.fbits-home .fbits-carrossel, .mainBar.fbits-vitrine-hotsite .spotListHome {  
	    width: 90vw;   
	}
	.fbits-carrossel li, div.spot-vitrine, .fbits-carrossel-historico li {
	    width: 30vw !important;
	}
	 div.spot-vitrine {
	    width: 24%!important;
	    margin-right: 0.5%;
	    margin-left: 0.5%;
	}
	 div.spot-vitrine .spotPreco {
        height: 9rem;
    }
	 div.spot-vitrine .fbits-spot-conteudo {
        height: 178px;
    }
	#bodyProduto .jsCarrousel-prev.jcarousel-prev-horizontal {    	   
	    width: 6vw;  
	    top: 45%;
	}
	#bodyProduto .jsCarrousel-next.jcarousel-next-horizontal {    	  
	    width: 6vw;  
	    top: 45%;
	}
	.carousel .jsCarrousel li {
	    width: 29.333333vw!important;
	    padding: 0 1vw;
	}
	.jcarousel-prev:before, .jcarousel-next:before,
	.jsCarrousel-prev-historico.jcarousel-prev-horizontal:before, .jsCarrousel-next-historico.jcarousel-next-horizontal:before,
	#bodyProduto .jsCarrousel-prev.jcarousel-prev-horizontal:before, #bodyProduto .jsCarrousel-next.jcarousel-next-horizontal:before {
	    background-size: 15px;
	}
	.jcarousel-next:before, 
	.jsCarrousel-next-historico.jcarousel-next-horizontal:before,
	#bodyProduto .jsCarrousel-next.jcarousel-next-horizontal:before {
	    background-size: 15px;
	}
	.fechamento-boleto {
	    text-align: center;
	    width: 680px;
	    margin: auto;
	}
	.fechamento .produto-assinatura {
	    display: block;
	    clear: both;
	    margin: auto;
	    padding-bottom: 2rem;
	    float: none;
	    max-width: inherit;
	}
	.fechamento .produto-assinatura .fbits-responsive-container-cadastro {   
	    float: none;   
	    max-width: 500px;
	    margin: auto;
	}
	.fechamento .produto-assinatura #left {
	    width: 32%;
	    margin-right: 2%;
	    margin-top: 0;
	}
	.fechamento .produto-assinatura #right {
	    float: right;
	    clear: none;
	    width: 66%;
	    margin: 0;
	}
	.fechamento .produto-assinatura .fbits-responsive-container-cadastro .painel-cadastro {	   
	    max-width: 300px;
	}
	.fechamento .produto-assinatura #right .box-endereco-assinatura {
	    float: left;
	    width: 48%;
	}
	.fechamento .produto-assinatura #right .box-cartao-assinatura {
	    width: 50%;
	    float: right;
	}
	.fechamento .produto-assinatura #right .box-cartao-assinatura h2.titleColumn {
	    padding-top: 0;
	}
	.confirmacao-assinatura {
	    clear: both;
	    display: block;
	    max-width: 1200px;
	    margin: auto;
	}
	ul.produtosAcessados {   
	    padding: 0 2vw;   
	}
	span.fbits-produtosVistos-vazio {
	    font-size: 18px;
	    font-size: 1.125rem;
	}
	.content.produto .interna.cf, .content.listacompra .interna.cf {    
	    padding: 0 2vw;    
	}
	div#fbits-fabricante-logo img {    
	    float: right;
	}
	.fullWidth .jcarousel-wrapper .carousel {   
	    width: 92%;
	}
	.fullWidth .jcarousel-wrapper .jcarousel-prev {
	    left: 0;
	    width: 4%;
	}
	.fullWidth .jcarousel-wrapper .jcarousel-next {
	    right: 0;
	    width: 4%;
	}
	.fullWidth .jcarousel-wrapper .carousel li {
	    width: 33vw!important;
	}
	.fullWidth {
		margin-top: 1rem;
	}
	.geral-homologacao-teste {	  
	    padding: 1rem 2vw 0;	  
	    line-height: 20px;	    
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	.fbits-botoes-esquerda {
	    margin-bottom: 0;
	    width: 27.5%;
	    padding-right: 2.5%;
	}
	.fbits-responsive-carrinho-items {
	    display: block;
	    border-collapse: inherit;
	    float: left;
	    border: solid 1px #bebebe;
	    border-bottom: none;
	}
	.meusPedidos .fbits-responsive-carrinho-items {
	    border: none;
	}
	.fbits-responsive-carrinho-embalagem.aright span#valorEmbalagem {
	    margin: 0;
	    display: block;
	    float: right;
	    width: 15%;
	    text-align: center;
	}
	.fbits-responsive-carrinho-frete-opcoes {  
	    margin-top: 8px;
	}
	.fbits-responsive-carrinho-opcao-frete .fbits-responsive-carrinho-opcao-frete-pickupstore, 
	.fbits-responsive-carrinho-frete-lista div[id^="opcaoFrete"]>div,
	.fbits-pickupstore-template1 {  
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	.line h3, .line h2, h2.titleHistBusca, h3.title.titleTag, .titleOpinioes, h3.titleFechamento, h3.titleFrete, .fechamento .produto-assinatura h2.mainTitle, .titleLogin {	   
	    font-size: 26px;
	    font-size: 1.625rem;
        margin-bottom: -10px;
        background-color: transparent;
        line-height: 45px;
	}
    .termosBuscados h2.titleHistBusca {
        font-size: 0;
    }
    .termosBuscados h2.titleHistBusca:before {
        content: "Você buscou por";
        font-size: 26px;
        font-size: 1.625rem;
        background-color: transparent;
        display: block;
        position: static;
        margin-bottom: -2px;
    }
      
	.line .title+span, .lineHistBusca:after, .tagsTitle:after, .txtLoja .line:after, .divOpinioes:after, .title-fechamento .titleFechamento+span, .title-escolha-frete h3.titleFrete+span, .divTitleLogin:after {
	    top: 7px;  
	}
	.titleOpinioes, .fbits-confirmacaoPedido .title.title-confirmacao-pedido, .textoInterna .line h3.title, .textoInterna p, .mainBarInterna p {
	    font-size: 18px;
	    font-size: 1.125rem;
	}
	.textoInterna p, .mainBarInterna p {
	    line-height: 18px;
	}
	.loja-navegacao .loja-endereco li, .loja-navegacao .loja-endereco .loja-atendimento {
	    font-size: 16px;
	    font-size: 1rem;
	}
	.txtPagamento li {
		display: block;
	    width: 100%;
	    float: left;
	}
	.coluna-fechamento.central #divFormasPagamento .txtPagamento .parcelas ul li.avista label {
	    width: auto;
	    float: left;
	    display: block;
	}
	.coluna-fechamento.central #divFormasPagamento .deposito label, .coluna-fechamento.central #divFormasPagamento .parcelas label, .deposito p, .deposito p.valueDeposito, .deposito .avisoDeposito {
	    font-size: 14px;
	    font-size: .875rem;
	}
	.coluna-fechamento.central #divFormasPagamento .fbits-cartoes-identificaveis label, .coluna-fechamento.central #divFormasPagamento label.numcartao {
	    font-size: 12px;
	    font-size: .75rem;
	}
	.carrinhoVazio .alert {  
	    font-size: 16px;
	    font-size: 1rem;
	}
	.btnVoltarAsCompras {
	    max-width: 260px;
	    margin: 1rem auto 0;
	}
	
    body.minhaConta.fbits-minhaConta table.tbl_orders_list thead tr th:nth-child(2), body.minhaConta.fbits-minhaConta table.tbl_orders_list thead tr th:nth-child(3), body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td:nth-child(2), body.minhaConta.fbits-minhaConta table.tbl_orders_list tbody tr td:nth-child(3) {
        display: table-cell!important;
    }
    body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna thead tr.headerTabela th, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tr th, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr td{
        width: 16.66666666666667%!important;
        display: table-cell;      
    }
    body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna {
        padding: 20px 10px;
        width: 73%;
        position: relative;
    }
    body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar .filtroTitle.title:after {
        display: none;
    }
    body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a {
        font-size: 15px;
        font-size: 0.9375rem;
    }
    body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna.smallLabel .forminline label,
    body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline input[type="text"],
    body.minhaConta.fbits-minhaConta form[action$="AlteracaoSenha"] div.content.minhaconta .mainBarInterna .forminline label,
    body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna.labelCol .forminline label,
    body.minhaConta.fbits-minhaConta .minhaconta input#DDDRes,
	body.minhaConta.fbits-minhaConta .minhaconta input#DDDCel,
	body.minhaConta.fbits-minhaConta .minhaconta input#txtNumero,
	body.minhaConta.fbits-minhaConta .minhaconta input#TelefoneRes,
	body.minhaConta.fbits-minhaConta .minhaconta input#TelefoneCel,
	body.minhaConta.fbits-minhaConta .minhaconta input#DDDRes,
	body.minhaConta.fbits-minhaConta .minhaconta input#DDDCel,
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna thead tr.headerTabela th,
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tr th,
	table#tbItensListaDesejo tr.headerTabela th,
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr td,
	table#tbItensListaDesejo tbody#tbdListaDeDesejos tr.produtosListaDesejos td {
        font-size: 14px;
        font-size: .875rem;
    }
    body.minhaConta.fbits-minhaConta input[type="submit"], body.minhaConta.fbits-minhaConta input[type="button"] {
        font-size: 12px;
        font-size: 0.75rem;
    }
    body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .fbits-numero-pedido-minha-conta-txt,
    body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tfoot tr td {
	    font-size: 16px;
	    font-size: 1rem;
	}
    span.red.mensagemAssinatura, .red.mensagemCancelar {   
	    position: absolute;
	    top: 0;
	    left: 0;
	}
	div[id^="link-pausar"] {
	    float: left;
	    clear: both;
	    width: 40%;
	}
	div[id^="link-cancelar"] {
	    display: block;
	    float: right;
	    width: 40%;
	    margin: 1rem 0;
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(9) input#CodigoSeguranca {
	    margin: 0;
	    width: 20%;
	}
	body.minhaConta.fbits-minhaConta input[type="submit"] {
	    float: right;
	    max-width: 200px;
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	.meusCartoes a.bt.gray {   
	    max-width: 200px;  
	    float: left;    
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna thead tr.headerTabela th.fbits-responsive-carrinho-header-coluna-descricao {
	    width: 33.33333333333334% !important;
	}
	.meusPedidos .boxes table.tLined.carrinho.fbits-responsive-carrinho tr td.name.fbits-responsive-carrinho-item-descricao {
	    width: 20%!important;
	    display: table-cell!important;
	    padding: .5rem;
	    border-left: 0;
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr td.fbits-responsive-carrinho-item-imagem {
	    width: 13.33333333333334%!important;
	    padding: .5rem;
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr td.txtCenter.fbits-responsive-carrinho-item-ean {
	    display: none !important;
	}
	body.minhaConta .content.minhaconta .mainBarInterna .meusPedidos .boxes td.preco {
	    width: 16.66666666666667%!important;   
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .meusPedidos a.bt.btcontinuar, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .meusPedidos a.bt.btfinalizar {
	    max-width: 200px;
	    float: left;
	    width: 50% !important;
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .meusPedidos a.bt.btfinalizar {	   
	    float: right;	  
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .meusPedidos .pedidoStatus .bt.recompra {
	    float: left;
	}
	.meusPedidos .pedidoStatus a.boletoImprimir.bt {
	    margin: 1rem 0;
	    float: right;
	}
	table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td input[id^="comprar"] {
	    width: 85%;   
	}
	table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td[id^="produto-dados-variante"] span.cartNome {  
	    font-size: 14px;
	    font-size: .875rem;
	}
	table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td.cartProd {
	    width: 15% !important;
	    display: table-cell !important;
	}
	table#tbItensListaDesejo tbody#tbdListaDeDesejos tr td[id^="produto-dados-variante"] {
	    width: 25% !important;
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline:nth-child(5) {
	    padding: 0;
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna.labelCol .forminline label {  
	    line-height: 20px;  
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline input#TipoSexoId, body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline input#TipoSexoId {
	    margin: 2px 5px 0 10px;
	}
	.meus-cartoes .item div .remover {
	    float: left;   
	    margin: 1rem 0 0 5px;   
	}



	/*BEGIN Contraproposta e Alerta valores*/
	.fbits-Contraproposta-modal-header, .tituloAlertaValores {	
	    line-height: 40px!important;
	    height: 40px!important;	   
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	.fbits-Contraproposta-modal-header span.fbits-icone-money, .tituloAlertaValores span.fbits-icone-pagar-menos {	    
	    font-size: 22px;	    
	    margin-right: 5px;
	    line-height: 40px;
	    height: 40px;
	}
	.fbits-Contraproposta-formulario .fbits-Contraproposta-label-inputs label.fbits-Contraproposta-labelInline, .fbits-Contraproposta-div-url label.fbits-Contraproposta-url-Label, label.fbits-Contraproposta-bold.infos, .fbits-alerta-valor-label-inputs label.fbits-alerta-valor-labelInline {
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	.fbits-Contraproposta-input-group-addon, .fbits-Contraproposta-url-span {   
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	.fbits-Contraproposta-form-control, .fbits-alerta-valor-label-inputs .fbits-alerta-valor-div-inputs .fbits-Contraproposta-form-control {
	    font-size: 14px;
	    font-size: 0.875rem;
	}	
	#BtnGeraContraProposta, button#btnAlertar {    
	    float: none;    
	}
	/*END Contraproposta e Alerta valores*/
	
	/*
	.menu-mobile-dynamic {
	    width: 75%;   
	}
	.ico-menu-fecha {	   
	    height: 6.25rem;	   
	    line-height: 6.25rem;	   
	    width: 25%;	  
	}
	*/
	
	/* PÁGINAS INSTITUCIONAIS */
	.fbits-hotsite .content div[data-layout-item="10"] {
	    height: 141px;
	}
	.fbits-hotsite .footerNews {
	    position: absolute;
        left: 0;
	}
	
	/* PÁGINA NOSSAS LOJAS */
	.loja-navegacao .loja-mapa {
        width: 50%;
        margin-right: 9%;
        display: inline-block;
    }
    .loja-navegacao .loja-endereco {
        width: 40%;
        display: inline-block;
    }
}
@media (min-width: 1113px) {
    .headerLogin::before {
        margin-right: 3px;
    }
}
@media (min-width: 1055px) {
    .headerLogin {
        width: 100%;
    }
}
@media (min-width: 960px) {
    .details-content .simule {
        width: 20%;
    }
    .produtoInfo #naoSeiCep, .details .details-content a#naoSeiCep {
        margin-left: 20%;
    }
}
@media (max-width: 899px) {
    .menu li.item.raiz a, .menu li.item.raiz span.todas-categorias, .menu li.item.raiz span.menu-geral {
        font-size: 16px;
        font-size: 1rem;
        line-height: normal;
        padding-top: 3px;
    }
    .menu li.item.raiz span.todas-categorias::before, .menu li.item.raiz span.menu-geral.mnu-img.mmu-promocionais img {
        display: none;
    }
    
}

/* AJUSTES NO IE */
@media screen and (-ms-high-contrast: active), (-ms-high-contrast: none) {
   .menu li.item.raiz.todas-categorias ul.filho .item.todas-categoria-sub:hover .filho {
		left: 250px;
	}
	.fbits-carrossel li, div.spot-vitrine, .fbits-carrossel-historico li {
    	width: 22vw !important;
    }
    .menu li.mnu-img ul.filho::before, .menu li.mnu-img ul.filho::after {
        height: calc(100% - 4px);
    }
    .menu li.item.raiz {
        min-height: inherit;
        line-height: inherit;
    }
    .termosBuscados h2.titleHistBusca {
        margin-bottom: 35px;
    }
    span.fbits-produtosVistos-vazio {
        margin-top: 1rem;
    }
}

/* AJUSTES NO FIREFOX */
@-moz-document url-prefix() { 
    /*div .fbits-carrossel li, div.spot-vitrine, div .fbits-carrossel-historico li {*/
    /*    width: 22vw !important;*/
    /*}*/
    .fbits-responsive-carrinho-subtotal-valor {
        display: inline-block;
        float: none;
    }
    .fbits-responsive-carrinho-total-valor {
        float: none;
    }
    .menu li.mnu-img ul.filho::before, .menu li.mnu-img ul.filho::after {
        height: calc(100% - 4px);
    }
}

/* AJUSTES NO EDGE */
/* Microsoft Edge Browser 12+ (All) - @supports method */
@supports (-ms-ime-align:auto) {
    .menu li.mnu-img ul.filho::before, .menu li.mnu-img ul.filho::after {
        height: calc(100% - 4px);
    }
    .menu li.item.raiz {
        min-height: inherit;
        line-height: inherit;
    }
}

/* AJUSTES NO IPHONE */
@media (max-device-width : 1024px) {
    body {
        font-family: Arial, sans-serif;
    }
    .paddingbox, .fbits-produto-informacoes-extras, .fbits-produto-informacoes-extras .ui-slider-tabs-list li a h3, 
    .contentBrand .alphabet-numeric li a, .contentBrand .marcas-row .marcas-char, .matriz-grupo-alterar-quantidade span, 
    .cartItem .fbits-campo-quantidade a, body.minhaConta.fbits-minhaConta input[type="submit"], body.minhaConta.fbits-minhaConta input[type="button"], 
    body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .meusPedidos .pedidoStatus .bt.recompra, 
    .wrapper .navegacao > div div#busca span#endereco-buscado, div[class^="como-chegar"] .como-chegar, .btcontinuar, .btfinalizar, .btlimpar {
        font-family: -apple-system, avenir-lt-55-roman, sans-serif;
        font-family: Arial, sans-serif;
    }
    .spot .precoParcela, .spot .precoAssinantes {
        margin-bottom: 5px;
    }
    .spotPreco {
        margin-top: 17px;
    }
}
/* AJUSTES NO IPAD */
@media (max-device-width: 1024px) {
    #bodyListaCompra .listacompra-comprarselecionados, .produtoRecomendadoComprar button#btnComprarTodos {
        font-size: 17px;
        font-size: 1.063rem;
    }
}
@media (max-device-width: 768px) {
    .fechamento .headerLogo {
        width: 50%;
    }
    .fechamento-tel a {
        color: #ffffff;
    }
    .titleLogin {
        font-size: 16px;
        font-size: 1rem;
    }
    body.minhaConta.fbits-minhaConta div.content.minhaconta .sideBar ul.filtroFilho li a {
        display: block;
    }
    .headerLogin::before {
        margin-left: -42px;
    }
    .coluna-fechamento span.fbits-opcoes-frete {
        width: 100%;
    }
}
/* AJUSTES NO SAFARI */

@media (min-width: 1300px) {
	html {
	    font-size: 16px;
	}  
	.head {
	    padding: 0;
	} 
	.head .center {
	    padding: 0;
	    float: none;
	    margin: auto;
	    z-index: 20;
	    position: relative;
	}
	.align-items {   
	    height: 120px;
	}

	.top-icons {
	    margin: 0;
	    width: 5%;
	}
	.top-icons .ico-menu, .top-icons .ico-busca, .top-icons .ico-minha-conta, .top-icons .ico-lista-desejos {
		display: none!important;
	} 

	/* HEADER CENTRO */
    .headerLogo {
    	/*width: 35%;*/
    }
    .headerSearch input.inputSearch[type="text"] {
	    height: 35px;
	    font-size: 12px;
	    font-size: .75rem;
	}
    .headerSearch button#btnBusca, button#btnBuscaBarraFixa, button#btnBuscaFooter {
    	height: 35px;
    	width: 42px;
    }
	button#btnBusca i.icon.isearch:before, button#btnBuscaBarraFixa i.icon.isearch:before, button#btnBuscaFooter i.icon.isearch:before {
	    font-size: 20px;
	    line-height: 44px;
	}
    .loginHead {
        font-size: 12px;
	    font-size: 0.75rem;
	    /*min-width: 187px;*/
	}
	.header-log .header-sublog {
	    font-size: 12px;
	    font-size: 0.75rem;
	}
	.carrinhoHead i.icon.icart {
	    /*
		background-size: 35px;
	    */
	    left: -10px;
	}
	.carrinho.carrinhoHead a::before {
	    top: 4px;
	}
	.carrinho.carrinhoHead span.minicart-qtde-itens, .carrinho.carrinhoHead span.minicart-txt-itens {
		margin: 10px 0 0;
	}
	
	/*Menu*/
	.menu li.item.raiz {
	    /*min-width: 140px;*/
	}
	.menu li.item.raiz ul.filho {
	    /*width: 1280px;*/
	    padding: 20px 40px;
	}
	.menu li.item.raiz a, .menu li.item.raiz span.todas-categorias, .menu li.item.raiz span.menu-geral {
	    font-size: 11px;
        font-size: 0.6875rem;
	}
	.menu li.item.raiz ul.filho li.menu-geral-filho {
	    /*width: 260px !important;*/
	}
	.menu li.item.raiz ul.filho li.menu-imagem {
	    /*width: 327px;*/
	}
	.menu li.item.raiz.menu-promo {
		padding-right: 0;
	}
	/**/
	
	/* FOOTER */
	footer span.icones-pagamento-footer {
	    margin: 0 1%;
	}
	/**/

	/* home */
	.fbits-home .fbits-banner-topo {
	    max-width: 1280px;
	    margin: 0 auto 35px;
	    display: block;
	    overflow: hidden;
	    clear: both;
	    padding-top: 0;
	}
	.fbits-banner-centro .slidesjs-next, .fbits-banner-centro .slidesjs-previous {   
	    width: 40px;   
	    top: 45%; 
	}
	.fbits-banner-centro .slidesjs-previous:before, .fbits-banner-centro .slidesjs-next:before {    
	    font-size: 42px;    
	}
	.carrossel-fabricantes {
	    max-width: 1280px;
	    margin: .6rem auto 3.75rem;
	}
	.bt-prev-fab, .bt-next-fab {
	    width: 35px;
	}
	#carrossel-fabricantes.jcarousel {
	    width: 1210px;
	}
	#carrossel-fabricantes.jcarousel li {
	    /*width: 242px;*/
	    width: 175px;
	    padding: 0 15px;
	}
	.fbits-home .fbits-banner-centrolower {
	    margin-bottom: 4.375rem;
	}
	.fbits-banner-centrolower {
	    margin: 0 auto 1rem;
	    float: none;
	    max-width: 1280px;
	    overflow: hidden;
	}
	.fbits-home .mainBar {    
	    max-width: 1280px;
	    float: none;
	    margin: auto;
	}
	.jcarousel-prev, .jcarousel-next {
	    width: 35px;
	}
	.fbits-home .fbits-carrossel, .mainBar.fbits-vitrine-hotsite .spotListHome, .produto #produtos-relacionados.jsCarrousel, .produto #produtos-autor.carousel {
	    width: 1210px;
	}
	.fbits-carrossel li, div.spot-vitrine, .fbits-carrossel-historico li, .carousel .jsCarrousel li {
	    width: 292.5px!important;
	    margin-right: 5px;
	    margin-left: 5px;
	    padding: 5px;
	}
	a#btnVerMais {
	    width: 200px;
	}
	.spot {
		width: 23%;
		/*width: 31.333%;*/
	}
	.spotTitle {
	    font-size: 15px;
        font-size: .9375rem;
	}
	.spot .precoPor {
	    font-size: 24px;
	    font-size: 1.5rem;
	}
	.spot .precoPor::after {
	    font-size: 15px;
        font-size: .9375rem;
	}
	.spot .precoDe, .spot .precoParcela, .spot .precoAssinantes, .spot .fbits-spot-preco-boleto-container {
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	.spot .precoParcela:after {
	    font-size: 15px;
        font-size: 0.9375rem;
	}
	.fbits-spot-conteudo {
	    height: 183px;
	}
	.spot .bt.comprar {  
	    /*width: 60%;*/
	}
	.spot .fbits-spot-conteudo .botoesSpot a.adicionar, .spot .fbits-spot-conteudo .botoesSpot a.wishLink.addListaDesejos {   
	    margin: 0 0 0 2%;   
	    width: 18%;    
	}
	.spot .avaliacao {
	    height: 28px;
	}
	.spot .avaliacao span.icon {  
	    height: 28px;
	    line-height: 28px;
	}
	.ribbon.fbits-etiqueta-off, .produto .fbits-preco-off {
	    font-size: 13px;
	    font-size: 0.8125rem;
	}
	div#spot-vitrine > div:first-child {
	    font-size: 12px;
        font-size: 0.75rem;
	}
	div#historyBoard, .nuvemTags {
	    max-width: 1280px;
	    margin: auto;
	    display: block;
	    float: none;
	    overflow: hidden;
	}
	.fbits-carrossel-historico {
	    width: 1210px!important;
	}
	.fbits-produtos-acessados-texto {
	    font-size: 12px;
        font-size: .75rem;
	}
	.jcarousel-prev, .jcarousel-next, .jsCarrousel-prev-historico.jcarousel-prev-horizontal, .jsCarrousel-next-historico.jcarousel-next-horizontal,
	#bodyProduto .jsCarrousel-prev.jcarousel-prev-horizontal, #bodyProduto .jsCarrousel-next.jcarousel-next-horizontal {
	    width: 35px;
	    top: 45%;
	}
	#bodyProduto .jsCarrousel-prev.jcarousel-prev-horizontal {
		left: 0;
	}
	#bodyProduto .jsCarrousel-next.jcarousel-next-horizontal {
		right: 0;
	}
	.produto-imagem-eazyZoom .fbits-componente-imagemvariantethumb .jcarousel-prev, .produto-imagem-eazyZoom .fbits-componente-imagemvariantethumb .jcarousel-next {
	    height: 82px;
	}
	.footerNewsletter {    
	    max-width: 1280px;
	}
    .footerNews {
        padding: 1em 30px;
    }  
    .footerNewsForm input[type="text"] {
        font-size: 12px;
        font-size: .75rem;
    }
    i.icon.inews  {
	    font-size: 35px;
	}     
    .footerSearch {
	    padding: 0;
	    max-width: 1280px;
	    margin: auto;
	    float: none;
	    overflow: hidden;
	}
	.fbits-conteudo-rodape {
	    padding: 0;
	    max-width: 1280px;
	    float: none;
	    margin: 1rem auto 2rem;
	    overflow: hidden;
	}
	.fbits-banner-rodape {	  
	    float: none;	   
	    max-width: 1280px;
	    margin: 0 auto 1.5rem;
	    overflow: hidden;
	}   
    .pontosAvaliacao a img {
	    width: 1rem;
	}
	.coluna-listacompra {
	    margin-top: 0;
	}
	.colunaProduto {	  
	    padding-top: 0;
	}
	.colunaProduto .fbits-etiquetas-sequencial {
	    padding-top: 0;
	}
	.colunaProduto div[id^="view-item-quantidade"]+div {
	    max-width: 250px;
	}
	.colunaProduto .precoDe, .fbits-componente-listacompra-preco-de, .listacompra-produtos-precode{
	    font-size: 14px;
        font-size: .875rem;
	}
	
	/* ETIQUETAS PÁGINA PRODUTO*/
    .produtoInfo-title .fbits-etiquetas-sequencial {
        max-width: 118px;
    }
    /**/
	
    button#btnIndicar, .btAvaliar button {	
	    margin: 0 auto;
	    float: right;
	    padding: 0 1rem;
	    font-size: 12px;
        font-size: .75rem;
	}
    #bodyListaCompra .fbits-indicar, #bodyListaCompra .fbits-avaliar { display:inline-block;}
    
    /* Ajustes Thumb */
    #bodyListaCompra .fbits-componente-imagemvariantethumb .jcarousel li a.zoom-thumbnail, #bodyListaCompra .fbits-imagensMinicarrossel-item a.zoom-thumbnail {
        width: 83px;
	    margin-right: 5px;
	    margin-left: 5px;
    }
    /**/
    
    .simule {
        font-size: 14px;
        font-size: 0.875rem;
    }
    
    a#indicaAmigo {
        margin-top: 0;
    }
    .acoesProd {
        float: right; 
        margin-top: 0;
    } 
    .fechamento .center.pedidoColunas {
	    padding: 0;
	}
	#txtCalculaFreteProduto {
	    clear: none;
	    width: 120px;
	    margin-top: 8px;
	} 
	.details-content #txtCalculaFreteProduto {
	    font-size: 12px;
	    font-size: 0.75rem;
	}
	.produtoInfo #naoSeiCep, .details .details-content a#naoSeiCep {
	    font-size: 12px;
	    font-size: .75rem;
	}
    /*footer -->*/
    footer .center {       
        padding: 0;
    }
    
    .contato-footer.contato-fone h4 {
        font-size: 14px;
        font-size: 0.875rem;
    }
    
    li.titlefooter {
        font-size: 18px;
        font-size: 1.125rem;
    }
    
    li.linksfooter a {
        font-size: 14px;
        font-size: .875rem;
    }
    
	footer section.fbits-footer-blocos-horizontal ul.blockfooter.bloco-formas-pagamento {
        width: 52%;
	    padding-right: 2%;
	}
	footer section.fbits-footer-blocos-horizontal ul.blockfooter.bloco-certificados {
        width: 48%;
    }
    footer .footer-seguranca {
        padding: 32px 0 8px;
        padding: 2rem 0 .5rem;
    }
	.footer-seguranca li.titlefooter.title-formas-pagamento, .footer-seguranca li.titlefooter.title-certificados {
	    font-size: 16px;
	    font-size: 1rem;
	    margin-top: 22px !important;
	}
	
	/* Ajustes para o selo do Google*/
	footer .blockfooter.noborder.bloco-formas-pagamento .linksfooter.li-formas-pgto {
	    margin-top: 16px;
	}
	footer .linksfooter.li-certificados .selo-seal {
	    float: none;
	    width: 72%;
	    display: inline-block;
	}
	footer .footer-seguranca .selo-seal img {
	    display: block;
        margin: 0 auto;
        float: none;
        width: 90%;
	}
	li.linksfooter .selo-seal a {
	    width: 24% !important;
        float: none !important;
        display: inline-block;
        vertical-align: middle;
        min-height: 30px;
	}
	
	/**/
	
    footer section.fbits-footer-blocos-horizontal ul.blockfooter span.icones-pagamento-footer {
	    width: 100%;
	    max-width: 44px;
	    height: 29px;
	    background-size: contain;
	}
    footer section.fbits-footer-blocos-horizontal ul.blockfooter span.icones-pagamento-footer.icone-master {
	    width: 100%;
	    max-width: 37px;
	    height: 27px;
	    background-size: contain;
	}
    footer section.fbits-footer-blocos-horizontal ul.blockfooter span.icones-pagamento-footer.icone-hipercard {
	    width: 100%;
	    max-width: 65px;
	    height: 29px;
	    background-size: contain;
	}
    footer section.fbits-footer-blocos-horizontal ul.blockfooter span.icones-pagamento-footer.icone-amex {
	    width: 100%;
	    max-width: 28px;
	    height: 29px;
	    background-size: contain;
	}
    footer section.fbits-footer-blocos-horizontal ul.blockfooter span.icones-pagamento-footer.icone-elo {
	    width: 100%;
	    max-width: 28px;
	    height: 29px;
	    background-size: contain;
	}
    footer section.fbits-footer-blocos-horizontal ul.blockfooter span.icones-pagamento-footer.icone-valecult {
	    width: 100%;
	    max-width: 62px;
	    height: 29px;
	    background-size: contain;
	}
	ul.blockfooter.noborder.copyright, ul.blockfooter.noborder.endereço-footer {
	    font-size: 10px;
        font-size: 0.625rem;
        line-height: 0.875rem;
	}
	/* footer fim */

    .bread {     
        padding: 0 32px;
        font-size: 14px;
        font-size: .875rem;
    }
    .fbits-conteudo-topo {
	    padding: 1rem 0;   
	}
    .fbits-categoria .interna.cf, .busca .interna.cf, .fabricante .interna.cf {
	    padding: 0;
	    max-width: 1280px;
	    margin: auto;
	    float: none;
	    overflow: hidden;
	}
	
	.fbits-categoria .spot, .fbits-busca .spot {
	    width: 24%;
	    margin-left: 0;
	}
	
	.busca .interna.cf {
	    padding-top: 1rem;
	}
	.fbits-categoria .interna.cf > .filtro, .minhaconta .sideBar, .fbits-hotsite .fbits-estatica-esquerda, .fbits-busca .interna.cf > .filtro, .fabricante .interna.cf > .filtro {
	    width: 22%;    
	}
	.mainBar, .fbits-categoria .mainBar, .busca .mainBar, .fabricante .mainBar, .minhaconta .mainBarInterna, .fbits-hotsite .fbits-estatica-conteudo, .fabricante .interna.cf .mainBar {
	    width: 78%;
	    padding-left: 1%;	   
	}
	.titleOpinioes, .fbits-confirmacaoPedido .title.title-confirmacao-pedido, .textoInterna .line h3.title {
	    font-size: 16px;
	    font-size: 1rem;
	}
	ul.filtroFilho > li, .fbits-categoria .interna.cf .filtro #sidebarLeft .menu-esquerdo li a {
	    font-size: 14px;
        font-size: .875rem;
	}
	ul.filtroFilho > li {
	    height: 22px;
	}
    .fullWidth .jcarousel-wrapper .carousel li {
	    width: 233.5px !important;
	}
    .fbits-categoria.tenis .mainBar {      
        padding: 0 32px;
    } 
    .mostrando, span.fbits-ordenar-por {
        font-size: 12px;
        font-size: 0.75rem;
    }
    .ordenar {      
        width: 30%;
    }
    .bgResultadosCat.fbits-info-top .paginacao {      
        width: 70%;      
    }   
    .precoPor span.fbits-avista {
        display: inline-block;
    }
    .content.contentBrand {
	    padding: 0;
	    max-width: 1280px;
	    display: block;
	    margin: auto;
	}
	span.fbits-indique-avalie.texto-indique, span.fbits-indique-avalie.texto-avalie {    
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	input[type="text"].inputAvaliacao, .textAreaIndicar, .textAreaAvaliacao {
	    font-size: 13px;
        font-size: 0.8125rem;
	}
    .verDetalhes i.icon.icoVerDetalhes:before {
        /*
	    width: 20px;
	    height: 20px;
	    background-size: 1rem;	
	    */
	}
    .verDetalhes i.icon.icoVerDetalhes:after {	  
	    line-height: 20px;
	}
	.prodTitle {
	    line-height: 32px;
	    font-size: 28px;
	    font-size: 1.75rem;
	    margin-top: -5px;
	    padding-top: 10px;
	}
	.produto .fbits-sku {
	    font-size: 12px;
        font-size: .75rem;
	    /*clear: both;*/
	}
	a.avalie-top {
	    font-size: 10px;
        font-size: .625rem;
	}
	.produto-comprar {
        margin-top: 13px;
    }
    .prodVariante .summaryDesktop, #ulFrete .summaryDesktop, .prodVariante .summary, #ulFrete .summary {
        font-size: 12px;
	    font-size: 0.75rem;
    }
    .details .details-content p {
	    font-size: 12px;
        font-size: .75rem;
	}
	#cepCarrinho #txtCalculaFreteProduto {
        /*width: 190px;*/
    }
    .atributo-div {
        font-size: 13px;
        font-size: 0.8125rem;
    }
	.statusBoleto a.bt.btMedium, .pedidoStatus a[href="Recompra"] {
	    width: 250px;
	}
	section.fbits-responsive-carrinho {
	    width: 100%;
	    float: left;
	    margin: auto;
	}
	.entrega {
	    width: 50%;
	    float: left;
	    margin: 2rem auto;
	    overflow: hidden;
	}
	.boxBoletoFechamento {
	    width: 700px;   
	}
	.fbits-dados-livraria {  
	    text-align: left;
	}
	.verDetalhes {   
	    /*padding-left: 6%;*/
	}
	.fbits-componente-imagemvariantethumb img {
		width: 92px !important;
		margin-top: 0px;	
	}
	.fbits-componente-imagemvariantethumb .jcarousel li {
	    /*
	    width: 92px!important;
	    margin-right: 6px;
	    margin-left: 5px;
	    */
	    width: 83px!important;
	    margin-right: 5px;
	    margin-left: 5px;
	}

	/* Produto */
	.paddingbox, .fbits-produto-informacoes-extras {
	    font-size: 14px;
        font-size: 0.875rem;
        line-height: 0.9375rem;
	}
	.fbits-produto-informacoes-extras {
		/*padding: 3rem 0;*/
		padding: 0 0 3rem;
	}
	.colunaProduto.coluna1, .coluna-listacompra.coluna1 {
	    /*padding-right: 5%;*/
	    margin-right: 5%;
	    width: 40%;
	}
	.produtoInfo-title.colunaWide {   
	    width: 55%; 
	    margin-bottom: 1rem;  
	}
	#bodyListaCompra .listacompra-comprarselecionados {
	    max-width: 250px;
	}
    .colunaProduto, .coluna-listacompra {   
	    width: 55%;
	}
    .colunaProduto .fbits-calculafrete .errosFrete.error, .coluna-listacompra .fbits-calculafrete .errosFrete.error {   
	    padding-left: 20%;
	}
	.colunaProduto .precoVista, .fbits-parcelamento .precoVista {
	    font-size: 15px;
        font-size: 0.9375rem;
	}
	.spotVejaTambem div#divSpotProdutoRecomendado {
	    width: 265px;	
	}	
	.tmbMore:before, .divisor:before, .tmbIgual:before, .divisorIgual:before  {
	    margin-top: 170px;
	}
	.produto .produtoRecomendadoComprar .precoPor {	
	    line-height: 42px;
	    margin-top: 30px;	   
	}
	.produtoRecomendadoComprar button#btnComprarTodos {	  
	    height: 55px;	  
	    margin-top: 10px;	
	}
	.fbits-produto-informacoes-extras .ui-slider-tabs-list li {
        height: 55px !important;
    }
	.fbits-produto-informacoes-extras .ui-slider-tabs-list li a {
        padding: 10px 15px;
    }
    
    /* lista de compras */
    .coluna-listacompra .lista-compra span {
        line-height: 32px;
        font-size: 28px;
        font-size: 1.75rem;
        margin-top: -5px;
        padding-top: 10px;
    }

    /* carrinho */
    .fbits-botoes-direita>div.fbits-botao-finalizarPedido {
	    width: 50%;
	}
    .btcontinuar, .btfinalizar, .btlimpar {
	    /*max-width: 384px;*/
	}

	/*fechamento*/
	.pagamento .fbits-pedido-pagamento-template2 input, .pagamento .fbits-pedido-pagamento-template2 .nomeCartao, .coluna-fechamento.final table.tLined.carrinho td.fbits-td-descricao span.cartNome {
	    font-size: 12px;
        font-size: .75rem;
	}
	.coluna-fechamento.final table.tLined.carrinho .produto-linha td.valor-total-colunas {
	    font-size: 13px;
	    font-size: .8125rem;
	}
	.meusPedidos .boxes .headerTabela th:first-child {
		width: 368px;
	}    
	.minhaconta li.filtroPai {	
		padding: 1rem;	
	}	
	.fechamento.fbits-fechamento span.textloginp {
		display: none;
	}
	.fechamento.fbits-fechamento .headerSearch, .fechamento.fbits-geral .headerSearch {
		width: 474px;
	}	
	.tLined tr.cartTotal:last-child td {
		padding-left: 25px!important;
	}
	tr.fbits-carrinho-tr-frete {
		width: 450px;
	}
	.freteLista div[id^="opcaoFrete"] > div {	
		width: 142px;
	}	
	.login .center.acenter, .center.integracao-facebook {
	    padding: 1rem 0 0;
	    margin: auto;
	    max-width: 1280px;
	    float: none;
	}
	.center.integracao-facebook {
	    margin-bottom: 2rem;
	}
	.passos {
		margin-bottom: 40px;
	}
	.coluna-fechamento .tLined tr:last-child td {
		padding-top: 0px!important;
	}
	.content:after {
		clear: both;
	}	
	.cadastro label {
	    font-size:12px;
        font-size:0.75rem;
	}
	.fechamento .center.formCadastro .formBox .forminline a#naoSeiCep {
	    font-size:11px;
        font-size:0.6875rem;
	}
	.cadastro input#txtEndereco {
		margin-right: 320px;
	}
	.cadastroFechamento .subtitle{
		width: 60%;
		font-size: 12px;
		font-size: .75rem;
	}
	a.bt.right.adicionarCartao {
		padding-left: 1rem;
		padding-right: 1rem;
		width: 250px;
		margin-top: 2rem;	
		margin-left: 524px;
	}
	.fbits-hotsite .content {
	    padding: 1rem 0;
	    max-width: 1280px;
	    display: block;
	    margin: auto;
	    float: none;
	}
   .meusPedidos .boxDefault.confirmacao {
		margin-left: 0;
		width: 350px;
	}
	.meusPedidos .boxes .tLined.carrinho tr.cartTotal {
		width: 388px;
	}	
	.fbits-responsive-carrinho-center {
	    padding: 0;
	    max-width: 1280px;
	    margin: auto;
	    float: none;
	}
	.carrinhoInputBlock input[type="text"], #txtCalculaFrete.fbits-carrinho-calcularFrete-cep {
	    font-size: 12px;
	    font-size: .75rem;
	}
	li.linksfooter a.facebook-footer {
	    display: block;
	}
	.fechamento.fbits-confirmacaoPedido .content .passos + .center {	  
	    padding: 0 32px;
	}
	.sacNavHeader.fbits-telefones {	   
	    width: 75%;	
	}
	.fbits-responsive-login .loginbox, .loginFechamento .loginbox {
	    padding: 0;
	}
	.fbits-responsive-login .fbits-responsive-linha label {
	    font-size: 12px;
        font-size: .75rem;
	}
	.stronginput {
		height: 50px;	
	}
	.fbits-responsive-cadastro-box input[type="text"], .fbits-responsive-cadastro-box input[type="password"] {
	   /*height: 50px;*/	 
	}
	.fbits-responsive-cadastro-box {	   
	    padding: 0 2rem;	  
	}
	.fbits-responsive-cadastro-box .fbits-responsive-linha label[for="cadastroPessoaFisica"], 
	.fbits-responsive-cadastro-box .fbits-responsive-linha label[for="cadastroPessoaJuridica"],
	.fbits-responsive-cadastro-box .fbits-responsive-linha label[for="TipoSexoId-Masc"],
	.fbits-responsive-cadastro-box .fbits-responsive-linha label[for="TipoSexoId-Fem"] {	   
	    padding: 0 1rem;	
	}
	.fbits-responsive-cadastro-box input#enderecoInfo_CEP {
	    width: 79%;
	    float: none;
	}
	.coluna-fechamento.inicial #naoSeiCep {
	    width: 19%;
	    display: inline-block;
	    float: none;
	    text-align: center;
	    font-size: 10px;
	    font-size: 0.625rem;
	    margin-top: 0;
	}
	.coluna-fechamento.inicial #divFormNovoEndereco .forminline.fbits-pedido-form-cep #naoSeiCep {
        margin-top: 9px;
        margin-left: 5px;
    }
	input#txtCEP {
	    width: 65%;
	    float: left;
	}
	.imgfrete {
	    margin-left: 15px;
	    margin-right: 15px;
	}
	.imgfrete:before {    
	    font-size: 50px;
	}
	input.selectData {
	    width: 160px;
	}
	.txtFpgtos + .forminline span.tipo-forma-pagamento {	  
	    width: 25%;
	}
	.coluna-fechamento.final button, .coluna-fechamento.central button, , button#btnFinalizarPedidoFinal2 {
	    height: 50px;
	    width: 350px;	    
	}
	.coluna-fechamento.central #divFormasPagamento label, .coluna-fechamento.central #divFormasPagamento .parcelas label, .deposito .avisoDeposito {
        font-size: 11px;
        font-size: 0.6875rem;
    }
    .coluna-fechamento.central #divFormasPagamento .fbits-cartoes-identificaveis label, .coluna-fechamento.central #divFormasPagamento label.numcartao {
        font-size: 11px;
        font-size: 0.6875rem;
    }
    .deposito p {
        font-size: 13px;
        font-size: 0.8125rem;
    }
    .deposito p.valueDeposito {
        font-size: 12px;
        font-size: 0.75rem;
    }
	.fechamento.fbits-fechamento .content {
	    padding: 20px 0 0;
	    max-width: 1280px;
	    margin: auto;
	    float: none;
	    overflow: hidden;
	}
	.minhaconta>.center {
	    padding: 1rem 0;
	    max-width: 1280px;
	    margin: auto;
	    display: block;
	}
	.minhaconta a.paypalBotao {
	    width: auto;
	}
	.center.listadesejos {
	    padding: 0 0 3rem;
	    max-width: 1280px;
	    display: block;
	    float: none;
	    margin: auto;
	}
	
	
	/* fixed header */
	.fixed-bar {
	    text-align: center;
	    background: #0d0c0d;
	    z-index: 9999;
	    position: fixed;
	    width: 100%;
	    /*height: 158px;*/
	    height: 90px;
	    left: 0;
	    top: 0;
	    box-shadow: 0 1px 3px rgba(0,0,0,0.3);
	}
	.fixed-bar .bar-content {
	    height: 100%;
	    width: 100%;
	    margin: 0;
	}
	.fixed-bar .close {
	    left: 0;
	    height: 100%;
	    display: block;
	    position: absolute;
	    cursor: pointer;
	    float: left;
	    z-index: 99;
	    display: none;
	}
	.fixed-bar .close .arrow {
	    margin: 55px 20px 0;
	    border-left: 5px solid #FFF;
	    border-right: 5px solid #FFF;
	    border-bottom: 6px solid #a3bd31;
	}
	.fixed-bar.nohead .close .arrow {
		margin: 4px 20px;
	    border-bottom: 0;
	    border-top: 6px solid #a3bd31;
	}
	.fixed-bar.hide .conteudo-barra-fixa, .fixed-bar.nohead .conteudo-barra-fixa {
	    display: none;
	}	
	.fixed-bar .conteudo-barra-fixa {
	    display:block;
	    float: left;
	    width: 100%;
	    position: relative;
	    padding: 0;
	    background: #0d0c0d;
	}
	.fixed-bar a {
		/*font-weight: normal;*/
	}
	.fixed-bar .align-items {
	    max-width: 1280px;
	    margin: auto;
	    height: 90px;
	    position: relative;
	    z-index: 99;
	}
	.fixed-bar .headerLogo {
	    width: 25%;
	}
	.fixed-bar .div-busca-desktop {
	    width: 50%;
	}
	.fixed-bar .headerSearch {
	    top: inherit;
	    margin: 0;
	    position: relative;
	}	
	.fixed-bar .top-icons .ico-minha-conta, .fixed-bar .top-icons .ico-lista-desejos {
	    display: inline-block!important;
	    font-family: 'FontAwesome';
	    margin-left: 0;
	    margin-right: 20px;
	}
	.fixed-bar .top-icons .ico-carrinho {
	    float: right;
	}
	.fixed-bar .conteudo-barra-fixa .menu-container {
		display: none;
	}	
	
	.fechamento.fbits-assinatura .content.center {
	    padding: 30px 0;
	    max-width: 1280px;
	    float: none;
	}
	span.fbits-carrinho-item-precoDe-unitario {
		/*display: inline-block;*/
	}
	.fbits-responsive-carrinho-item-valor-unitario  {
	    display: inline-block!important;
	    width: 15%;
	    line-height: 40px;
	}
	input.qtdCarrinho, input.listacompra-produtos-quantidade {
	    font-size: 12px;
	    font-size: .75rem;
	}
	span.fbits-carrinho-item-precoDe-total {
	    /*display: inline-block;*/
	}
	div#RecuperarSenha {
	    font-size: 12px;
	    font-size: .75rem;
	}
	.sidebarLogin .cartSubTotal {
	    height: 50px;
	    line-height: 50px;
	}
	.content.cadastro {
	    width: 100%;
	    padding: 0 32px;
	}
	.fechamento .center.formCadastro .formBox:first-of-type {
	    width: 100%;
	    margin-bottom: 1.5em;
	}
	.fechamento .center.formCadastro .formBox {
	    width: 30%;
	    margin-right: 5%;
	}
	.fechamento .center.formCadastro .formBox:last-of-type,
	.fechamento .center.formCadastro .formBox:nth-child(6) {
	    margin-right: 0;
	}
	.fechamento .center.formCadastro .formBox .forminline {    
	    padding: 0 1.5625rem .5rem;    
	}
	.fechamento .center.formCadastro .formBox .cadNews {
		padding: 0 1.5625rem; 
	}
	.fechamento .center.formCadastro .formBox:nth-child(4) {
	    margin-bottom: 4rem;
	}
	.fechamento form[action="/PessoaJuridica"] .center.formCadastro .formBox:nth-child(5) .forminline:nth-child(3)>#enderecoInfo_Numero {
	    margin-top: -40px;
	}
	body.fechamento.fbits-confirmacaoPedido .content {
	    max-width: 1280px;
	    margin: auto;
	    float: none;
	    overflow: hidden;
	}
	.coluna-fechamento span.fbits-opcoes-frete label {
	    font-size: 11px;
	    font-size: 0.6875rem;
	}
	.coluna-fechamento .fbits-pickupstore-loja label[for^="lojaId"] {
	    font-size: 12px;
        font-size: .75rem;
	}
	.coluna-fechamento table.tLined.carrinho tr.headerTabela th {
	    font-size: 11px;
	    font-size: 0.6875rem;
	}
	.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorTotal span.fbits-span-valorTotal-texto {
	    font-size: 12px;
	    font-size: 0.75rem;
	}
	.buyInfo {
	    font-size: 11px;
        font-size: .75rem;
	}
	.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-retiradaLoja td, .coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-entregaAgendada td, .coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-valorDesconto, .coluna-fechamento .tLined.carrinho tfoot tr.valorfrete {
	    font-size: 12px;
	    font-size: 0.75rem;
	}
	div#observacoesAdicionais h3.titleFrete {
	    font-size: 12px;
        font-size: .75rem;
	}
	.coluna-fechamento .tLined.carrinho tfoot tr.fbits-tr-subtotal {
	    font-size: 12px;
        font-size: .875rem;
	}
	.fechamento .produto-assinatura div[id^="produto-item"] {   
	    display: -webkit-flex;
	    -webkit-align-items: center;
	    display: flex;
	    align-items: center;
	}
	.fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-foto {
	    float: left;
	    padding-right: 0;
	    width: 100%;
	    text-align: right;
	}
	.fechamento.fbits-assinatura div#produto div[id^="produto-item"] h1.prodTitle {
	    width: 100%;
	    display: block;
	    float: left;
	    margin-bottom: 0.5rem;
	    text-align: left;
	    font-size: 16px;
	    font-size: 1rem;
	}
	.fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info {    
	    width: 55%;
	    text-align: left;
	}
	.fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info h1.prodTitle {
	    text-align: left;
	}
	.fechamento .produto-assinatura .fbits-responsive-container-cadastro .painel-cadastro {	   
	    max-width: 500px;
	}
	.fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-foto, .fechamento div#produto div[id^="produto-item"] .produto-assinatura-foto {	   
	    float: left;	  
	    width: 20%;
	}
	.fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-foto img {  
	    float: left;
	}
	.fechamento .produto-assinatura div[id^="produto-item"] .produto-assinatura-info, .fechamento div#produto div[id^="produto-item"] .produto-assinatura-info {   
	    width: 80%;
	}
	.fechamento .produto-assinatura div#produto h2.title-produto-assinatura {
	    font-size: 25px;
	    font-size: 1.5625rem;
	    margin-bottom: 2rem;
	}
	.fechamento .produto-assinatura h2.mainTitle.fbits-assinatura-title.fbits-assinatura-title-endereco {
	    margin-bottom: 2rem;
	    font-size: 20px;
	    font-size: 1.25rem;
	}
	.fbits-content-topo .bread ol, .produto .bread ol, .content.listacompra .bread ol, .bread.center ol {
	    display: block;
	    max-width: 1280px;
	    margin: auto;
	}
	ul.produtosAcessados {
	    padding: 0;
	}
	span.fbits-produtosVistos-vazio {
	    font-size: 15px;
        font-size: 0.9375rem;
	}
	div#nuvemTags {
	    padding: 0;
	}
	.content.produto .interna.cf, .content.listacompra .interna.cf {
	    padding: 0;
	    max-width: 1280px;
	    margin: auto;
	    float: none;
	}
	div#fbits-fabricante-logo {   
	    height: 40px;
	}
	button#btnAlertaValores {    
	    padding: 0 5px;	   
	    float: left;
	    width: 48%;
	    font-size: 14px;
	    font-size: 0.875rem;
	}
	.fbits-Div-BtnContraproposta {    
	    float: left;
	    clear: none;
	    width: 48%;
	    margin: 2rem 0;
	    cursor: pointer;
	    position: relative;
	}
	.fbits-Div-BtnContraproposta:before {  
	    width: 10%;
	    height: 38px;
	    line-height: 40px;
	    display: inline-block;
	}
	.fbits-Btn-BtnContraproposta {
	    padding: 0;
	    height: 38px;
	    line-height: 40px;
	    width: 85%;
	    font-size: 11px;
	    font-size: .6875rem;
	    position: relative;
	    top: -2px;
	}
	div#msgEstoqueDisponivel {  
	    margin-top: 1rem;
	    font-size: 12px;
        font-size: .75rem;
	}
	.spotVejaTambem.produtoRecomendadoComprar {
	    margin-top: 5rem;
	    width: 25%;
	    float: right;
	}
	.reviewMeta {
	    height: auto;
	    line-height: 18px;   
	}
	.reviewMeta span.icon {
	    line-height: 18px;
	    height: 18px;
	    float: none;
	    display: inline-block;
	}
	.reviewUser {
	    display: inline-block;
	    float: right;
	    line-height: inherit;
	}
	.geral-homologacao-teste {
	    padding: 1rem 0 0;
	    font-size: 16px;
	    font-size: 1rem;
	    line-height: 25px;
	}
	.conteudo-geral-homologacao-teste {   
	    max-width: 1280px;
	    margin: auto;
	}
	.ui-widget-content {	   
	    width: 280px!important;
	}
	.half.right.pedidoStatus+b .boletoFechamento {
	    display: block;
	    float: none;
	    margin: auto;
	    width: 100%;
	    text-align: center;
	}
	.fbits-confirmacao-acoes a.bt.btcontinuar { 
	    float: left;
	    margin: 0;
	}
	.content.cadastro .center.formCadastro {
	    max-width: 1280px;
	    margin: auto;
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .tbl_orders_list tr {
	    display: table;  
	    width: 100%;
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .tbl_orders_list tr:last-child {
	    display: block;
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna.smallLabel .forminline label,
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .forminline input[type="text"],
	body.minhaConta.fbits-minhaConta form[action$="AlteracaoSenha"] div.content.minhaconta .mainBarInterna .forminline label,
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna.labelCol .forminline label,
	body.minhaConta.fbits-minhaConta input[type="submit"], body.minhaConta.fbits-minhaConta input[type="button"],
	body.minhaConta.fbits-minhaConta .minhaconta input#DDDRes,
	body.minhaConta.fbits-minhaConta .minhaconta input#DDDCel,
	body.minhaConta.fbits-minhaConta .minhaconta input#txtNumero,
	body.minhaConta.fbits-minhaConta .minhaconta input#TelefoneRes,
	body.minhaConta.fbits-minhaConta .minhaconta input#TelefoneCel,
	body.minhaConta.fbits-minhaConta .minhaconta input#DDDRes,
	body.minhaConta.fbits-minhaConta .minhaconta input#DDDCel,
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna thead tr.headerTabela th,
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tr th,
	table#tbItensListaDesejo tr.headerTabela th,
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tbody tr td,
	table#tbItensListaDesejo tbody#tbdListaDeDesejos tr.produtosListaDesejos td {
	    font-size: 10px;
        font-size: .625rem;
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna .fbits-numero-pedido-minha-conta-txt,
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna tfoot tr td {
	    font-size: 14px;
	    font-size: .875rem;
	}
	.textoInterna p, .mainBarInterna p {
	    font-size: 14px;
	    font-size: .875rem;
	    line-height: 1rem;
	}
	.loja-navegacao .loja-endereco li, .loja-navegacao .loja-endereco .loja-atendimento {
	    font-size: 13px;
        font-size: .8125rem;
	}
	div[id^="link-pausar"] a.bt.pausarAssinatura, div[id^="link-cancelar"] a.bt.cancelarAssinatura {
	    float: left;
	    width: 100%;
	    text-decoration: none;
	}
	div[id^="link-cancelar"] a.bt.cancelarAssinatura {
	    float: right;	    
	}


	/* BEGIN Geolocalização */
	.wrapper .navegacao {
	    position: absolute;
	    top: 223px;
	    bottom: inherit;
	    left: 10px;	    
	    width: 300px;	   
	}
	.wrapper .navegacao > div .resultado-busca div#lojas {
		max-height: 100%;
	}
	.wrapper .navegacao div#rota div#resultado-navegacao {
		max-height: 370px;
	}
	.wrapper .navegacao>div div#busca span#endereco-buscado {	   
	    font-size: 14px;
	    line-height: 18px;	   
	}
	/* END Geolocalização */

	span#newsletter-mensagem {
	    position: absolute;
	    bottom: -18px;
	    font-size: 12px;
	}


	.fbits-Contraproposta-coluna-esquerda label.fbits-Contraproposta-labelInline.fbits-Contraproposta-bold {
	    line-height: 20px;
	    font-size: 12px;
	    font-size: 0.75rem;
	}
	.fbits-Contraproposta-input-group-addon, .fbits-Contraproposta-form-control {   
	    font-size: 12px;
	}
	.fbits-Contraproposta-input-group-addon .fbits-Contraproposta-envelope-i {    
	    font-size: 20px;   
	}

	body.minhaConta.fbits-minhaConta form[action="/MinhaConta/AlteraEmail"] div.content.minhaconta .mainBarInterna,
	body.minhaConta.fbits-minhaConta form[action="/MinhaConta/AlteracaoSenha"] div.content.minhaconta .mainBarInterna,
	body.minhaConta.fbits-minhaConta div.content.minhaconta form[action="/AtualizaDados"] .mainBarInterna,
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna form[action="/Endereco/Cadastrar"]  {
	    padding: 20px 150px;  
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna form[action="/Endereco/Cadastrar"] a.helpCep {
	    width: 35%;
	    text-align: right;
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna form[action="/Endereco/Cadastrar"] .forminline:nth-child(5) {
	    width: 65%;
	    float: left;
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna form[action="/Endereco/Cadastrar"] .forminline:nth-child(6) {
	    width: 35%;
	    float: left;
	    padding-left: 5%;
	}
	body.minhaConta.fbits-minhaConta div.content.minhaconta .mainBarInterna form[action="/Endereco/Cadastrar"] .forminline:nth-child(6) input#txtNumero {
	    width: 100%;
	}
	.erroCadastro {	  
	    text-align: left;
	    line-height: 20px;
	}
	.toplinks a.topLink.fbits-link-atendimento:before {
	    display: none;
	}
	body.fechamento.fbits-confirmacaoPedido section.fbits-responsive-carrinho {
	    width: 55%;
	    float: left;
	    margin: auto;
	    border: 1px solid #ccc;
	}
	body.fechamento.fbits-confirmacaoPedido section.fbits-responsive-carrinho .fbits-responsive-carrinho-header {
	    line-height: 30px;
	}
	body.fechamento.fbits-confirmacaoPedido section.fbits-responsive-carrinho .fbits-responsive-carrinho-total.destaqueGridTotalS {
	    border-bottom: 0;
	}
	body.fechamento.fbits-confirmacaoPedido .entrega {
	    width: 42%;
	    float: right;
	    margin: 0;
	    overflow: hidden;
	    clear: none;
	}


	/*BEGIN Contraproposta e Alerta valores*/
	.fbits-Contraproposta-modal-body, .fbits-alerta-valor-modal-body {   
    	min-width: 300px;
    }
    /*END Contraproposta e Alerta valores*/
    
    /* imagens das subcategorias */
    .subcategoria-imagens li {
    	width: 20%;
    	margin: 0 0 1.25rem;
    	font-size: 13px;
    	font-size: 0.8125rem;
    }
    .subcategoria-imagens li:nth-child(4n+0) {
    	border-right: solid 1px #bebebe;
    }
    .subcategoria-imagens li:nth-child(5n+0) {
    	border-right: none;
    }
    
    /* imagens das categorias */
    .categoria-n1 .subcategoria-imagens li {
        width: 16.6666667%;
    }
    .categoria-n1 .subcategoria-marcas li {
        width: 16.6666667%;
    }
    /**/
}

@media (min-width: 1350px) {
    
	.fbits-banner-centro .slidesjs-next {   
	    left: inherit;
	    right: 2%;
	}
	.fbits-banner-centro .slidesjs-previous {   
	    left: 2%;
	}
}
@media (min-width: 1400px) {
    
	.fbits-banner-centro .slidesjs-next {   
	    left: inherit;
	    right: 3%;
	}
	.fbits-banner-centro .slidesjs-previous {   
	    left: 3%;
	}
}
@media (min-width: 1450px) {
    
	.fbits-banner-centro .slidesjs-next {   
	    left: inherit;
	    right: 5%;
	}
	.fbits-banner-centro .slidesjs-previous {   
	    left: 5%;
	}
}
@media (min-width: 1500px) {
    
	.fbits-banner-centro .slidesjs-next {   
	    left: inherit;
	    right: 7%;
	}
	.fbits-banner-centro .slidesjs-previous {   
	    left: 7%;
	}
}
@media (min-width: 1550px) {
    
	.fbits-banner-centro .slidesjs-next {   
	    left: inherit;
	    right: 8%;
	}
	.fbits-banner-centro .slidesjs-previous {   
	    left: 8%;
	}
}
@media (min-width: 1600px) {
    
	.fbits-banner-centro .slidesjs-next {   
	    left: inherit;
	    right: 9%;
	}
	.fbits-banner-centro .slidesjs-previous {   
	    left: 9%;
	}
}
@media (min-width: 1650px) {
    
	.fbits-banner-centro .slidesjs-next {   
	    left: inherit;
	    right: 11%;
	}
	.fbits-banner-centro .slidesjs-previous {   
	    left: 11%;
	}
}
@media (min-width: 1700px) {
    
	.fbits-banner-centro .slidesjs-next {   
	    left: inherit;
	    right: 12%;
	}
	.fbits-banner-centro .slidesjs-previous {   
	    left: 12%;
	}
}
@media (min-width: 1750px) {
    
	.fbits-banner-centro .slidesjs-next {   
	    left: inherit;
	    right: 13%;
	}
	.fbits-banner-centro .slidesjs-previous {   
	    left: 13%;
	}
}
@media (min-width: 1800px) {
    
	.fbits-banner-centro .slidesjs-next {   
	    left: inherit;
	    right: 14%;
	}
	.fbits-banner-centro .slidesjs-previous {   
	    left: 14%;
	}
}
@media (min-width: 1850px) {
    
	.fbits-banner-centro .slidesjs-next {   
	    left: inherit;
	    right: 15%;
	}
	.fbits-banner-centro .slidesjs-previous {   
	    left: 15%;
	}
}
@media (min-width: 1900px) {
    
	.fbits-banner-centro .slidesjs-next {   
	    left: inherit;
	    right: 16%;
	}
	.fbits-banner-centro .slidesjs-previous {   
	    left: 16%;
	}
}
@media (min-width: 1950px) {
    
	.fbits-banner-centro .slidesjs-next {   
	    left: inherit;
	    right: 17%;
	}
	.fbits-banner-centro .slidesjs-previous {   
	    left: 17%;
	}
}

/* AJUSTES NO FIREFOX */
@-moz-document url-prefix() { 
    /*div .fbits-carrossel li, div.spot-vitrine, div .fbits-carrossel-historico li {*/
    /*    width: 15vw !important;*/
    /*}*/
}

li.linksfooter .selo-seal a {
    width: 140px;
    float: left;
}



/*
@media (min-width: 768px) {	
	.carousel .spot {
		margin: 0 2px 0 0;
		padding: 3px;
	}
	.produto .carousel .spot, .listacompra .carousel .spot {
		margin: 0 5px 0 0;
	}
	.spotImg {
		height: 190px;
	}
	.etiquetas-spot {
		left: 0;
		position: absolute;
		top: 0;
	}
	.spots-interna {
		width: auto;
	}
	.etiquetas-spot .ribbon.fbits-etiqueta-lancamento {
		display: block;
		float: left;
		clear: both;
		width: 84px;
		height: 18px;
		margin-bottom: 3px;
	}
	.etiquetas-spot .ribbon.fbits-etiqueta-promocao {
		display: block;
		float: none;
		clear: both;
		width: 84px;
		height: 18px;
		margin-bottom: 3px;
	}
	.spotTitle {
		color: #535353;
		font-size: 12px;
		font-weight: normal;
		height: 33px;
		line-height: 17px;
		margin: 5px 0;
		overflow: hidden;
	}
	.spotPreco {
		color: #555;
		font-size: 12px;
		line-height: 18px;
		overflow: hidden;
		padding-bottom: 1px;
	}
	.spotTamanhos {
		bottom: -11px;
		clear: both;
		color: #000;
		font-size: 11px;
		font-weight: bold;
		margin-bottom: 3px;
		margin-top: -6px;
		text-align: center;
		width: 100%;
		z-index: 9999999;
	}
	.spot .botoesSpot {
		float: left;
		height: 117px;
		padding-top: 15px;
		text-align: center;
		width: 175px;
	}
	.spot .fb-like {
		top: 160px;
	}
	.spot .botoesSpot {
		float: none;
		height: 117px;
		padding-top: 15px;
		text-align: center;
		width: 100%;
		display: none;
		bottom: -150px;
	}
	.spot:hover .botoesSpot {
		display: block;
		margin-top: 0;
		height: 164px;
		background: #fff;
		border: 1px solid #ccc;
		border-top: 0;
		width: 215px;
		margin-left: -6px;
	}
	.fbits-carrossel-setas .spot:hover .botoesSpot {
		display:none;
	}
	.spotContent {
		height: 380px;
	}
	.spot:hover {
		z-index: 99;
		border: 1px solid #ccc;
		border-bottom: 0;
	}
	.categoria .spot.first, .categoria .spot.last, .busca .spot.first, .busca .spot.last {
		margin: 10px!important;
	}
	.carousel .spot:hover .botoesSpot {
		width: 211px;
		margin-left: -4px;
	}
	
	
}

@media (min-width: 768px) {
	.categoria .spot.first, .categoria .spot.last, .busca .spot.first, .busca .spot.last {
		margin-left: 0!important;
	}
}

*/




.ac_results{padding: 0px;overflow: hidden;z-index: 9999;}
.ac_results ul{width: 100%;list-style-position: outside;list-style: none;padding: 0;margin: 0;}
.ac_results li{margin: 0px;padding: 2px 5px;cursor: pointer;display: block;font: menu;font-size: 12px;line-height: 16px;overflow: hidden;}
.ac_results li img {width:50px;height:50px;}
/* ac_results a: Respons�vel pela �rea sem conte�do, mas ao clicar tem que redirecionar para a p�gina do produto, n�o remover: */
.ac_results a{	float: left;width: 100%;background: none;text-decoration: none !important;}
.autocomplete-header-termos-sugeridos, .autocomplete-header-produtos{padding:7px 5px;margin: 0 0 1px;font-weight: bold;}
.autocomplete-produto img{float: left;margin: 3px;}
.autocomplete-produto strong{display: block;}
.autocomplete-item-preco{float: right;margin-right: 5px;}
.autocomplete-powered-by{float: right;display: block;width: 131px;height: 24px;background: url('https://static.fbits.net/i/logos/logo-f-search-min.png') no-repeat;text-indent: -300000px;cursor: pointer;margin: 3px 3px 0;}
.autocomplete-powered-by-hide {display:none;}
.porcentagem_desc{float: right;}
.ac_results { border: 1px solid #ddd; background: #fff; box-shadow: 0 0 3px 3px rgba(0, 0, 0, 0.1); padding-bottom:5px; border-radius: 0 0 5px 5px; margin: -8px 0 0 24px;}
.ac_results li {border-bottom:1px dotted #ccc;}
.ac_results a { color: #555; }
.ac_results .ac_over a { color: #FFF; }
.ac_odd { background: #FFF; color: #444; }
.ac_even { background: #F2F2F2; color: #444; }
.ac_over { background: #676767; color: #EEE; }

.autocomplete-header-termos-sugeridos, .autocomplete-header-produtos { color: #999; border: 0; }
.autocomplete-vertodos { font-family: Arial, Helvetica, sans-serif; color: #999; font-size: 11px; padding: 8px 0 0 14px; display: block; cursor: pointer; float: left; }
.autocomplete-fabricante-value {font-size: 10px;}

.porcentagemdesc { color: #fff; padding: 0 10px 0 4px; background: url(../../i/desconto.png) repeat scroll right top transparent; }
.btn-buscar { height: 14px;cursor: pointer;font-family: Arial, Helvetica, sans-serif;width: 86px;font-size: 1.2em;margin: 0 0 0 0.5em;float: right;background: url(http://www.elaser.com.br/layout/padrao/img/struct/base.png);background-position: -421px -110px;display: block;color: white !important;text-transform: uppercase;font-weight: bold;padding: 8px 0;text-align: center;}
#fancybox-loading
{
  position: fixed;
  top: 50%;
  left: 50%;
  width: 40px;
  height: 40px;
  margin-top: -20px;
  margin-left: -20px;
  cursor: pointer;
  overflow: hidden;
  z-index: 1104;
  display: none;
}
#fancybox-loading div
{
  position: absolute;
  top: 0;
  left: 0;
  width: 40px;
  height: 480px;
  background-image: url('../c/fancybox/fancybox.png');
}
#fancybox-overlay
{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 1100;
  display: none;
}
#fancybox-tmp
{
  padding: 0;
  margin: 0;
  border: 0;
  overflow: auto;
  display: none;
}
#fancybox-wrap
{
  position: absolute;
  top: 0;
  left: 0;
  padding: 20px;
  z-index: 1101;
  outline: none;
  display: none;
}
#fancybox-outer
{
  position: relative;
  width: 100%;
  height: 100%;
  background: #fff;
}
#fancybox-content
{
  width: 0;
  height: 0;
  padding: 0;
  outline: none;
  position: relative;
  overflow: hidden;
  z-index: 1102;
  border: 0 solid #fff;
}
#fancybox-hide-sel-frame
{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: transparent;
  z-index: 1101;
}
#fancybox-close
{
  position: absolute;
  top: -15px;
  right: -15px;
  width: 30px;
  height: 30px;
  background: transparent url('../c/fancybox/fancybox.png') -40px 0;
  cursor: pointer;
  z-index: 1103;
  display: none;
  text-indent: -999em;
  overflow: hidden;
}
#fancybox-error
{
  color: #444;
  font: normal 12px/20px Arial;
  padding: 14px;
  margin: 0;
}
#fancybox-img
{
  width: 100%;
  height: 100%;
  padding: 0;
  margin: 0;
  border: none;
  outline: none;
  line-height: 0;
  vertical-align: top;
}
#fancybox-frame
{
  width: 100%;
  height: 100%;
  border: none;
  display: block;
}
#fancybox-left, #fancybox-right
{
  position: absolute;
  bottom: 0;
  height: 100%;
  width: 35%;
  cursor: pointer;
  outline: none;
  background: transparent url('../c/fancybox/blank.gif');
  z-index: 1102;
  display: none;
}
#fancybox-left
{
  left: 0;
}
#fancybox-right
{
  right: 0;
}
#fancybox-left-ico, #fancybox-right-ico
{
  position: absolute;
  top: 50%;
  left: -9999px;
  width: 30px;
  height: 30px;
  margin-top: -15px;
  cursor: pointer;
  z-index: 1102;
  display: block;
}
#fancybox-left-ico
{
  background-image: url('../c/fancybox/fancybox.png');
  background-position: -40px -30px;
}
#fancybox-right-ico
{
  background-image: url('../c/fancybox/fancybox.png');
  background-position: -40px -60px;
}
#fancybox-left:hover span
{
  left: 20px;
}
#fancybox-right:hover span
{
  left: auto;
  right: 20px;
}
.fancybox-bg
{
  position: absolute;
  padding: 0;
  margin: 0;
  border: 0;
  width: 20px;
  height: 20px;
  z-index: 1001;
}
#fancybox-bg-n
{
  top: -20px;
  left: 0;
  width: 100%;
  background-image: url('../c/fancybox/fancybox-x.png');
}
#fancybox-bg-ne
{
  top: -20px;
  right: -20px;
  background-image: url('../c/fancybox/fancybox.png');
  background-position: -40px -162px;
}
#fancybox-bg-e
{
  top: 0;
  right: -20px;
  height: 100%;
  background-image: url('../c/fancybox/fancybox-y.png');
  background-position: -20px 0;
}
#fancybox-bg-se
{
  bottom: -20px;
  right: -20px;
  background-image: url('../c/fancybox/fancybox.png');
  background-position: -40px -182px;
}
#fancybox-bg-s
{
  bottom: -20px;
  left: 0;
  width: 100%;
  background-image: url('../c/fancybox/fancybox-x.png');
  background-position: 0 -20px;
}
#fancybox-bg-sw
{
  bottom: -20px;
  left: -20px;
  background-image: url('../c/fancybox/fancybox.png');
  background-position: -40px -142px;
}
#fancybox-bg-w
{
  top: 0;
  left: -20px;
  height: 100%;
  background-image: url('../c/fancybox/fancybox-y.png');
}
#fancybox-bg-nw
{
  top: -20px;
  left: -20px;
  background-image: url('../c/fancybox/fancybox.png');
  background-position: -40px -122px;
}
#fancybox-title
{
  font-family: Helvetica;
  font-size: 12px;
  z-index: 1102;
}
.fancybox-title-inside
{
  padding-bottom: 10px;
  text-align: center;
  color: #333;
  background: #fff;
  position: relative;
}
.fancybox-title-outside
{
  padding-top: 10px;
  color: #fff;
}
.fancybox-title-over
{
  position: absolute;
  bottom: 0;
  left: 0;
  color: #FFF;
  text-align: left;
}
#fancybox-title-over
{
  padding: 10px;
  background-image: url('../c/fancybox/fancy_title_over.png');
  display: block;
}
.fancybox-title-float
{
  position: absolute;
  left: 0;
  bottom: -20px;
  height: 32px;
}
#fancybox-title-float-wrap
{
  border: none;
  border-collapse: collapse;
  width: auto;
}
#fancybox-title-float-wrap td
{
  border: none;
  white-space: nowrap;
}
#fancybox-title-float-left
{
  padding: 0 0 0 15px;
  background: url('../c/fancybox/fancybox.png') -40px -90px no-repeat;
}
#fancybox-title-float-main
{
  color: #FFF;
  line-height: 29px;
  font-weight: bold;
  padding: 0 0 3px 0;
  background: url('../c/fancybox/fancybox-x.png') 0 -40px;
}
#fancybox-title-float-right
{
  padding: 0 0 0 15px;
  background: url('../c/fancybox/fancybox.png') -55px -90px no-repeat;
}

