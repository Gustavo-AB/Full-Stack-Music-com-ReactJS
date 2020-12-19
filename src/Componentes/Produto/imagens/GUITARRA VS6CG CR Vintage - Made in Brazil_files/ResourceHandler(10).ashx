; 
function validarCookieModalAntiFuga(tipoModal) {
    var exibirModal = false;
    var cookieModal = Fbits.Framework.Cookie.getCookie('modalAntiFuga-'+tipoModal);
    if (cookieModal == "") {
        exibirModal = true;
    }

    return exibirModal;
}

function definirCookieModalAntiFuga(tipoModal) {
    var expiresDate = new Date();
    var dominio = window.location.hostname;
    expiresDate.setDate(expiresDate.getDate() + 1);

    if (location.host.indexOf('localhost') >= 0) {
        document.cookie = 'modalAntiFuga-'+tipoModal+'=' + tipoModal + '; expires=' + expiresDate.toUTCString();
    } else {
        document.cookie = 'modalAntiFuga-' + tipoModal + '=' + tipoModal + '; expires=' + expiresDate.toUTCString() + '; domain=' + dominio;
    }
}

function removerSlick() {
    if ($('#modalAntiFuga .fbits-componente-listaSpot').length > 0) {
        $('#modalAntiFuga .fbits-componente-listaSpot').slick('unslick')
    }
    if ($('#modalAntiFuga .fbits-componente-banner').length > 0) {
        $('#modalAntiFuga .fbits-componente-banner').slick('unslick')
    }

    if ($('#modalAntiFuga .fbits-componente-listaCustomizada').length > 0) {
        $('#modalAntiFuga .fbits-componente-listaCustomizada').slick('unslick')
    }

    if ($('#modalAntiFuga .fbits-componente-ofertasPorDepartamento').length > 0) {
        $('#modalAntiFuga .fbits-componente-ofertasPorDepartamento').slick('unslick');
    }
    if ($('#modalAntiFuga .fbits-componente-conteudo').length > 0) {
        $('#modalAntiFuga .fbits-componente-conteudo').slick('unslick');
    }
    if ($('#modalAntiFuga .fbits-componente-produtosSugeridos').length > 0) {
        $('#modalAntiFuga .fbits-componente-produtosSugeridos').slick('unslick');
    }       
}

function adicionarSlick() {

    // instancia novamente o carrossel de lista de spots com as configurações setadas no componente
    if ($('#fancybox-content .fbits-componente-listaSpot').length > 0) {
        $('#fancybox-content .fbits-componente-listaSpot').each(function (key, value) {
            var id = $(this).attr('data-componente-listaSpot-id');
            if (Fbits.Componentes.ListasSpots != null && Fbits.Componentes.ListasSpots != undefined && Fbits.Componentes.ListasSpots.length > 0) {
                for (var i = 0; i < Fbits.Componentes.ListasSpots.length; i++) {
                    if (Fbits.Componentes.ListasSpots[i].IdComponente == id) {
                        $(this).slick(Fbits.Componentes.ListasSpots[i].Configuracoes);
                    }
                }
            }
        });
    }

    // instancia novamente o carrossel de lista de banners com as configurações setadas no componente
    if ($('#fancybox-content .fbits-componente-banner').length > 0) {
        $('#fancybox-content .fbits-componente-banner').each(function (key, value) {
            var id = $(this).attr('data-componente-banner-id');
            if (Fbits.Componentes.Banners != null && Fbits.Componentes.Banners != undefined && Fbits.Componentes.Banners.length > 0) {
                for (var i = 0; i < Fbits.Componentes.Banners.length; i++) {
                    if (Fbits.Componentes.Banners[i].IdComponente == id) {
                        $(this).slick(Fbits.Componentes.Banners[i].Configuracoes);
                    }
                }
            }
        });
    }
    
    // instancia novamente o carrossel lista customizada com as configuraçõe sentadas no componente    
    if ($('#fancybox-content .fbits-componente-listaCustomizada').length > 0) {
        $('#fancybox-content .fbits-componente-listaCustomizada').each(function (key, value) {
            var id = $(this).attr('data-componente-listaCustomizada-id');
            if (Fbits.Componentes.ListasCustomizadas != null && Fbits.Componentes.ListasCustomizadas != undefined && Fbits.Componentes.ListasCustomizadas.length > 0) {
                for (var i = 0; i < Fbits.Componentes.ListasCustomizadas.length; i++) {
                    if (Fbits.Componentes.ListasCustomizadas[i].IdComponente == id) {
                        $(this).slick(Fbits.Componentes.ListasCustomizadas[i].Configuracoes);
                    }
                }
            }
        });
    }

    // instancia novamente o carrossel ofertas por departamento com as configurações setadas no componente
    if ($('#fancybox-content .fbits-componente-ofertasPorDepartamento').length > 0) {
        $('#fancybox-content .fbits-componente-ofertasPorDepartamento').each(function (key, value) {
            var id = $(this).attr('data-componente-ofertasPorDepartamento-id');
            if (Fbits.Componentes.OfertasPorDepartamento != null && Fbits.Componentes.OfertasPorDepartamento != undefined && Fbits.Componentes.OfertasPorDepartamento.length > 0) {
                for (var i = 0; i < Fbits.Componentes.OfertasPorDepartamento.length; i++) {
                    if (Fbits.Componentes.OfertasPorDepartamento[i].IdComponente == id) {
                        $(this).slick(Fbits.Componentes.OfertasPorDepartamento[i].Configuracoes);
                    }
                }
            }
        });
    }

    // instancia novamente o carrossel de conteudo com as configurações setadas no componente
    if ($('#fancybox-content .fbits-componente-conteudo').length > 0) {
        $('#fancybox-content .fbits-componente-conteudo').each(function (key, value) {
            var id = $(this).attr('data-componente-conteudo-id');
            if (Fbits.Componentes.Conteudos != null && Fbits.Componentes.Conteudos != undefined && Fbits.Componentes.Conteudos.length > 0) {
                for (var i = 0; i < Fbits.Componentes.Conteudos.length; i++) {
                    if (Fbits.Componentes.Conteudos[i].IdComponente == id) {
                        $(this).slick(Fbits.Componentes.Conteudos[i].Configuracoes);
                    }
                }
            }
        });
    }

    // instancia novamente o carrossel de produtos sugeridos com as configurações setadas no componente
    if ($('#fancybox-content .fbits-componente-produtosSugeridos').length > 0) {
        $('#fancybox-content .fbits-componente-produtosSugeridos').each(function (key, value) {
            var id = $(this).attr('data-componente-produtosSugeridos-id');
            if (Fbits.Componentes.ProdutosSugeridos != null && Fbits.Componentes.ProdutosSugeridos != undefined && Fbits.Componentes.ProdutosSugeridos.length > 0) {
                for (var i = 0; i < Fbits.Componentes.ProdutosSugeridos.length; i++) {
                    if (Fbits.Componentes.ProdutosSugeridos[i].IdComponente == id) {
                        $(this).slick(Fbits.Componentes.ProdutosSugeridos[i].Configuracoes);
                    }
                }
            }
        });
    }
}

if (window.jQuery) {
    $(document).bind('exitintent', function () {
        if ($('#modalAntiFuga #modalInativa').length == 0) {
            removerSlick();
            $('#modalAntiFuga').find('script').remove();
            var data = $('#modalAntiFuga').html();
            var tipoModal = $('#modalAntiFuga').attr('data-tipo-modal');            
            var exibirModal = validarCookieModalAntiFuga(tipoModal);            
            if (exibirModal) {
                if ($().fancybox) {
                    definirCookieModalAntiFuga(tipoModal);
                    console.log("chamando modal anti-fuga");
                    $.fancybox(data, {
                        padding: 0,
                        autoScale: true,
                        onComplete: function () {
                            adicionarSlick();
                        }
                    });
                    $('[id^=produto-botao-comprar-]').unbind('click');
                    $('[id^=produto-botao-comprar-]').bind('click', function () {
                        comprarProduto($('[id^="produto-item-"]'), true, $(this), "botaoComprar");
                    });
                }
            }
        }
    });
}



