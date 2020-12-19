; 
$(function () {
    /*
      *Verifica a existencia do cookie, caso não exista
      *mostra faz uma requisição, e mostra a modal popup 
      */
    if (_NEWSLETTERMODALATIVO && document.cookie.indexOf('popup-cadastro-news') < 0) {
        $.ajax({
            type: 'GET',
            url: fbits.ecommerce.urlEcommerce + 'CadastroNews?format=json&jsoncallback=?',
            dataType: 'json',
            success: function (data) {
                $('#nome', data).val("Nome");
                $('#email', data).val("E-mail");
                if ($().fancybox) {
                    $.fancybox(data, { padding: 0 });
                }
                $('[id$=popUp-News-Fundo]').show();
            }
        });
        var expiresDate = new Date();
        _NEWSLETTERMODALEXPIRES = parseInt(_NEWSLETTERMODALEXPIRES > 0 ? _NEWSLETTERMODALEXPIRES : 1);
        expiresDate.setDate(expiresDate.getDate() + _NEWSLETTERMODALEXPIRES);

        var dominio = fbits.google.analytics.domain;

        if (dominio === undefined || dominio === "") {
            dominio = window.location.hostname;
        }

        if (location.host.indexOf('localhost') >= 0) {
            document.cookie = 'AcaoVizualizada=popup-cadastro-news; expires=' + expiresDate.toUTCString();
        } else {
            document.cookie = 'AcaoVizualizada=popup-cadastro-news; expires=' + expiresDate.toUTCString() + '; domain=' + dominio;
        }
    }
});

function cadastroNewsletter(element) {
    var elementoNome = $('#fbits-cadastro-newsletter [id=Nome]');
    var elementoEmail = $('#fbits-cadastro-newsletter [id=Email]');
    var elementoSexo = $('#fbits-cadastro-newsletter [id^=Sexo-]:checked');
    var elementoMensagem = $('#fbits-cadastro-newsletter [id=newsletter-mensagem]');

    //Se houver ocorrencias do id de modal-sexo é pq o cadastro de sexo está ativo e deve ser validado.
    //Se não estiver ativo, não precisamos validar.
    var sexoAtivo = $('#fbits-cadastro-newsletter [id^=Sexo-]').length > 0;
    //Realiza as validações.
    var valido = validarCadastroNewsletter(elementoMensagem, elementoNome, elementoEmail, elementoSexo, sexoAtivo);

    var objEscolhasAdicionais = [];
    $('#fbits-cadastro-newsletter input[id^="Campo-"]').each(function (index) {
        var camposGrupoInformacaoCadastralId = $("#fbits-cadastro-newsletter input[name^='Campo[" + index + "].CamposGrupoInformacaoCadastralId']").val();
        var valor = $("#fbits-cadastro-newsletter input[name^='Campo[" + index + "].Valor']").val();
        objEscolhasAdicionais.push({ CamposGrupoInformacaoCadastralId: camposGrupoInformacaoCadastralId, Valor: valor });
    });

    $('#fbits-cadastro-newsletter select[id^="ValoresDefinidosCampoGrupoInformacaoId-"]').each(function (index) {
        var camposGrupoInformacaoCadastralId = $(this).attr('id').replace("ValoresDefinidosCampoGrupoInformacaoId-", "");
        var valor = $('#fbits-cadastro-newsletter select[id^="ValoresDefinidosCampoGrupoInformacaoId-' + camposGrupoInformacaoCadastralId + '"]').val();
        objEscolhasAdicionais.push({ CamposGrupoInformacaoCadastralId: camposGrupoInformacaoCadastralId, Valor: valor });
    });

    $('#fbits-cadastro-newsletter [id^="componente-newsletter-radiogroup-"]').each(function (index) {
        var camposGrupoInformacaoCadastralId = $(this).attr('data-id');
        var selectedElem = $('#fbits-cadastro-newsletter input:radio[id^="ValoresDefinidosCampoGrupoInformacaoId-' + camposGrupoInformacaoCadastralId + '"]:checked');
        var valor = $(selectedElem).val();
        objEscolhasAdicionais.push({ CamposGrupoInformacaoCadastralId: camposGrupoInformacaoCadastralId, Valor: valor });
    });

    if (valido == true) {
        var nome = $(elementoNome).val();
        var email = $(elementoEmail).val();
        var sexo = elementoSexo != undefined ? $(elementoSexo).val() : null;

        var dados = {};
        dados.Nome = nome;
        dados.Email = email;
        dados.Sexo = sexo;
        dados.ValoresEscolhaUsuario = objEscolhasAdicionais;
        var dadosStringify = JSON.stringify(dados);

        $.ajax({
            type: "GET",
            url: fbits.ecommerce.urlEcommerce + "CadastroNewsSalvar?format=json&jsoncallback=?&origem=footer&dados=" + dadosStringify,
            dataType: 'jsonp',
            success: function (data) {
                if (data.mensagem != "") {
                    $(elementoMensagem).html(data.mensagem).css({ color: "red" });
                }
                if (data.valido) {
                    $(elementoMensagem).css({ color: "green" });
                    $(elementoNome).val("Nome");
                    $(elementoEmail).val("E-mail");
                } else {
                    $(elementoMensagem).css({ color: "RED" });
                }
            }
        });
    }
}

function cadastroNewsletterModal() {
    var elementoNome = $('#popUp-News-Fundo [id=modal-Nome]');
    var elementoEmail = $('#popUp-News-Fundo [id=modal-Email]');
    var elementoSexo = $('#popUp-News-Fundo [id^=modal-Sexo-]:checked');
    var elementoErro = $('#popUp-News-Fundo [id=newsletter-erro]');

    //Se houver ocorrencias do id de modal-sexo é pq o cadastro de sexo na modal está ativo e deve ser validado.
    //Se não estiver ativo, não precisamos validar.
    var sexoAtivo = $('#popUp-News-Fundo [id^=modal-Sexo-]').length > 0;
    //Realiza as validações.
    var valido = validarCadastroNewsletterModal(elementoErro, elementoNome, elementoEmail, elementoSexo, sexoAtivo);

    var objEscolhasAdicionais = [];
    $('#popUp-News-Fundo input[id^="Campo-"]').each(function (index) {
        var camposGrupoInformacaoCadastralId = $("#popUp-News-Fundo input[name^='Campo[" + index + "].CamposGrupoInformacaoCadastralId']").val();
        var valor = $("#popUp-News-Fundo input[name^='Campo[" + index + "].Valor']").val();
        objEscolhasAdicionais.push({ CamposGrupoInformacaoCadastralId: camposGrupoInformacaoCadastralId, Valor: valor });
    });

    $('#popUp-News-Fundo select[id^="ValoresDefinidosCampoGrupoInformacaoId-"]').each(function (index) {
        var camposGrupoInformacaoCadastralId = $(this).attr('id').replace("ValoresDefinidosCampoGrupoInformacaoId-", "");
        var valor = $('#popUp-News-Fundo select[id^="ValoresDefinidosCampoGrupoInformacaoId-' + camposGrupoInformacaoCadastralId + '"]').val();
        objEscolhasAdicionais.push({ CamposGrupoInformacaoCadastralId: camposGrupoInformacaoCadastralId, Valor: valor });
    });

    $('#popUp-News-Fundo [id^="modal-newsletter-radiogroup-"]').each(function (index) {
        var camposGrupoInformacaoCadastralId = $(this).attr('data-id');
        var selectedElem = $('#popUp-News-Fundo input:radio[id^="ValoresDefinidosCampoGrupoInformacaoId-' + camposGrupoInformacaoCadastralId + '"]:checked');
        var valor = $(selectedElem).val();
        objEscolhasAdicionais.push({ CamposGrupoInformacaoCadastralId: camposGrupoInformacaoCadastralId, Valor: valor });
    });

    if (valido == true) {
        var nome = $(elementoNome).val();
        var email = $(elementoEmail).val();
        var sexo = elementoSexo != undefined ? $(elementoSexo).val() : null;

        var dados = {};
        dados.Nome = nome;
        dados.Email = email;
        dados.Sexo = sexo;
        dados.ValoresEscolhaUsuario = objEscolhasAdicionais;
        var dadosStringify = JSON.stringify(dados);

        $.ajax({
            type: "GET",
            url: fbits.ecommerce.urlEcommerce + "CadastroNewsSalvar?format=json&jsoncallback=?&dados=" + dadosStringify,
            dataType: "jsonp",
            success: function (data) {
                if (data.valido) {
                    $(elementoErro).html(data.mensagem).css({ color: "green" });
                } else {
                    if (data.mensagem != '') {
                        $(elementoErro).html(data.mensagem).css({ color: "red" });
                    }
                }
            }
        });
    }
}

function validarCadastroNewsletter(elementoErro, elementoNome, elementoEmail, elementoSexo, sexoAtivo) {
    var valido = true;
    var nome = $(elementoNome).val();
    var email = $(elementoEmail).val();
    var sexo = elementoSexo != undefined ? $(elementoSexo).val() : null;

    //Valida o sexo de for necessário
    if (sexoAtivo) {
        sexo = $('[id^=Sexo-]:checked').val();
        if (sexo == undefined || sexo == "") {
            valido = false;
            $(elementoErro).html("Favor marcar seu sexo.");
            $(elementoSexo).focus();
        }
    }

    if (nome != undefined) {
        if (nome == "" || nome == "Nome") {
            valido = false;
            $(elementoErro).html("Favor digitar o Nome.");
            $(elementoNome).focus();
        }
        if (valido == true && nome.length < 3) {
            valido = false;
            $(elementoErro).html("Nome deve conter mais que 3 caracteres.");
            $(elementoNome).focus();
        }
        if (valido == true && nome.length > 50) {
            valido = false;
            $(elementoErro).html("Nome deve conter menos que 50 caracteres.");
            $(elementoNome).focus();
        }
    } else {
        valido = false;
        $(elementoErro).html("Favor digitar o Nome.");
        $(elementoNome).focus();
    }

    if (email != undefined) {
        if (valido == true && email == "") {
            valido = false;
            $(elementoErro).html("Favor digitar o E-mail.");
            $(elementoEmail).focus();
        }
        if (valido == true && email.length > 70) {
            valido = false;
            $(elementoErro).html("E-mail deve conter menos que 70 caracteres.");
            $(elementoEmail).focus();
        }
        if (valido == true && !verificaEmail(email)) {
            valido = false;
            $(elementoErro).html("E-mail inválido.");
            $(elementoEmail).focus();
        }
    } else {
        valido = false;
        $(elementoErro).html("Favor digitar o E-mail.");
        $(elementoEmail).focus();
    }
    //VALIDAÇÕES - FIM

    if (!valido) {
        $(elementoErro).css({ color: "red" });
    }
    return valido;
}


function validarCadastroNewsletterModal(elementoErro, elementoNome, elementoEmail, elementoSexo, sexoAtivo) {
    var valido = true;
    var nome = $(elementoNome).val();
    var email = $(elementoEmail).val();

    //Valida o sexo de for necessário
    if (sexoAtivo) {
        sexo = $('[id^=modal-Sexo-]:checked').val();
        if (sexo == undefined || sexo == "") {
            valido = false;
            $(elementoErro).html("Favor marcar seu sexo.");
            $(elementoSexo).focus();
        }

    }

    if (nome != undefined) {
        if (nome == "" || nome == "Nome") {
            valido = false;
            $(elementoErro).html("Favor digitar o Nome.");
            $(elementoNome).focus();
        }
        if (valido == true && nome.length < 3) {
            valido = false;
            $(elementoErro).html("Nome deve conter mais que 3 caracteres.");
            $(elementoNome).focus();
        }
        if (valido == true && nome.length > 50) {
            valido = false;
            $(elementoErro).html("Nome deve conter menos que 50 caracteres.");
            $(elementoNome).focus();
        }
    } else {
        valido = false;
        $(elementoErro).html("Favor digitar o Nome.");
        $(elementoNome).focus();
    }

    if (email != undefined) {
        if (valido == true && email == "") {
            valido = false;
            $(elementoErro).html("Favor digitar o E-mail.");
            $(elementoEmail).focus();
        }
        if (valido == true && email.length > 70) {
            valido = false;
            $(elementoErro).html("E-mail deve conter menos que 70 caracteres.");
            $(elementoEmail).focus();
        }
        if (valido == true && !verificaEmail(email)) {
            valido = false;
            $(elementoErro).html("E-mail inválido.");
            $(elementoEmail).focus();
        }
    } else {
        valido = false;
        $(elementoErro).html("Favor digitar o E-mail.");
        $(elementoEmail).focus();
    }
    //VALIDAÇÕES - FIM

    if (!valido) {
        $(elementoErro).css({ color: "red" });
    }
    return valido;
}

function verificaEmail(email) {
    return (/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i.test(email));
};
; 
function abrirModalListaTiposEventos(elem) {
    var abrirModal = ($(elem).attr("data-abrirmodal") == "True" || $(elem).attr("data-abrirmodal") == "true");
    if (abrirModal) {
        if ($().fancybox) {
            $.fancybox.showActivity()
        }
        $.get("/ListaEvento/SelecionaTiposEventos", function (data) {
            if ($().fancybox) {
                $.fancybox(data, {
                    showCloseButton: true,
                    autoDimensions: false,
                    onComplete: function () {
                        try {

                        } catch (e) {
                            console.log("houve um problema na funçao 'OnComplete' da função abrirModalListaEventos()")
                        }
                    },
                    onClosed: function () {

                    },
                    onCleanup: function () {

                    }                    
                });
            }
        })
    } else {
        window.location.href = "";
    }
}

function RemoverCookieEvento() {
    let hostname = window.location.hostname;

    if (window.location.hostname.startsWith("www.")) {
        hostname = hostname.replace("www.", "");
    }

    if (window.location.hostname.startsWith("www2.")) {
        hostname = hostname.replace("www2.", "");
    }

    document.cookie = "Fbits-Evento=;expires=0;path=/;domain=." + hostname;
    location.reload();
}

$("#btn-evento-sair").on('click', function (e) {
    e.preventDefault();
    RemoverCookieEvento();
});
