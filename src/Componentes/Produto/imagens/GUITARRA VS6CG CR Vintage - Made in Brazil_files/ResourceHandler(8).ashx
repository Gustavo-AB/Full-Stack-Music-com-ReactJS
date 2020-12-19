; 
var Fbits = Fbits || {};
Fbits.Componentes = Fbits.Componentes || {};
Fbits.Componentes.ResumoCarrinho = {
    /*
    * Método responsável
    */
    removerItem: function (prePedidoProdutoId) {
        if (prePedidoProdutoId != undefined && prePedidoProdutoId > 0) {
            $.ajax({
                type: 'GET',
                url: fbits.ecommerce.urlCarrinho + "Carrinho/RemoverItemResumo?format=json&jsoncallback=?",
                dataType: "json",
                data: { "prePedidoProdutoId": prePedidoProdutoId },
                success: function (data) {
                    Fbits.Componentes.ResumoCarrinho.montar(data);
                }
            });
        }
    },
    /*
    * Método responsável por remover um da quantidade do item
    */
    subtrairUmItem: function (prePedidoProdutoId) {
        if (prePedidoProdutoId != undefined && prePedidoProdutoId > 0) {
            $.ajax({
                type: 'GET',
                url: fbits.ecommerce.urlCarrinho + "Carrinho/SubtrairItemResumo?format=json&jsoncallback=?",
                dataType: "json",
                data: { "prePedidoProdutoId": prePedidoProdutoId },
                success: function (data) {
                    Fbits.Componentes.ResumoCarrinho.montar(data);
                }
            });
        }
    },
    /*
    * Método responsável por adicionar um a quantidade do item.
    */
    somarUmItem: function (prePedidoProdutoId) {
        if (prePedidoProdutoId != undefined && prePedidoProdutoId > 0) {
            $.ajax({
                type: 'GET',
                url: fbits.ecommerce.urlCarrinho + "Carrinho/SomarItemResumo?format=json&jsoncallback=?",
                dataType: "json",
                data: { "prePedidoProdutoId": prePedidoProdutoId },
                success: function (data) {
                    Fbits.Componentes.ResumoCarrinho.montar(data);
                }
            });
        }
    },
    montar: function (data) {
        if (data != undefined) {
            $('.carrinhoHead').html(data);
            $('#cart-header').html(data);
        }
    }
}

function carrinhoLoginSair() {
    $.ajax({
        type: "POST",
        url: fbits.ecommerce.urlCarrinho + "api/Login/Delete",
        xhrFields: { withCredentials: true },
        success: function (data) {
            //console.log(data);
            if (data.Success == true) {
                document.cookie = 'fbits-login=; expires=Thu, 01 Jan 1970 00:00:01 GMT; path=/;';
                carregarDadosLogin();
            }
        },
        crossDomain: true
    });
}

function carrinhoLoginSairNovoCheckout() {
	var returnUrl = window.location.href;
	var host = window.location.host;
	
	if (host.indexOf("checkout") >= 0)
		window.location = "https://" + host + "/Login/Sair?returnUrl=" + returnUrl;
	else if (host.indexOf("www") >= 0)
        window.location = "https://" + host.replace("www2", "checkout").replace("www", "checkout") + "/Login/Sair?returnUrl=" + returnUrl;
    else if (host.indexOf("loja.") >= 0 && !host.includes('loja.com'))
        window.location = "https://checkout." + host.replace('loja.', '') + "/Login/Sair?returnUrl=" + returnUrl;
    else
		window.location = "https://" + "checkout." + host + "/Login/Sair?returnUrl=" + returnUrl;
}

function carregarDadosLogin() {
    if (!novoCheckout) {
        $.getJSON(fbits.ecommerce.urlCarrinho + "Login/LoginHeader?format=json&jsoncallback=?",
            function (data) {
                if (data.data != '' && data.data != '\r\n' && data.data != undefined) {
                    $('.loginHead').html(data.data);
                    $('#login-header').html(data.data);
                }
                if (data.dataMaster != null && data.dataMaster != "") {
                    $('#headerLoginMaster').html(data.dataMaster);
                } else {
                    $('#headerLoginMaster').remove();
                }
            });
    } else {
        $.getJSON(fbits.ecommerce.urlEcommerce + "Login/LoginHeader?format=json&jsoncallback=?",
            function (data) {
                if (data.data != '' && data.data != '\r\n' && data.data != undefined) {
                    $('.loginHead').html(data.data);
                    $('#login-header').html(data.data);

                    var usuario_identificado = null;
                    var usuario_nao_identificado = null;
                    var usuarioReturn = null;
                    var userLogin = null;

                    $.ajax({
                        type: "GET",
                        url: fbits.ecommerce.urlCarrinho + "api/Login/Get",
                        xhrFields: { withCredentials: true },
                        success: function (data) {
                            userLogin = data;

                            if (userLogin != null) {
                                var nome = "";
                                var nomeSplit = userLogin.Nome.split(" ");
                                if (nomeSplit.length > 0) {
                                    nome = nomeSplit[0]
                                }

                                console.log("nome: " + nome);


                                $('.loginHead').each(function () {
                                    usuario_identificado = $(this).find($(".usuario_identificado"));
                                    usuario_nao_identificado = $(this).find($(".usuario_nao_identificado"));
                                    
                                    usuarioReturn = usuario_identificado.html();

                                    //console.log(usuarioReturn);
                                    if (usuarioReturn != undefined) {
                                        usuarioReturn = usuarioReturn.replace("{{usuario}}", nome);

                                        usuario_identificado.html(usuarioReturn);

                                        usuario_nao_identificado.hide();
                                        usuario_identificado.show();
                                    }
                                });
                                                                
                                if ((Fbits.Usuario != null && Fbits.Usuario != undefined) && Fbits.Usuario.Nome == null || Fbits.Usuario.Nome == "")
                                {
                                    Fbits.Usuario.Nome = userLogin.Nome;
                                    Fbits.Usuario.Email = userLogin.Email;
                                    Fbits.Usuario.TipoUsuario = userLogin.Tipo;
                                }
                            }
                        },
                        crossDomain: true
                    });
                }
            });       
    }
}

function carregarSaldoCreditoMarka() {
    if (!novoCheckout) {
        $.getJSON(fbits.ecommerce.urlCarrinho + "Saldo/RenderSaldo?format=json&jsoncallback=?",
            function (data) {
                if (data.data != '' && data.data != '\r\n' && data.data != undefined) {
                    $('#fbits-saldo-credito-cliente').html(data.data);
                }
            });
    }
}

function atualizaResumo() {

    var miniCartReturn = '';

    var cartReturn = null;
    $.ajax({
        type: "GET",
        url: fbits.ecommerce.urlCarrinho + "api/carrinho",
        xhrFields: { withCredentials: true },
        success: function (data) {
            cartReturn = data;

            if (cartReturn.Produtos.length > 0) {

                var listCartReturn = '';
                var cartReturnAttr = '';

                for (var icart = 0; icart < cartReturn.Produtos.length; icart++) {
                    for (var att = 0; att < cartReturn.Produtos[icart].Atributos.length; att++) {
                        if ((cartReturn.Produtos[icart].Atributos[att].Nome != 'undefined')) {
                            cartReturnAttr += '<small class="atributo ' + cartReturn.Produtos[icart].Atributos[att].Nome.toLowerCase() + '">' + cartReturn.Produtos[icart].Atributos[att].Nome + ':' + cartReturn.Produtos[icart].Atributos[att].Valor + '</small>';
                        }
                    }
                    
                    //if ((cartReturn.Produtos[icart].Atributos[0].Nome != 'undefined') && (cartReturn.Produtos[icart].Atributos[1].Nome != 'undefined')) {
                    //    cartReturnAttr = '<small class="cor">' + cartReturn.Produtos[icart].Atributos[0].Nome + ':' + cartReturn.Produtos[icart].Atributos[0].Valor + '</small><small class="tamanho">' + cartReturn.Produtos[icart].Atributos[1].Nome + ':' + cartReturn.Produtos[icart].Atributos[1].Valor + '</small>';
                    //}

                    listCartReturn = listCartReturn + '<li><section data-cart-item="action-list_product" class="list-product left"><figure><a href="' + fbits.ecommerce.urlEcommerce + 'produto/' + cartReturn.Produtos[icart].ProdutoId + '"><img src="' + cartReturn.Produtos[icart].UrlImagem + '" class="mCS_img_loaded"></a><figcaption><header><h1><a href="' + fbits.ecommerce.urlEcommerce + 'produto/' + cartReturn.Produtos[icart].ProdutoId + '">' + cartReturn.Produtos[icart].Nome + '</a></h1><small class="ref">Ref: ' + cartReturn.Produtos[icart].SKU + '</small>' + cartReturnAttr + '</header><aside><div class="qtd-prod">Qtd.: <span>' + cartReturn.Produtos[icart].Quantidade + '</span></div><p class="price price-partial subtotal-item">' + Number(cartReturn.Produtos[icart].PrecoPor).formatMoney() + '</p></aside></figcaption></figure></section></li>';

                    cartReturnAttr = '';
                }

                miniCartReturn = '<a href="' + fbits.ecommerce.urlCarrinho + '"><i class="icon icart"></i><span class="minicart-qtde-itens">' + cartReturn.Produtos.length + '</span> <span class="minicart-txt-itens"></span></a><section class="submenu-carrinho" style="display: none;"><div class="carrinho-cheio"><ul class="lista-itens-carrinho">' + listCartReturn + '</ul><div><a class="finalizar" href="' + fbits.ecommerce.urlCarrinho + '"><button class="buy button success">finalizar compra</button></a><h1 class="price end-values __valor-total-simulado-nao-atacado">' + Number(cartReturn.ValorTotal).formatMoney() + '</h1></div></div></section>';

            } else {
                miniCartReturn = '<a href="' + fbits.ecommerce.urlCarrinho + '"><i class="icon icart"></i><span class="minicart-qtde-itens"></span> <span class="minicart-txt-itens">Carrinho Vazio</span></a>';
            }

            $('.carrinhoHead').html(miniCartReturn);
            $('#cart-header').html(miniCartReturn);

            //$("#resumoCarrinho").html(miniCartReturn);
            //$(".carrinho.carrinhoHead").html(miniCartReturn);
        },
        crossDomain: true
    });
}

function carregarCarrinho() {
    if (!novoCheckout) {
        if (document.cookie.indexOf('prePedido=') >= 0) {
            $.getJSON(fbits.ecommerce.urlCarrinho + "Carrinho/ResumoCarrinho?format=json&jsoncallback=?",
                function (data) {
                    Fbits.Componentes.ResumoCarrinho.montar(data);
                });
        }
    } else {
        atualizaResumo();
    }
}

//INIT
$(document).ready(function () {
    carregarDadosLogin();
    carregarSaldoCreditoMarka();
    carregarCarrinho();
});
; 

/*!
*Jquery Share Plugin v1.0.0
*Copyright 2012, Fbits e-Partner Business
*
* Descrição:
*   Biblioteca utilizada para incluir plugins de compartilhamento
*   de modo assincrono, como facebook e twitter.
*
*/
$(window).ready(function () {
    loadFacebookBar();
    loadFacebookShare();
    loadFacebookLogin();
    loadAddThis();
    loadGooglePlus();
    loadTwitter();
});

/**
* Realiza o load do script do facebook bar
*/
function loadFacebookBar() {
    if ($('[data-facebook-bar="true"]').length > 0 || $('.fb-like-box').length > 0)
        getFacebookScript(document, 'script', 'facebook-jssdk'); //Busca o script do facebook

    if ($('[data-facebook-bar="true"]').length > 0)  //Identifica o local para inserir o facebook bar
    {
        $('[data-facebook-bar="true"]').each(function (index, value) {
            if ($(this).attr('data-facebook-page').length > 0) {
                facebookUsersBar(this, $(this).attr('data-facebook-page'));
            }
        });
    }
}

/**
* Carregamento e inicialização as configurações do login integrado, abertura da pop-up de login.
*/
function loadFacebookLogin() {

    if ($('[data-facebook-login="true"],[data-facebook-login-pedido="true"]').length > 0) {
        getFacebookScript(document, 'script', 'facebook-jssdk'); //Busca o script do facebook

        $('[data-facebook-login="true"]').click( // click no botão do facebook
          function () {
              FB.login(function (response) {

                  if (response.authResponse) {

                      jQuery.ajax({
                          url: fbits.ecommerce.urlCarrinho + "Login/FacebookLogin",
                          type: 'POST',
                          data: { token: response.authResponse.accessToken },
                          dataType: "text",
                          async: false
                      }).done(function (data) {

                          if (data != '0') // 0 indica erro, diferente de 0 indica URL.
                              window.location = data;
                          else
                              alert('Não foi possível se conectar ao facebook.');
                      });

                  } else {
                      alert('Não foi possível se conectar ao facebook.');
                  }
              }, { scope: 'email,user_birthday' }) // permissões adicionais (email, data aniversário)
          });
    }
}

/**
* Realiza o load do script do facebook bar
*/
function loadFacebookShare() {
    if ($('[data-facebook-share="true"]').length > 0) //Identifica o local para inserir o facebook share
    {
        getFacebookScript(document, 'script', 'facebook-jssdk');

        $('[data-facebook-share="true"]').each(function (index, value) {
            shareLinkFacebook(this, $(this).attr('data-facebook-url'));
        });
    }
}

/**
* Realiza o load do script do add this
*/
function loadAddThis() {
    if ($('[data-addThis-share="true"]').length > 0) //Identifica o local para inserir o addThis share
    {
        $('[data-addThis-share="true"]').each(function (index, value) {
            if ($(this).attr('data-addThis-icon-url').length > 0) {
                shareLinkAddThis(this, $(this).attr('data-addThis-icon-url'));
            }
        });
    }
}

/**
* Realiza o load do script do google plus
*/
function loadGooglePlus() {
    if ($('[data-plusone-share=true]').length > 0) //Identifica o local para inserir o Google Plus +1
    {
        getGooglePlusScript();
        $('[data-plusone-share="true"]').each(function () {
            shareGooglePlus(this, $(this).attr('data-gplus-url'));
        });
    }
}

/**
* Realiza o load do script do twitter
*/
function loadTwitter() {
    if ($('[data-twitter-share=true]').length > 0) //Identifica o local para inserir o Twitter
    {
        if ($('#twitter-wjs').length <= 0)
            getTwitterScript();
        $('[data-twitter-share="true"]').each(function () {
            shareTwitter(this, $(this).attr('data-twitter-url'));
        });
    }
}

/**
* Busca o script do facebook
*/
var fbJsLoaded = false;
function getFacebookScript(d, s, id) {
    if ($(id).length <= 0 && !fbJsLoaded) {
        window.fbAsyncInit = function () {
            if (typeof FB_APPID !== 'undefined') {
                FB.init({
                    appId: FB_APPID,                             // App ID from the app dashboard
                    channelUrl: fbits.ecommerce.urlCarrinho + 'Login', // Channel file for x-domain comms
                    status: true,                                 // Check Facebook Login status
                    xfbml: true,                                  // Look for social plugins on the page
                    version: 'v2.0'
                });
            } else {
                FB.init({
                    status: true,                                 // Check Facebook Login status
                    xfbml: true,                                  // Look for social plugins on the page
                    cookie: true,
                    version: 'v2.0'
                });
            }
        };

        // window.fbAsyncInit = function () {
        // FB.init({ status: true, cookie: true, xfbml: true, version:  'v2.0' });
        // };  

        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.async = true;
        js.src = document.location.protocol + "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v2.3";
        fjs.parentNode.insertBefore(js, fjs);
        fbJsLoaded = true;
    }
};

function getGooglePlusScript() {
    window.___gcfg = { lang: 'pt-BR' };
    (function () {
        var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
        po.src = document.location.protocol + '//apis.google.com/js/plusone.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
    })();
}

function getTwitterScript() {
    !function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https';
        if (!d.getElementById(id)) {
            js = d.createElement(s); js.async = true;
            js.id = id; js.src = p + '://platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'twitter-wjs');
}

/**
* Adiciona o facebook user bar plugin a um determinado elemento
*/
function facebookUsersBar(element, username) {

    //Curtir Facebook
    var data = '<div id="fb-root"></div>'
             + '<div class="fb-like-box" data-href="http://www.facebook.com/' + username + '" data-width="240" data-height="285"'
             + 'data-show-faces="true" data-stream="false" data-header="true">'
             + '</div>';
    $(element).html(data).fadeIn('slow'); //Insere o plugin nos elementos do seletor
}

/**
* Adiciona o addThis plugin a um determinado elemento
*/
function shareLinkAddThis(element, icon) {
    var data = '<a class="addthis_button" href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=xa-4f2c2b167a25e0fa">'
                 + '<img src="' + icon + '" width="100" height="18" alt="Compartilhe" style="border:0"/>'
                 + '</a>';

    $(element).html(data).fadeIn('slow'); //Insere o plugin nos elementos do seletor

    $.getScript('http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4f2c2b167a25e0fa');
};

/**
* Adiciona o share link do facebook a um determinado elemento
*/
function shareLinkFacebook(element, url) {
    if (url == null || url == '') //Verifica o parametro
        url = window.location.href;

    var data = '<div class="fb-like" data-href="' + url + '" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false"></div>';
    //  var data = '<fb:like layout="button_count" font="tahoma"></fb:like>';
    $(element).html(data).fadeIn('slow'); //Insere o plugin nos elementos do seletor
    //FB.XFBML.parse($('.shareFacebook')[0]);
};

function shareGooglePlus(element, url) {

    if (!(url == null || url == ''))
        url = ' data-href="' + url + '"';

    var data = '<div class="g-plusone" data-size="medium" data-width="120"' + url + '></div>';
    $(element).html(data).fadeIn('slow');
}

function shareTwitter(element, url) {

    if (!(url == null || url == ''))
        url = ' data-url="' + url + '"';

    var data = '<a href="https://twitter.com/share" class="twitter-share-button" data-lang="pt"' + url + '>Tweetar</a>';
    $(element).html(data).fadeIn('slow');
}
; 
/*
    http://www.JSON.org/json2.js
    2011-10-19

    Public Domain.

    NO WARRANTY EXPRESSED OR IMPLIED. USE AT YOUR OWN RISK.

    See http://www.JSON.org/js.html


    This code should be minified before deployment.
    See http://javascript.crockford.com/jsmin.html

    USE YOUR OWN COPY. IT IS EXTREMELY UNWISE TO LOAD CODE FROM SERVERS YOU DO
    NOT CONTROL.


    This file creates a global JSON object containing two methods: stringify
    and parse.

        JSON.stringify(value, replacer, space)
            value       any JavaScript value, usually an object or array.

            replacer    an optional parameter that determines how object
                        values are stringified for objects. It can be a
                        function or an array of strings.

            space       an optional parameter that specifies the indentation
                        of nested structures. If it is omitted, the text will
                        be packed without extra whitespace. If it is a number,
                        it will specify the number of spaces to indent at each
                        level. If it is a string (such as '\t' or '&nbsp;'),
                        it contains the characters used to indent at each level.

            This method produces a JSON text from a JavaScript value.

            When an object value is found, if the object contains a toJSON
            method, its toJSON method will be called and the result will be
            stringified. A toJSON method does not serialize: it returns the
            value represented by the name/value pair that should be serialized,
            or undefined if nothing should be serialized. The toJSON method
            will be passed the key associated with the value, and this will be
            bound to the value

            For example, this would serialize Dates as ISO strings.

                Date.prototype.toJSON = function (key) {
                    function f(n) {
                        // Format integers to have at least two digits.
                        return n < 10 ? '0' + n : n;
                    }

                    return this.getUTCFullYear()   + '-' +
                         f(this.getUTCMonth() + 1) + '-' +
                         f(this.getUTCDate())      + 'T' +
                         f(this.getUTCHours())     + ':' +
                         f(this.getUTCMinutes())   + ':' +
                         f(this.getUTCSeconds())   + 'Z';
                };

            You can provide an optional replacer method. It will be passed the
            key and value of each member, with this bound to the containing
            object. The value that is returned from your method will be
            serialized. If your method returns undefined, then the member will
            be excluded from the serialization.

            If the replacer parameter is an array of strings, then it will be
            used to select the members to be serialized. It filters the results
            such that only members with keys listed in the replacer array are
            stringified.

            Values that do not have JSON representations, such as undefined or
            functions, will not be serialized. Such values in objects will be
            dropped; in arrays they will be replaced with null. You can use
            a replacer function to replace those with JSON values.
            JSON.stringify(undefined) returns undefined.

            The optional space parameter produces a stringification of the
            value that is filled with line breaks and indentation to make it
            easier to read.

            If the space parameter is a non-empty string, then that string will
            be used for indentation. If the space parameter is a number, then
            the indentation will be that many spaces.

            Example:

            text = JSON.stringify(['e', {pluribus: 'unum'}]);
            // text is '["e",{"pluribus":"unum"}]'


            text = JSON.stringify(['e', {pluribus: 'unum'}], null, '\t');
            // text is '[\n\t"e",\n\t{\n\t\t"pluribus": "unum"\n\t}\n]'

            text = JSON.stringify([new Date()], function (key, value) {
                return this[key] instanceof Date ?
                    'Date(' + this[key] + ')' : value;
            });
            // text is '["Date(---current time---)"]'


        JSON.parse(text, reviver)
            This method parses a JSON text to produce an object or array.
            It can throw a SyntaxError exception.

            The optional reviver parameter is a function that can filter and
            transform the results. It receives each of the keys and values,
            and its return value is used instead of the original value.
            If it returns what it received, then the structure is not modified.
            If it returns undefined then the member is deleted.

            Example:

            // Parse the text. Values that look like ISO date strings will
            // be converted to Date objects.

            myData = JSON.parse(text, function (key, value) {
                var a;
                if (typeof value === 'string') {
                    a =
/^(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2}):(\d{2}(?:\.\d*)?)Z$/.exec(value);
                    if (a) {
                        return new Date(Date.UTC(+a[1], +a[2] - 1, +a[3], +a[4],
                            +a[5], +a[6]));
                    }
                }
                return value;
            });

            myData = JSON.parse('["Date(09/09/2001)"]', function (key, value) {
                var d;
                if (typeof value === 'string' &&
                        value.slice(0, 5) === 'Date(' &&
                        value.slice(-1) === ')') {
                    d = new Date(value.slice(5, -1));
                    if (d) {
                        return d;
                    }
                }
                return value;
            });


    This is a reference implementation. You are free to copy, modify, or
    redistribute.
*/

/*jslint evil: true, regexp: true */

/*members "", "\b", "\t", "\n", "\f", "\r", "\"", JSON, "\\", apply,
    call, charCodeAt, getUTCDate, getUTCFullYear, getUTCHours,
    getUTCMinutes, getUTCMonth, getUTCSeconds, hasOwnProperty, join,
    lastIndex, length, parse, prototype, push, replace, slice, stringify,
    test, toJSON, toString, valueOf
*/


// Create a JSON object only if one does not already exist. We create the
// methods in a closure to avoid creating global variables.

var JSON;
if (!JSON) {
    JSON = {};
}

(function () {
    'use strict';

    function f(n) {
        // Format integers to have at least two digits.
        return n < 10 ? '0' + n : n;
    }

    if (typeof Date.prototype.toJSON !== 'function') {

        Date.prototype.toJSON = function (key) {

            return isFinite(this.valueOf())
                ? this.getUTCFullYear()     + '-' +
                    f(this.getUTCMonth() + 1) + '-' +
                    f(this.getUTCDate())      + 'T' +
                    f(this.getUTCHours())     + ':' +
                    f(this.getUTCMinutes())   + ':' +
                    f(this.getUTCSeconds())   + 'Z'
                : null;
        };

        String.prototype.toJSON      =
            Number.prototype.toJSON  =
            Boolean.prototype.toJSON = function (key) {
                return this.valueOf();
            };
    }

    var cx = /[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,
        escapable = /[\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,
        gap,
        indent,
        meta = {    // table of character substitutions
            '\b': '\\b',
            '\t': '\\t',
            '\n': '\\n',
            '\f': '\\f',
            '\r': '\\r',
            '"' : '\\"',
            '\\': '\\\\'
        },
        rep;


    function quote(string) {

// If the string contains no control characters, no quote characters, and no
// backslash characters, then we can safely slap some quotes around it.
// Otherwise we must also replace the offending characters with safe escape
// sequences.

        escapable.lastIndex = 0;
        return escapable.test(string) ? '"' + string.replace(escapable, function (a) {
            var c = meta[a];
            return typeof c === 'string'
                ? c
                : '\\u' + ('0000' + a.charCodeAt(0).toString(16)).slice(-4);
        }) + '"' : '"' + string + '"';
    }


    function str(key, holder) {

// Produce a string from holder[key].

        var i,          // The loop counter.
            k,          // The member key.
            v,          // The member value.
            length,
            mind = gap,
            partial,
            value = holder[key];

// If the value has a toJSON method, call it to obtain a replacement value.

        if (value && typeof value === 'object' &&
                typeof value.toJSON === 'function') {
            value = value.toJSON(key);
        }

// If we were called with a replacer function, then call the replacer to
// obtain a replacement value.

        if (typeof rep === 'function') {
            value = rep.call(holder, key, value);
        }

// What happens next depends on the value's type.

        switch (typeof value) {
        case 'string':
            return quote(value);

        case 'number':

// JSON numbers must be finite. Encode non-finite numbers as null.

            return isFinite(value) ? String(value) : 'null';

        case 'boolean':
        case 'null':

// If the value is a boolean or null, convert it to a string. Note:
// typeof null does not produce 'null'. The case is included here in
// the remote chance that this gets fixed someday.

            return String(value);

// If the type is 'object', we might be dealing with an object or an array or
// null.

        case 'object':

// Due to a specification blunder in ECMAScript, typeof null is 'object',
// so watch out for that case.

            if (!value) {
                return 'null';
            }

// Make an array to hold the partial results of stringifying this object value.

            gap += indent;
            partial = [];

// Is the value an array?

            if (Object.prototype.toString.apply(value) === '[object Array]') {

// The value is an array. Stringify every element. Use null as a placeholder
// for non-JSON values.

                length = value.length;
                for (i = 0; i < length; i += 1) {
                    partial[i] = str(i, value) || 'null';
                }

// Join all of the elements together, separated with commas, and wrap them in
// brackets.

                v = partial.length === 0
                    ? '[]'
                    : gap
                    ? '[\n' + gap + partial.join(',\n' + gap) + '\n' + mind + ']'
                    : '[' + partial.join(',') + ']';
                gap = mind;
                return v;
            }

// If the replacer is an array, use it to select the members to be stringified.

            if (rep && typeof rep === 'object') {
                length = rep.length;
                for (i = 0; i < length; i += 1) {
                    if (typeof rep[i] === 'string') {
                        k = rep[i];
                        v = str(k, value);
                        if (v) {
                            partial.push(quote(k) + (gap ? ': ' : ':') + v);
                        }
                    }
                }
            } else {

// Otherwise, iterate through all of the keys in the object.

                for (k in value) {
                    if (Object.prototype.hasOwnProperty.call(value, k)) {
                        v = str(k, value);
                        if (v) {
                            partial.push(quote(k) + (gap ? ': ' : ':') + v);
                        }
                    }
                }
            }

// Join all of the member texts together, separated with commas,
// and wrap them in braces.

            v = partial.length === 0
                ? '{}'
                : gap
                ? '{\n' + gap + partial.join(',\n' + gap) + '\n' + mind + '}'
                : '{' + partial.join(',') + '}';
            gap = mind;
            return v;
        }
    }

// If the JSON object does not yet have a stringify method, give it one.

    if (typeof JSON.stringify !== 'function') {
        JSON.stringify = function (value, replacer, space) {

// The stringify method takes a value and an optional replacer, and an optional
// space parameter, and returns a JSON text. The replacer can be a function
// that can replace values, or an array of strings that will select the keys.
// A default replacer method can be provided. Use of the space parameter can
// produce text that is more easily readable.

            var i;
            gap = '';
            indent = '';

// If the space parameter is a number, make an indent string containing that
// many spaces.

            if (typeof space === 'number') {
                for (i = 0; i < space; i += 1) {
                    indent += ' ';
                }

// If the space parameter is a string, it will be used as the indent string.

            } else if (typeof space === 'string') {
                indent = space;
            }

// If there is a replacer, it must be a function or an array.
// Otherwise, throw an error.

            rep = replacer;
            if (replacer && typeof replacer !== 'function' &&
                    (typeof replacer !== 'object' ||
                    typeof replacer.length !== 'number')) {
                throw new Error('JSON.stringify');
            }

// Make a fake root object containing our value under the key of ''.
// Return the result of stringifying the value.

            return str('', {'': value});
        };
    }


// If the JSON object does not yet have a parse method, give it one.

    if (typeof JSON.parse !== 'function') {
        JSON.parse = function (text, reviver) {

// The parse method takes a text and an optional reviver function, and returns
// a JavaScript value if the text is a valid JSON text.

            var j;

            function walk(holder, key) {

// The walk method is used to recursively walk the resulting structure so
// that modifications can be made.

                var k, v, value = holder[key];
                if (value && typeof value === 'object') {
                    for (k in value) {
                        if (Object.prototype.hasOwnProperty.call(value, k)) {
                            v = walk(value, k);
                            if (v !== undefined) {
                                value[k] = v;
                            } else {
                                delete value[k];
                            }
                        }
                    }
                }
                return reviver.call(holder, key, value);
            }


// Parsing happens in four stages. In the first stage, we replace certain
// Unicode characters with escape sequences. JavaScript handles many characters
// incorrectly, either silently deleting them, or treating them as line endings.

            text = String(text);
            cx.lastIndex = 0;
            if (cx.test(text)) {
                text = text.replace(cx, function (a) {
                    return '\\u' +
                        ('0000' + a.charCodeAt(0).toString(16)).slice(-4);
                });
            }

// In the second stage, we run the text against regular expressions that look
// for non-JSON patterns. We are especially concerned with '()' and 'new'
// because they can cause invocation, and '=' because it can cause mutation.
// But just to be safe, we want to reject all unexpected forms.

// We split the second stage into 4 regexp operations in order to work around
// crippling inefficiencies in IE's and Safari's regexp engines. First we
// replace the JSON backslash pairs with '@' (a non-JSON character). Second, we
// replace all simple value tokens with ']' characters. Third, we delete all
// open brackets that follow a colon or comma or that begin the text. Finally,
// we look to see that the remaining characters are only whitespace or ']' or
// ',' or ':' or '{' or '}'. If that is so, then the text is safe for eval.

            if (/^[\],:{}\s]*$/
                    .test(text.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g, '@')
                        .replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g, ']')
                        .replace(/(?:^|:|,)(?:\s*\[)+/g, ''))) {

// In the third stage we use the eval function to compile the text into a
// JavaScript structure. The '{' operator is subject to a syntactic ambiguity
// in JavaScript: it can begin a block or an object literal. We wrap the text
// in parens to eliminate the ambiguity.

                j = eval('(' + text + ')');

// In the optional fourth stage, we recursively walk the new structure, passing
// each name/value pair to a reviver function for possible transformation.

                return typeof reviver === 'function'
                    ? walk({'': j}, '')
                    : j;
            }

// If the text is not JSON parseable, then a SyntaxError is thrown.

            throw new SyntaxError('JSON.parse');
        };
    }
}());
; 
/*
 * FancyBox - jQuery Plugin
 * Simple and fancy lightbox alternative
 *
 * Examples and documentation at: http://fancybox.net
 *
 * Copyright (c) 2008 - 2010 Janis Skarnelis
 * That said, it is hardly a one-person project. Many people have submitted bugs, code, and offered their advice freely. Their support is greatly appreciated.
 *
 * Version: 1.3.4 (11/11/2010)
 * Requires: jQuery v1.3+
 *
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 */

;(function($) {
	var tmp, loading, overlay, wrap, outer, content, close, title, nav_left, nav_right,

		selectedIndex = 0, selectedOpts = {}, selectedArray = [], currentIndex = 0, currentOpts = {}, currentArray = [],

		ajaxLoader = null, imgPreloader = new Image(), imgRegExp = /\.(jpg|gif|png|bmp|jpeg)(.*)?$/i, swfRegExp = /[^\.]\.(swf)\s*$/i,

		loadingTimer, loadingFrame = 1,

		titleHeight = 0, titleStr = '', start_pos, final_pos, busy = false, fx = $.extend($('<div/>')[0], { prop: 0 }),

		isIE6 = $.browser.msie && $.browser.version < 7 && !window.XMLHttpRequest,

		/*
		 * Private methods 
		 */

		_abort = function() {
			loading.hide();

			imgPreloader.onerror = imgPreloader.onload = null;

			if (ajaxLoader) {
				ajaxLoader.abort();
			}

			tmp.empty();
		},

		_error = function() {
			if (false === selectedOpts.onError(selectedArray, selectedIndex, selectedOpts)) {
				loading.hide();
				busy = false;
				return;
			}

			selectedOpts.titleShow = false;

			selectedOpts.width = 'auto';
			selectedOpts.height = 'auto';

			tmp.html( '<p id="fancybox-error">The requested content cannot be loaded.<br />Please try again later.</p>' );

			_process_inline();
		},

		_start = function() {
			var obj = selectedArray[ selectedIndex ],
				href, 
				type, 
				title,
				str,
				emb,
				ret;

			_abort();

			selectedOpts = $.extend({}, $.fn.fancybox.defaults, (typeof $(obj).data('fancybox') == 'undefined' ? selectedOpts : $(obj).data('fancybox')));

			ret = selectedOpts.onStart(selectedArray, selectedIndex, selectedOpts);

			if (ret === false) {
				busy = false;
				return;
			} else if (typeof ret == 'object') {
				selectedOpts = $.extend(selectedOpts, ret);
			}

			title = selectedOpts.title || (obj.nodeName ? $(obj).attr('title') : obj.title) || '';

			if (obj.nodeName && !selectedOpts.orig) {
				selectedOpts.orig = $(obj).children("img:first").length ? $(obj).children("img:first") : $(obj);
			}

			if (title === '' && selectedOpts.orig && selectedOpts.titleFromAlt) {
				title = selectedOpts.orig.attr('alt');
			}

			href = selectedOpts.href || (obj.nodeName ? $(obj).attr('href') : obj.href) || null;

			if ((/^(?:javascript)/i).test(href) || href == '#') {
				href = null;
			}

			if (selectedOpts.type) {
				type = selectedOpts.type;

				if (!href) {
					href = selectedOpts.content;
				}

			} else if (selectedOpts.content) {
				type = 'html';

			} else if (href) {
				if (href.match(imgRegExp)) {
					type = 'image';

				} else if (href.match(swfRegExp)) {
					type = 'swf';

				} else if ($(obj).hasClass("iframe")) {
					type = 'iframe';

				} else if (href.indexOf("#") === 0) {
					type = 'inline';

				} else {
					type = 'ajax';
				}
			}

			if (!type) {
				_error();
				return;
			}

			if (type == 'inline') {
				obj	= href.substr(href.indexOf("#"));
				type = $(obj).length > 0 ? 'inline' : 'ajax';
			}

			selectedOpts.type = type;
			selectedOpts.href = href;
			selectedOpts.title = title;

			if (selectedOpts.autoDimensions) {
				if (selectedOpts.type == 'html' || selectedOpts.type == 'inline' || selectedOpts.type == 'ajax') {
					selectedOpts.width = 'auto';
					selectedOpts.height = 'auto';
				} else {
					selectedOpts.autoDimensions = false;	
				}
			}

			if (selectedOpts.modal) {
				selectedOpts.overlayShow = true;
				selectedOpts.hideOnOverlayClick = false;
				selectedOpts.hideOnContentClick = false;
				selectedOpts.enableEscapeButton = false;
				selectedOpts.showCloseButton = false;
			}

			selectedOpts.padding = parseInt(selectedOpts.padding, 10);
			selectedOpts.margin = parseInt(selectedOpts.margin, 10);

			tmp.css('padding', (selectedOpts.padding + selectedOpts.margin));

			$('.fancybox-inline-tmp').unbind('fancybox-cancel').bind('fancybox-change', function() {
				$(this).replaceWith(content.children());				
			});

			switch (type) {
				case 'html' :
					tmp.html( selectedOpts.content );
					_process_inline();
				break;

				case 'inline' :
					if ( $(obj).parent().is('#fancybox-content') === true) {
						busy = false;
						return;
					}

					$('<div class="fancybox-inline-tmp" />')
						.hide()
						.insertBefore( $(obj) )
						.bind('fancybox-cleanup', function() {
							$(this).replaceWith(content.children());
						}).bind('fancybox-cancel', function() {
							$(this).replaceWith(tmp.children());
						});

					$(obj).appendTo(tmp);

					_process_inline();
				break;

				case 'image':
					busy = false;

					$.fancybox.showActivity();

					imgPreloader = new Image();

					imgPreloader.onerror = function() {
						_error();
					};

					imgPreloader.onload = function() {
						busy = true;

						imgPreloader.onerror = imgPreloader.onload = null;

						_process_image();
					};

					imgPreloader.src = href;
				break;

				case 'swf':
					selectedOpts.scrolling = 'no';

					str = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="' + selectedOpts.width + '" height="' + selectedOpts.height + '"><param name="movie" value="' + href + '"></param>';
					emb = '';

					$.each(selectedOpts.swf, function(name, val) {
						str += '<param name="' + name + '" value="' + val + '"></param>';
						emb += ' ' + name + '="' + val + '"';
					});

					str += '<embed src="' + href + '" type="application/x-shockwave-flash" width="' + selectedOpts.width + '" height="' + selectedOpts.height + '"' + emb + '></embed></object>';

					tmp.html(str);

					_process_inline();
				break;

				case 'ajax':
					busy = false;

					$.fancybox.showActivity();

					selectedOpts.ajax.win = selectedOpts.ajax.success;

					ajaxLoader = $.ajax($.extend({}, selectedOpts.ajax, {
						url	: href,
						data : selectedOpts.ajax.data || {},
						error : function(XMLHttpRequest, textStatus, errorThrown) {
							if ( XMLHttpRequest.status > 0 ) {
								_error();
							}
						},
						success : function(data, textStatus, XMLHttpRequest) {
							var o = typeof XMLHttpRequest == 'object' ? XMLHttpRequest : ajaxLoader;
							if (o.status == 200) {
								if ( typeof selectedOpts.ajax.win == 'function' ) {
									ret = selectedOpts.ajax.win(href, data, textStatus, XMLHttpRequest);

									if (ret === false) {
										loading.hide();
										return;
									} else if (typeof ret == 'string' || typeof ret == 'object') {
										data = ret;
									}
								}

								tmp.html( data );
								_process_inline();
							}
						}
					}));

				break;

				case 'iframe':
					_show();
				break;
			}
		},

		_process_inline = function() {
			var
				w = selectedOpts.width,
				h = selectedOpts.height;

			if (w.toString().indexOf('%') > -1) {
				w = parseInt( ($(window).width() - (selectedOpts.margin * 2)) * parseFloat(w) / 100, 10) + 'px';

			} else {
				w = w == 'auto' ? 'auto' : w + 'px';	
			}

			if (h.toString().indexOf('%') > -1) {
				h = parseInt( ($(window).height() - (selectedOpts.margin * 2)) * parseFloat(h) / 100, 10) + 'px';

			} else {
				h = h == 'auto' ? 'auto' : h + 'px';	
			}

			tmp.wrapInner('<div style="width:' + w + ';height:' + h + ';overflow: ' + (selectedOpts.scrolling == 'auto' ? 'auto' : (selectedOpts.scrolling == 'yes' ? 'scroll' : 'hidden')) + ';position:relative;"></div>');

			selectedOpts.width = tmp.width();
			selectedOpts.height = tmp.height();

			_show();
		},

		_process_image = function() {
			selectedOpts.width = imgPreloader.width;
			selectedOpts.height = imgPreloader.height;

			$("<img />").attr({
				'id' : 'fancybox-img',
				'src' : imgPreloader.src,
				'alt' : selectedOpts.title
			}).appendTo( tmp );

			_show();
		},

		_show = function() {
			var pos, equal;

			loading.hide();

			if (wrap.is(":visible") && false === currentOpts.onCleanup(currentArray, currentIndex, currentOpts)) {
				$.event.trigger('fancybox-cancel');

				busy = false;
				return;
			}

			busy = true;

			$(content.add( overlay )).unbind();

			$(window).unbind("resize.fb scroll.fb");
			$(document).unbind('keydown.fb');

			if (wrap.is(":visible") && currentOpts.titlePosition !== 'outside') {
				wrap.css('height', wrap.height());
			}

			currentArray = selectedArray;
			currentIndex = selectedIndex;
			currentOpts = selectedOpts;

			if (currentOpts.overlayShow) {
				overlay.css({
					'background-color' : currentOpts.overlayColor,
					'opacity' : currentOpts.overlayOpacity,
					'cursor' : currentOpts.hideOnOverlayClick ? 'pointer' : 'auto',
					'height' : $(document).height()
				});

				if (!overlay.is(':visible')) {
					if (isIE6) {
						$('select:not(#fancybox-tmp select)').filter(function() {
							return this.style.visibility !== 'hidden';
						}).css({'visibility' : 'hidden'}).one('fancybox-cleanup', function() {
							this.style.visibility = 'inherit';
						});
					}

					overlay.show();
				}
			} else {
				overlay.hide();
			}

			final_pos = _get_zoom_to();

			_process_title();

			if (wrap.is(":visible")) {
				$( close.add( nav_left ).add( nav_right ) ).hide();

				pos = wrap.position(),

				start_pos = {
					top	 : pos.top,
					left : pos.left,
					width : wrap.width(),
					height : wrap.height()
				};

				equal = (start_pos.width == final_pos.width && start_pos.height == final_pos.height);

				content.fadeTo(currentOpts.changeFade, 0.3, function() {
					var finish_resizing = function() {
						content.html( tmp.contents() ).fadeTo(currentOpts.changeFade, 1, _finish);
					};

					$.event.trigger('fancybox-change');

					content
						.empty()
						.removeAttr('filter')
						.css({
							'border-width' : currentOpts.padding,
							'width'	: final_pos.width - currentOpts.padding * 2,
							'height' : selectedOpts.autoDimensions ? 'auto' : final_pos.height - titleHeight - currentOpts.padding * 2
						});

					if (equal) {
						finish_resizing();

					} else {
						fx.prop = 0;

						$(fx).animate({prop: 1}, {
							 duration : currentOpts.changeSpeed,
							 easing : currentOpts.easingChange,
							 step : _draw,
							 complete : finish_resizing
						});
					}
				});

				return;
			}

			wrap.removeAttr("style");

			content.css('border-width', currentOpts.padding);

			if (currentOpts.transitionIn == 'elastic') {
				start_pos = _get_zoom_from();

				content.html( tmp.contents() );

				wrap.show();

				if (currentOpts.opacity) {
					final_pos.opacity = 0;
				}

				fx.prop = 0;

				$(fx).animate({prop: 1}, {
					 duration : currentOpts.speedIn,
					 easing : currentOpts.easingIn,
					 step : _draw,
					 complete : _finish
				});

				return;
			}

			if (currentOpts.titlePosition == 'inside' && titleHeight > 0) {	
				title.show();	
			}

			content
				.css({
					'width' : final_pos.width - currentOpts.padding * 2,
					'height' : selectedOpts.autoDimensions ? 'auto' : final_pos.height - titleHeight - currentOpts.padding * 2
				})
				.html( tmp.contents() );

			wrap
				.css(final_pos)
				.fadeIn( currentOpts.transitionIn == 'none' ? 0 : currentOpts.speedIn, _finish );
		},

		_format_title = function(title) {
			if (title && title.length) {
				if (currentOpts.titlePosition == 'float') {
					return '<table id="fancybox-title-float-wrap" cellpadding="0" cellspacing="0"><tr><td id="fancybox-title-float-left"></td><td id="fancybox-title-float-main">' + title + '</td><td id="fancybox-title-float-right"></td></tr></table>';
				}

				return '<div id="fancybox-title-' + currentOpts.titlePosition + '">' + title + '</div>';
			}

			return false;
		},

		_process_title = function() {
			titleStr = currentOpts.title || '';
			titleHeight = 0;

			title
				.empty()
				.removeAttr('style')
				.removeClass();

			if (currentOpts.titleShow === false) {
				title.hide();
				return;
			}

			titleStr = $.isFunction(currentOpts.titleFormat) ? currentOpts.titleFormat(titleStr, currentArray, currentIndex, currentOpts) : _format_title(titleStr);

			if (!titleStr || titleStr === '') {
				title.hide();
				return;
			}

			title
				.addClass('fancybox-title-' + currentOpts.titlePosition)
				.html( titleStr )
				.appendTo( 'body' )
				.show();

			switch (currentOpts.titlePosition) {
				case 'inside':
					title
						.css({
							'width' : final_pos.width - (currentOpts.padding * 2),
							'marginLeft' : currentOpts.padding,
							'marginRight' : currentOpts.padding
						});

					titleHeight = title.outerHeight(true);

					title.appendTo( outer );

					final_pos.height += titleHeight;
				break;

				case 'over':
					title
						.css({
							'marginLeft' : currentOpts.padding,
							'width'	: final_pos.width - (currentOpts.padding * 2),
							'bottom' : currentOpts.padding
						})
						.appendTo( outer );
				break;

				case 'float':
					title
						.css('left', parseInt((title.width() - final_pos.width - 40)/ 2, 10) * -1)
						.appendTo( wrap );
				break;

				default:
					title
						.css({
							'width' : final_pos.width - (currentOpts.padding * 2),
							'paddingLeft' : currentOpts.padding,
							'paddingRight' : currentOpts.padding
						})
						.appendTo( wrap );
				break;
			}

			title.hide();
		},

		_set_navigation = function() {
			if (currentOpts.enableEscapeButton || currentOpts.enableKeyboardNav) {
				$(document).bind('keydown.fb', function(e) {
					if (e.keyCode == 27 && currentOpts.enableEscapeButton) {
						e.preventDefault();
						$.fancybox.close();

					} else if ((e.keyCode == 37 || e.keyCode == 39) && currentOpts.enableKeyboardNav && e.target.tagName !== 'INPUT' && e.target.tagName !== 'TEXTAREA' && e.target.tagName !== 'SELECT') {
						e.preventDefault();
						$.fancybox[ e.keyCode == 37 ? 'prev' : 'next']();
					}
				});
			}

			if (!currentOpts.showNavArrows) { 
				nav_left.hide();
				nav_right.hide();
				return;
			}

			if ((currentOpts.cyclic && currentArray.length > 1) || currentIndex !== 0) {
				nav_left.show();
			}

			if ((currentOpts.cyclic && currentArray.length > 1) || currentIndex != (currentArray.length -1)) {
				nav_right.show();
			}
		},

		_finish = function () {
			if (!$.support.opacity) {
				content.get(0).style.removeAttribute('filter');
				wrap.get(0).style.removeAttribute('filter');
			}

			if (selectedOpts.autoDimensions) {
				content.css('height', 'auto');
			}

			wrap.css('height', 'auto');

			if (titleStr && titleStr.length) {
				title.show();
			}

			if (currentOpts.showCloseButton) {
				close.show();
			}

			_set_navigation();
	
			if (currentOpts.hideOnContentClick)	{
				content.bind('click', $.fancybox.close);
			}

			if (currentOpts.hideOnOverlayClick)	{
				overlay.bind('click', $.fancybox.close);
			}

			$(window).bind("resize.fb", $.fancybox.resize);

			if (currentOpts.centerOnScroll) {
				$(window).bind("scroll.fb", $.fancybox.center);
			}

			if (currentOpts.type == 'iframe') {
				$('<iframe id="fancybox-frame" name="fancybox-frame' + new Date().getTime() + '" frameborder="0" hspace="0" ' + ($.browser.msie ? 'allowtransparency="true""' : '') + ' scrolling="' + selectedOpts.scrolling + '" src="' + currentOpts.href + '"></iframe>').appendTo(content);
			}

			wrap.show();

			busy = false;

			$.fancybox.center();

			currentOpts.onComplete(currentArray, currentIndex, currentOpts);

			_preload_images();
		},

		_preload_images = function() {
			var href, 
				objNext;

			if ((currentArray.length -1) > currentIndex) {
				href = currentArray[ currentIndex + 1 ].href;

				if (typeof href !== 'undefined' && href.match(imgRegExp)) {
					objNext = new Image();
					objNext.src = href;
				}
			}

			if (currentIndex > 0) {
				href = currentArray[ currentIndex - 1 ].href;

				if (typeof href !== 'undefined' && href.match(imgRegExp)) {
					objNext = new Image();
					objNext.src = href;
				}
			}
		},

		_draw = function(pos) {
			var dim = {
				width : parseInt(start_pos.width + (final_pos.width - start_pos.width) * pos, 10),
				height : parseInt(start_pos.height + (final_pos.height - start_pos.height) * pos, 10),

				top : parseInt(start_pos.top + (final_pos.top - start_pos.top) * pos, 10),
				left : parseInt(start_pos.left + (final_pos.left - start_pos.left) * pos, 10)
			};

			if (typeof final_pos.opacity !== 'undefined') {
				dim.opacity = pos < 0.5 ? 0.5 : pos;
			}

			wrap.css(dim);

			content.css({
				'width' : dim.width - currentOpts.padding * 2,
				'height' : dim.height - (titleHeight * pos) - currentOpts.padding * 2
			});
		},

		_get_viewport = function() {
			return [
				$(window).width() - (currentOpts.margin * 2),
				$(window).height() - (currentOpts.margin * 2),
				$(document).scrollLeft() + currentOpts.margin,
				$(document).scrollTop() + currentOpts.margin
			];
		},

		_get_zoom_to = function () {
			var view = _get_viewport(),
				to = {},
				resize = currentOpts.autoScale,
				double_padding = currentOpts.padding * 2,
				ratio;

			if (currentOpts.width.toString().indexOf('%') > -1) {
				to.width = parseInt((view[0] * parseFloat(currentOpts.width)) / 100, 10);
			} else {
				to.width = currentOpts.width + double_padding;
			}

			if (currentOpts.height.toString().indexOf('%') > -1) {
				to.height = parseInt((view[1] * parseFloat(currentOpts.height)) / 100, 10);
			} else {
				to.height = currentOpts.height + double_padding;
			}

			if (resize && (to.width > view[0] || to.height > view[1])) {
				if (selectedOpts.type == 'image' || selectedOpts.type == 'swf') {
					ratio = (currentOpts.width ) / (currentOpts.height );

					if ((to.width ) > view[0]) {
						to.width = view[0];
						to.height = parseInt(((to.width - double_padding) / ratio) + double_padding, 10);
					}

					if ((to.height) > view[1]) {
						to.height = view[1];
						to.width = parseInt(((to.height - double_padding) * ratio) + double_padding, 10);
					}

				} else {
					to.width = Math.min(to.width, view[0]);
					to.height = Math.min(to.height, view[1]);
				}
			}

			to.top = parseInt(Math.max(view[3] - 20, view[3] + ((view[1] - to.height - 40) * 0.5)), 10);
			to.left = parseInt(Math.max(view[2] - 20, view[2] + ((view[0] - to.width - 40) * 0.5)), 10);

			return to;
		},

		_get_obj_pos = function(obj) {
			var pos = obj.offset();

			pos.top += parseInt( obj.css('paddingTop'), 10 ) || 0;
			pos.left += parseInt( obj.css('paddingLeft'), 10 ) || 0;

			pos.top += parseInt( obj.css('border-top-width'), 10 ) || 0;
			pos.left += parseInt( obj.css('border-left-width'), 10 ) || 0;

			pos.width = obj.width();
			pos.height = obj.height();

			return pos;
		},

		_get_zoom_from = function() {
			var orig = selectedOpts.orig ? $(selectedOpts.orig) : false,
				from = {},
				pos,
				view;

			if (orig && orig.length) {
				pos = _get_obj_pos(orig);

				from = {
					width : pos.width + (currentOpts.padding * 2),
					height : pos.height + (currentOpts.padding * 2),
					top	: pos.top - currentOpts.padding - 20,
					left : pos.left - currentOpts.padding - 20
				};

			} else {
				view = _get_viewport();

				from = {
					width : currentOpts.padding * 2,
					height : currentOpts.padding * 2,
					top	: parseInt(view[3] + view[1] * 0.5, 10),
					left : parseInt(view[2] + view[0] * 0.5, 10)
				};
			}

			return from;
		},

		_animate_loading = function() {
			if (!loading.is(':visible')){
				clearInterval(loadingTimer);
				return;
			}

			$('div', loading).css('top', (loadingFrame * -40) + 'px');

			loadingFrame = (loadingFrame + 1) % 12;
		};

	/*
	 * Public methods 
	 */

	$.fn.fancybox = function(options) {
		if (!$(this).length) {
			return this;
		}

		$(this)
			.data('fancybox', $.extend({}, options, ($.metadata ? $(this).metadata() : {})))
			.unbind('click.fb')
			.bind('click.fb', function(e) {
				e.preventDefault();

				if (busy) {
					return;
				}

				busy = true;

				$(this).blur();

				selectedArray = [];
				selectedIndex = 0;

				var rel = $(this).attr('rel') || '';

				if (!rel || rel == '' || rel === 'nofollow') {
					selectedArray.push(this);

				} else {
					selectedArray = $("a[rel=" + rel + "], area[rel=" + rel + "]");
					selectedIndex = selectedArray.index( this );
				}

				_start();

				return;
			});

		return this;
	};

	$.fancybox = function(obj) {
		var opts;

		if (busy) {
			return;
		}

		busy = true;
		opts = typeof arguments[1] !== 'undefined' ? arguments[1] : {};

		selectedArray = [];
		selectedIndex = parseInt(opts.index, 10) || 0;

		if ($.isArray(obj)) {
			for (var i = 0, j = obj.length; i < j; i++) {
				if (typeof obj[i] == 'object') {
					$(obj[i]).data('fancybox', $.extend({}, opts, obj[i]));
				} else {
					obj[i] = $({}).data('fancybox', $.extend({content : obj[i]}, opts));
				}
			}

			selectedArray = jQuery.merge(selectedArray, obj);

		} else {
			if (typeof obj == 'object') {
				$(obj).data('fancybox', $.extend({}, opts, obj));
			} else {
				obj = $({}).data('fancybox', $.extend({content : obj}, opts));
			}

			selectedArray.push(obj);
		}

		if (selectedIndex > selectedArray.length || selectedIndex < 0) {
			selectedIndex = 0;
		}

		_start();
	};

	$.fancybox.showActivity = function() {
		clearInterval(loadingTimer);

		loading.show();
		loadingTimer = setInterval(_animate_loading, 66);
	};

	$.fancybox.hideActivity = function() {
		loading.hide();
	};

	$.fancybox.next = function() {
		return $.fancybox.pos( currentIndex + 1);
	};

	$.fancybox.prev = function() {
		return $.fancybox.pos( currentIndex - 1);
	};

	$.fancybox.pos = function(pos) {
		if (busy) {
			return;
		}

		pos = parseInt(pos);

		selectedArray = currentArray;

		if (pos > -1 && pos < currentArray.length) {
			selectedIndex = pos;
			_start();

		} else if (currentOpts.cyclic && currentArray.length > 1) {
			selectedIndex = pos >= currentArray.length ? 0 : currentArray.length - 1;
			_start();
		}

		return;
	};

	$.fancybox.cancel = function() {
		if (busy) {
			return;
		}

		busy = true;

		$.event.trigger('fancybox-cancel');

		_abort();

		selectedOpts.onCancel(selectedArray, selectedIndex, selectedOpts);

		busy = false;
	};

	// Note: within an iframe use - parent.$.fancybox.close();
	$.fancybox.close = function() {
		if (busy || wrap.is(':hidden')) {
			return;
		}

		busy = true;

		if (currentOpts && false === currentOpts.onCleanup(currentArray, currentIndex, currentOpts)) {
			busy = false;
			return;
		}

		_abort();

		$(close.add( nav_left ).add( nav_right )).hide();

		$(content.add( overlay )).unbind();

		$(window).unbind("resize.fb scroll.fb");
		$(document).unbind('keydown.fb');

		content.find('iframe').attr('src', isIE6 && /^https/i.test(window.location.href || '') ? 'javascript:void(false)' : 'about:blank');

		if (currentOpts.titlePosition !== 'inside') {
			title.empty();
		}

		wrap.stop();

		function _cleanup() {
			overlay.fadeOut('fast');

			title.empty().hide();
			wrap.hide();

			$.event.trigger('fancybox-cleanup');

			content.empty();

			currentOpts.onClosed(currentArray, currentIndex, currentOpts);

			currentArray = selectedOpts	= [];
			currentIndex = selectedIndex = 0;
			currentOpts = selectedOpts	= {};

			busy = false;
		}

		if (currentOpts.transitionOut == 'elastic') {
			start_pos = _get_zoom_from();

			var pos = wrap.position();

			final_pos = {
				top	 : pos.top ,
				left : pos.left,
				width :	wrap.width(),
				height : wrap.height()
			};

			if (currentOpts.opacity) {
				final_pos.opacity = 1;
			}

			title.empty().hide();

			fx.prop = 1;

			$(fx).animate({ prop: 0 }, {
				 duration : currentOpts.speedOut,
				 easing : currentOpts.easingOut,
				 step : _draw,
				 complete : _cleanup
			});

		} else {
			wrap.fadeOut( currentOpts.transitionOut == 'none' ? 0 : currentOpts.speedOut, _cleanup);
		}
	};

	$.fancybox.resize = function() {
		if (overlay.is(':visible')) {
			overlay.css('height', $(document).height());
		}

		$.fancybox.center(true);
	};

	$.fancybox.center = function() {
		var view, align;

		if (busy) {
			return;	
		}

		align = arguments[0] === true ? 1 : 0;
		view = _get_viewport();

		if (!align && (wrap.width() > view[0] || wrap.height() > view[1])) {
			return;	
		}

		wrap
			.stop()
			.animate({
				'top' : parseInt(Math.max(view[3] - 20, view[3] + ((view[1] - content.height() - 40) * 0.5) - currentOpts.padding)),
				'left' : parseInt(Math.max(view[2] - 20, view[2] + ((view[0] - content.width() - 40) * 0.5) - currentOpts.padding))
			}, typeof arguments[0] == 'number' ? arguments[0] : 200);
	};

	$.fancybox.init = function() {
		if ($("#fancybox-wrap").length) {
			return;
		}

		$('body').append(
			tmp	= $('<div id="fancybox-tmp"></div>'),
			loading	= $('<div id="fancybox-loading"><div></div></div>'),
			overlay	= $('<div id="fancybox-overlay"></div>'),
			wrap = $('<div id="fancybox-wrap"></div>')
		);

		outer = $('<div id="fancybox-outer"></div>')
			.append('<div class="fancybox-bg" id="fancybox-bg-n"></div><div class="fancybox-bg" id="fancybox-bg-ne"></div><div class="fancybox-bg" id="fancybox-bg-e"></div><div class="fancybox-bg" id="fancybox-bg-se"></div><div class="fancybox-bg" id="fancybox-bg-s"></div><div class="fancybox-bg" id="fancybox-bg-sw"></div><div class="fancybox-bg" id="fancybox-bg-w"></div><div class="fancybox-bg" id="fancybox-bg-nw"></div>')
			.appendTo( wrap );

		outer.append(
			content = $('<div id="fancybox-content"></div>'),
			close = $('<a id="fancybox-close">Fechar</a>'),
			title = $('<div id="fancybox-title"></div>'),

			nav_left = $('<a href="javascript:;" id="fancybox-left"><span class="fancy-ico" id="fancybox-left-ico"></span></a>'),
			nav_right = $('<a href="javascript:;" id="fancybox-right"><span class="fancy-ico" id="fancybox-right-ico"></span></a>')
		);

		close.click($.fancybox.close);
		loading.click($.fancybox.cancel);

		nav_left.click(function(e) {
			e.preventDefault();
			$.fancybox.prev();
		});

		nav_right.click(function(e) {
			e.preventDefault();
			$.fancybox.next();
		});

		if ($.fn.mousewheel) {
			wrap.bind('mousewheel.fb', function(e, delta) {
				if (busy) {
					e.preventDefault();

				} else if ($(e.target).get(0).clientHeight == 0 || $(e.target).get(0).scrollHeight === $(e.target).get(0).clientHeight) {
					e.preventDefault();
					$.fancybox[ delta > 0 ? 'prev' : 'next']();
				}
			});
		}

		if (!$.support.opacity) {
			wrap.addClass('fancybox-ie');
		}

		if (isIE6) {
			loading.addClass('fancybox-ie6');
			wrap.addClass('fancybox-ie6');

			$('<iframe id="fancybox-hide-sel-frame" src="' + (/^https/i.test(window.location.href || '') ? 'javascript:void(false)' : 'about:blank' ) + '" scrolling="no" border="0" frameborder="0" tabindex="-1"></iframe>').prependTo(outer);
		}
	};

	$.fn.fancybox.defaults = {
		padding : 10,
		margin : 40,
		opacity : false,
		modal : false,
		cyclic : false,
		scrolling : 'auto',	// 'auto', 'yes' or 'no'

		width : 560,
		height : 340,

		autoScale : true,
		autoDimensions : true,
		centerOnScroll : false,

		ajax : {},
		swf : { wmode: 'transparent' },

		hideOnOverlayClick : true,
		hideOnContentClick : false,

		overlayShow : true,
		overlayOpacity : 0.7,
		overlayColor : '#777',

		titleShow : true,
		titlePosition : 'float', // 'float', 'outside', 'inside' or 'over'
		titleFormat : null,
		titleFromAlt : false,

		transitionIn : 'elastic', // 'elastic', 'fade' or 'none'
		transitionOut : 'elastic', // 'elastic', 'fade' or 'none'

		speedIn : 300,
		speedOut : 300,

		changeSpeed : 300,
		changeFade : 'fast',

		easingIn : 'swing',
		easingOut : 'swing',

		showCloseButton	 : true,
		showNavArrows : true,
		enableEscapeButton : true,
		enableKeyboardNav : true,

		onStart: function () {
		},
		onCancel : function(){},
		onComplete : function(){},
		onCleanup : function(){},
		onClosed: function () {
		},
		onError : function(){}
	};

	$(document).ready(function() {
		$.fancybox.init();
	});

})(jQuery);
; 
/*
* jQuery Autocomplete plugin 1.1
*
* Copyright (c) 2009 JÃƒÂ¶rn Zaefferer
*
* Dual licensed under the MIT and GPL licenses:
*   http://www.opensource.org/licenses/mit-license.php
*   http://www.gnu.org/licenses/gpl.html
*
* Revision: $Id: jquery.autocomplete.js 15 2009-08-22 10:30:27Z joern.zaefferer $
*/

; (function ($) {

  var existeLinkProduto = false;
  var elemento = null;
  var local = null;

  if (typeof ($) === 'undefined') { return; }

  $.fn.extend({
    autocomplete: function (urlOrData, options) {
      var isUrl = typeof urlOrData == "string";
      options = $.extend({}, $.Autocompleter.defaults, {
        url: isUrl ? urlOrData : null,
        data: isUrl ? null : urlOrData,
        delay: isUrl ? $.Autocompleter.defaults.delay : 10,
        max: options && !options.scroll ? 10 : 150
      }, options);

      // if highlight is set to false, replace it with a do-nothing function
      options.highlight = options.highlight || function (value) { return value; };

      // if the formatMatch option is not specified, then use formatItem for backwards compatibility
      options.formatMatch = options.formatMatch || options.formatItem;

      return this.each(function () {
        new $.Autocompleter(this, options);
      });
    },
    result: function (handler) {
      return this.bind("result", handler);
    },
    search: function (handler) {
      return this.trigger("search", [handler]);
    },
    flushCache: function () {
      return this.trigger("flushCache");
    },
    setOptions: function (options) {
      return this.trigger("setOptions", [options]);
    },
    unautocomplete: function () {
      return this.trigger("unautocomplete");
    }
  });

  $.Autocompleter = function (input, options) {

    var KEY = {
      UP: 38,
      DOWN: 40,
      DEL: 46,
      TAB: 9,
      RETURN: 13,
      ESC: 27,
      COMMA: 188,
      PAGEUP: 33,
      PAGEDOWN: 34,
      BACKSPACE: 8
    };

    var acceptingResults = false;

    // Create $ object for input element
    var $input = $(input).attr("autocomplete", "off").addClass(options.inputClass);

    var timeout;
    var previousValue = "";
    var cache = $.Autocompleter.Cache(options);
    var hasFocus = 0;
    var lastKeyPressCode;
    var config = {
      mouseDownOnSelect: false
    };
    var select = $.Autocompleter.Select(options, input, selectCurrent, config);

    var blockSubmit;

    // prevent form submit in opera when selecting with return key
    $.browser.opera && $(input.form).bind("submit.autocomplete", function () {
      if (blockSubmit) {
        blockSubmit = false;
        return false;
      }
    });

    // only opera doesn't trigger keydown multiple times while pressed, others don't work with keypress at all
    $input.bind(($.browser.opera ? "keypress" : "keydown") + ".autocomplete", function (event) {
      // a keypress means the input has focus
      // avoids issue where input had focus before the autocomplete was applied
      hasFocus = 1;
      // track last key pressed
      lastKeyPressCode = event.keyCode;
      switch (event.keyCode) {

        case KEY.UP:
          acceptingResults = true;
          event.preventDefault();
          if (select.visible()) {
            select.prev();
          } else {
            onChange(0, true);
          }
          break;

        case KEY.DOWN:
          acceptingResults = true;
          event.preventDefault();
          if (select.visible()) {
            select.next();
          } else {
            onChange(0, true);
          }
          break;

        case KEY.PAGEUP:
          acceptingResults = true;
          event.preventDefault();
          if (select.visible()) {
            select.pageUp();
          } else {
            onChange(0, true);
          }
          break;

        case KEY.PAGEDOWN:
          acceptingResults = true;
          event.preventDefault();
          if (select.visible()) {
            select.pageDown();
          } else {
            onChange(0, true);
          }
          break;

        // matches also semicolon        
        case options.multiple && $.trim(options.multipleSeparator) == "," && KEY.COMMA:
        case KEY.TAB:
          if (select.visible()) {
            selectCurrent();
            event.preventDefault();
          }
          break;

        case KEY.RETURN:
          var urlProduto = retornaUrlProduto();
          acceptingResults = false;
          selectCurrent();
          select.hide();

          if (urlProduto != "") {
            existeLinkProduto = true;
            window.location.href = urlProduto;
            return false;
          } else {
            existeLinkProduto = false;
            endereco = window.location.href;

            var selector = "#" + $(this).attr("id");
            var buscaInput = "";
            var buscaForm = "";

            for (i = 0; i < fbitsSearchConfig.selectors.length; i++){
              var config = fbitsSearchConfig.selectors[i];

              if (selector == config.searchTextBoxSelector) {
                buscaInput = config.searchTextBoxSelector;
                buscaForm = config.searchForm;
              }
            }

            // Verifica se o conteúdo digitado sendo enviado não está vazio ou com o texto padrão
            if ($(buscaInput).val() != textoPadrao && $(buscaInput).val().trim() != "" && $(buscaInput) != null && $(buscaInput).val() != undefined) {
              $(buscaForm).submit();
              return false;
            } else {
              return false;
            }

          }

          break;

        case KEY.ESC:
          acceptingResults = false;
          select.hide();
          break;

        default:
          acceptingResults = true;
          clearTimeout(timeout);
          timeout = setTimeout(onChange, options.delay);
          break;
      }
    }).focus(function () {
      // track whether the field has focus, we shouldn't process any
      // results if the field no longer has focus
      hasFocus++;
    }).blur(function () {
      hasFocus = 0;
      if (!config.mouseDownOnSelect) {
        hideResults();
      }
    }).click(function () {
      // show select when clicking in a focused field
      if (hasFocus++ > 1 && !select.visible()) {
        onChange(0, true);
      }
    }).bind("search", function () {
      // TODO why not just specifying both arguments?
      var fn = (arguments.length > 1) ? arguments[1] : null;
      function findValueCallback(q, data) {
        var result;
        if (data && data.length) {
          for (var i = 0; i < data.length; i++) {
            if (data[i].result.toLowerCase() == q.toLowerCase()) {
              result = data[i];
              break;
            }
          }
        }
        if (typeof fn == "function") fn(result);
        else $input.trigger("result", result && [result.data, result.value]);
      }
      $.each(trimWords($input.val()), function (i, value) {
        request(value, findValueCallback, findValueCallback);
      });
    }).bind("flushCache", function () {
      cache.flush();
    }).bind("setOptions", function () {
      $.extend(options, arguments[1]);
      // if we've updated the data, repopulate
      if ("data" in arguments[1])
        cache.populate();
    }).bind("unautocomplete", function () {
      select.unbind();
      $input.unbind();
      $(input.form).unbind(".autocomplete");
    });

    // Retorna a Url do Produto que foi selecionado/clicado
    // pelo usuário
    function retornaUrlProduto() {
      var selected = select.selected();

      if (typeof selected != 'undefined' && selected != 0 && selected != '' && $(selected.value) != null && $(selected.value)[0].className == "autocomplete-produto") {
        return $(selected.value)[0].children[0].href;
      }
      return "";

    }

    function selectCurrent() {
      var selected = select.selected();
      if (!selected)
        return false;

      var v = selected.result;
      previousValue = v;

      if (options.multiple) {
        var words = trimWords($input.val());
        if (words.length > 1) {
          var seperator = options.multipleSeparator.length;
          var cursorAt = $(input).selection().start;
          var wordAt, progress = 0;
          $.each(words, function (i, word) {
            progress += word.length;
            if (cursorAt <= progress) {
              wordAt = i;
              return false;
            }
            progress += seperator;
          });
          words[wordAt] = v;
          // TODO this should set the cursor to the right position, but it gets overriden somewhere
          //$.Autocompleter.Selection(input, progress + seperator, progress + seperator);
          v = words.join(options.multipleSeparator);
        }
        v += options.multipleSeparator;
      }

      $input.val(v);
      hideResultsNow();
      $input.trigger("result", [selected.data, selected.value]);
      return true;
    }

    function onChange(crap, skipPrevCheck) {
      if (lastKeyPressCode == KEY.DEL) {
        select.hide();
        return;
      }

      var currentValue = $input.val();

      if (!skipPrevCheck && currentValue == previousValue)
        return;

      previousValue = currentValue;

      currentValue = lastWord(currentValue);
      if (currentValue.length >= options.minChars) {
        if (!options.matchCase)
          currentValue = currentValue.toLowerCase();
        request(currentValue, receiveData, hideResultsNow);
      } else {
        select.hide();
      }
    };

    function trimWords(value) {
      if (!value)
        return [""];
      if (!options.multiple)
        return [$.trim(value)];
      return $.map(value.split(options.multipleSeparator), function (word) {
        return $.trim(value).length ? $.trim(word) : null;
      });
    }

    function lastWord(value) {
      if (!options.multiple)
        return value;
      var words = trimWords(value);
      if (words.length == 1)
        return words[0];
      var cursorAt = $(input).selection().start;
      if (cursorAt == value.length) {
        words = trimWords(value)
      } else {
        words = trimWords(value.replace(value.substring(cursorAt), ""));
      }
      return words[words.length - 1];
    }

    // fills in the input box w/the first match (assumed to be the best match)
    // q: the term entered
    // sValue: the first matching result
    function autoFill(q, sValue) {
      // autofill in the complete box w/the first match as long as the user hasn't entered in more data
      // if the last user key pressed was backspace, don't autofill
      if (options.autoFill && (lastWord($input.val()).toLowerCase() == q.toLowerCase()) && lastKeyPressCode != KEY.BACKSPACE) {
        // fill in the value (keep the case the user has typed)
        $input.val($input.val() + sValue.substring(lastWord(previousValue).length));
        // select the portion of the value not typed by the user (so the next character will erase)
        $(input).selection(previousValue.length, previousValue.length + sValue.length);
      }
    };

    function hideResults() {
      clearTimeout(timeout);
      timeout = setTimeout(hideResultsNow, 200);
    };

    function hideResultsNow() {
      var wasVisible = select.visible();
      select.hide();
      clearTimeout(timeout);
      if (options.mustMatch) {
        // call search and run callback
        $input.search(
				function (result) {
				  // if no value found, clear the input box
				  if (!result) {
				    if (options.multiple) {
				      var words = trimWords($input.val()).slice(0, -1);
				      $input.val(words.join(options.multipleSeparator) + (words.length ? options.multipleSeparator : ""));
				    }
				    else {
				      $input.val("");
				      $input.trigger("result", null);
				    }
				  }
				}
			);
      }
    };

    function receiveData(q, data) {
      if (data && data.length && hasFocus) {
        select.display(data, q);
        autoFill(q, data[0].value);
        select.show();
      } else {
        hideResultsNow();
      }
    };

    function request(term, success, failure) {
      if (!options.matchCase)
        term = term.toLowerCase();
      var data = cache.load(term);
      // recieve the cached data
      if (data && data.length && acceptingResults) {
        success(term, data);
        // if an AJAX url has been supplied, try loading the data now
      } else if ((typeof options.url == "string") && (options.url.length > 0)) {
        var extraParams = {
          timestamp: +new Date()
        };
        $.each(options.extraParams, function (key, param) {
          extraParams[key] = typeof param == "function" ? param() : param;
        });

        $.ajax({
          // try to leverage ajaxQueue plugin to abort previous requests
          mode: "abort",
          // limit abortion to this input
          port: "autocomplete" + input.name,
          dataType: options.dataType,
          url: options.url,
          data: $.extend({ busca: lastWord(term) }, extraParams),
          success: function (data) {
            var parsed = options.parse && options.parse(data) || parse(data);
            cache.add(term, parsed);
            if (acceptingResults) success(term, parsed);
          }
        });
      } else {
        // if we have a failure, we need to empty the list -- this prevents the the [TAB] key from selecting the last successful match
        select.emptyList();
        failure(term);
      }
    };

    function parse(data) {
      var parsed = [];
      var rows = [];
      var autocompleteItems = jQuery('<div/>').html(data.htmlAutoComplete || '').find('.autocomplete-item');
      if (autocompleteItems.size() > 0) {
        autocompleteItems.each(function () {
          rows[rows.length] = jQuery(this).html();
        });
      }
      for (var i = 0; i < rows.length; i++) {
        var row = $.trim(rows[i]);
        if (row) {
          row = [row];
          parsed[parsed.length] = {
            data: row,
            value: row[0],
            result: options.formatResult && options.formatResult(row, row[0]) || row[0]
          };
        }
      }
      return parsed;
    };
  };

  $.Autocompleter.defaults = {
    inputClass: "ac_input",
    resultsClass: "ac_results",
    loadingClass: "ac_loading",
    minChars: 1,
    delay: 400,
    matchCase: false,
    matchSubset: true,
    matchContains: false,
    cacheLength: 10,
    max: 100,
    mustMatch: false,
    extraParams: {},
    selectFirst: true,
    formatItem: function (row) { return row[0]; },
    formatMatch: null,
    autoFill: false,
    width: 0,
    multiple: false,
    multipleSeparator: ", ",
    highlight: function (value, term) {
      return value.replace(new RegExp("(?![^&;]+;)(?!<[^<>]*)(" + term.replace(/([\^\$\(\)\[\]\{\}\*\.\+\?\|\\])/gi, "\\$1") + ")(?![^<>]*>)(?![^&;]+;)", "gi"), "<strong>$1</strong>");
    },
    scroll: true,
    scrollHeight: 180,
    searchForm: "",
    searchTextBox: ""
  };

  $.Autocompleter.Cache = function (options) {

    var data = {};
    var length = 0;

    function matchSubset(s, sub) {
      if (!options.matchCase)
        s = s.toLowerCase();
      var i = s.indexOf(sub);
      if (options.matchContains == "word") {
        i = s.toLowerCase().search("\\b" + sub.toLowerCase());
      }
      if (i == -1) return false;
      return i == 0 || options.matchContains;
    };

    function add(q, value) {
      if (length > options.cacheLength) {
        flush();
      }
      if (!data[q]) {
        length++;
      }
      data[q] = value;
    }

    function populate() {
      if (!options.data) return false;
      // track the matches
      var stMatchSets = {},
			nullData = 0;

      // no url was specified, we need to adjust the cache length to make sure it fits the local data store
      if (!options.url) options.cacheLength = 1;

      // track all options for minChars = 0
      stMatchSets[""] = [];

      // loop through the array and create a lookup structure
      for (var i = 0, ol = options.data.length; i < ol; i++) {
        var rawValue = options.data[i];
        // if rawValue is a string, make an array otherwise just reference the array
        rawValue = (typeof rawValue == "string") ? [rawValue] : rawValue;

        var value = options.formatMatch(rawValue, i + 1, options.data.length);
        if (value === false)
          continue;

        var firstChar = value.charAt(0).toLowerCase();
        // if no lookup array for this character exists, look it up now
        if (!stMatchSets[firstChar])
          stMatchSets[firstChar] = [];

        // if the match is a string
        var row = {
          value: value,
          data: rawValue,
          result: options.formatResult && options.formatResult(rawValue) || value
        };

        // push the current match into the set list
        stMatchSets[firstChar].push(row);

        // keep track of minChars zero items
        if (nullData++ < options.max) {
          stMatchSets[""].push(row);
        }
      };

      // add the data items to the cache
      $.each(stMatchSets, function (i, value) {
        // increase the cache size
        options.cacheLength++;
        // add to the cache
        add(i, value);
      });
    }

    // populate any existing data
    setTimeout(populate, 25);

    function flush() {
      data = {};
      length = 0;
    }

    return {
      flush: flush,
      add: add,
      populate: populate,
      load: function (q) {
        if (!options.cacheLength || !length)
          return null;
        /* 
        * if dealing w/local data and matchContains than we must make sure
        * to loop through all the data collections looking for matches
        */
        if (!options.url && options.matchContains) {
          // track all matches
          var csub = [];
          // loop through all the data grids for matches
          for (var k in data) {
            // don't search through the stMatchSets[""] (minChars: 0) cache
            // this prevents duplicates
            if (k.length > 0) {
              var c = data[k];
              $.each(c, function (i, x) {
                // if we've got a match, add it to the array
                if (matchSubset(x.value, q)) {
                  csub.push(x);
                }
              });
            }
          }
          return csub;
        } else
        // if the exact item exists, use it
          if (data[q]) {
            return data[q];
          } else
            if (options.matchSubset) {
              for (var i = q.length - 1; i >= options.minChars; i--) {
                var c = data[q.substr(0, i)];
                if (c) {
                  var csub = [];
                  $.each(c, function (i, x) {
                    if (matchSubset(x.value, q)) {
                      csub[csub.length] = x;
                    }
                  });
                  return csub;
                }
              }
            }
        return null;
      }
    };
  };

  $.Autocompleter.Select = function (options, input, select, config) {
    var CLASSES = {
      ACTIVE: "ac_over"
    };

    var listItems,
		active = -1,
		data,
		term = "",
		needsInit = true,
		element,
		list;

    // Create results
    function init() {
      if (!needsInit)
        return;

      var offset = $(input).offset();

      element = $("<div/>")
	    .hide()
	    .addClass(options.resultsClass)
	    .css("position", options.positionAutoComplete)
	    .appendTo(document.body);

      /* descomentar caso haja busca flutuante no cliente */
      //if(options.positionAutoComplete == "fixed"){
      //  $(element).attr("id","flutuante");
      //}

      list = $("<ul/>")
        .appendTo(element)
        .mousemove(function (event) {
          if (target(event).nodeName && target(event).nodeName.toUpperCase() == 'LI') {
            active = $("li", list).removeClass(CLASSES.ACTIVE).index(target(event));
            $(target(event)).addClass(CLASSES.ACTIVE);
          }
        })
        .click(function (event) {
          $(target(event)).addClass(CLASSES.ACTIVE);
          select();
          // Só para quando está no site do cliente (script de integração) e no IE.
          //alert(event.target.nodeName.toLowerCase());
          //return false;
          endereco = window.location.href;
          elemento = "," + (event.target.nodeName + "," + event.target.parentElement.nodeName + "," + event.target.parentElement.parentElement.nodeName).toLowerCase() + ",";
          

          if (elemento.indexOf(",a,") == -1) {
            var selector = "#" + $(this).attr("id");
            var buscaInput = "";
            var buscaForm = "";

            for (i = 0; i < fbitsSearchConfig.selectors.length; i++){
              var config = fbitsSearchConfig.selectors[i];

              if (selector == config.searchTextBoxSelector) {
                buscaInput = config.searchTextBoxSelector;
                buscaForm = config.searchForm;
              }
            }

            // Verifica se o conteúdo digitado sendo enviado não está vazio ou com o texto padrão
            if ($(buscaInput).val() != textoPadrao && $(buscaInput).val().trim() != "" && $(buscaInput) != null && $(buscaInput).val() != undefined) {
              $(buscaForm).submit();
              return false;
            } else {
              return false;
            }
          }
        })
        .mousedown(function () {
          config.mouseDownOnSelect = true;
        })
        .mouseup(function () {
          config.mouseDownOnSelect = false;
        });

      if (options.width > 0)
        element.css("width", options.width);

      needsInit = false;
    }

    function target(event) {
      var element = event.target;
      while (element && element.tagName != "LI")
        element = element.parentNode;
      // more fun with IE, sometimes event.target is empty, just ignore it then
      if (!element)
        return [];
      return element;
    }

    function moveSelect(step) {
      listItems.slice(active, active + 1).removeClass(CLASSES.ACTIVE);
      movePosition(step);
      var activeItem = listItems.slice(active, active + 1).addClass(CLASSES.ACTIVE);
      if (options.scroll) {
        var offset = 0;
        listItems.slice(0, active).each(function () {
          offset += this.offsetHeight;
        });
        if ((offset + activeItem[0].offsetHeight - list.scrollTop()) > list[0].clientHeight) {
          list.scrollTop(offset + activeItem[0].offsetHeight - list.innerHeight());
        } else if (offset < list.scrollTop()) {
          list.scrollTop(offset);
        }
      }
    };

    function movePosition(step) {
      active += step;
      if (active < 0) {
        active = listItems.size() - 1;
      } else if (active >= listItems.size()) {
        active = 0;
      }
    }

    function limitNumberOfItems(available) {
      return options.max && options.max < available
			? options.max
			: available;
    }

    function fillList() {
      list.empty();
      var max = limitNumberOfItems(data.length);
      for (var i = 0; i < max; i++) {
        if (!data[i])
          continue;
        var formatted = options.formatItem(data[i].data, i + 1, max, data[i].value, term);
        if (formatted === false)
          continue;
        var li = $("<li/>").html(options.highlight(formatted, term))/*.addClass(i % 2 == 0 ? "ac_even" : "ac_odd")*/.appendTo(list)[0];
        $.data(li, "ac_data", data[i]);
      }
      listItems = list.find("li");
      if (options.selectFirst) {
        listItems.slice(0, 1).addClass(CLASSES.ACTIVE);
        active = 0;
      }

      // Aplica classes de "cor-sim" "cor-nÃƒÂ£o".
      list.find('.autocomplete-termo-sugerido').parent().each(function (i, el) {
        $(el).addClass(i % 2 == 0 ? 'ac_even' : 'ac_odd');
        //Aplica um click nas opÃƒÂ§ÃƒÂµes do autocomplete (adicionado para funcionar no cliente)
        //$(el).click(clickAutoComplete);

      });
      list.find('.autocomplete-produto').parent().each(function (i, el) {
        $(el).addClass(i % 2 == 0 ? 'ac_even' : 'ac_odd');
        //Aplica um click nas opÃƒÂ§ÃƒÂµes do autocomplete (adicionado para funcionar no cliente)
        //$(el).click(clickAutoComplete);
      });

      var exibepoweredbyClass;

      // Adiciona os tÃƒÂ­tulos de "Termos sugeridos" e "Produtos sugeridos", bem como a imagem de "powered-by".
      var liTermoSugerido = list.find('.autocomplete-termo-sugerido:first').parent(),
        liProdutoSugerido = list.find('.autocomplete-produto:first').parent();
      if (liTermoSugerido.length > 0) {
        liTermoSugerido.before($('<h3>').addClass('autocomplete-header-termos-sugeridos').text('Termos sugeridos'));
      }
      if (liProdutoSugerido.length > 0) {
        liProdutoSugerido.before($('<h3>').addClass('autocomplete-header-produtos').text('Produtos'));
      }
      if ((typeof (configuracoesBusca) !== 'undefined' && !configuracoesBusca.exibepoweredby) || (typeof (fbitsSearchConfig) !== 'undefined' && !fbitsSearchConfig.exibepoweredby)) {
        exibepoweredbyClass = "autocomplete-powered-by-hide";
      }
      else {
        exibepoweredbyClass = "autocomplete-powered-by";
      }

      if (list.find('li').length > 0) {
        list.append(
          $('<span>')
            .mouseover(function (e) { list.find('.' + CLASSES.ACTIVE).removeClass(CLASSES.ACTIVE); })
            .click(function (e) {
              window.open('https://www.traycorp.com.br/lp-ecommerce-alta-performance/?utm_source=' + fbits.ecommerce.nome + '&utm_medium=F-Search&utm_term=F-Search&utm_content=Busca&utm_campaign=minibanner_autocomplete');
              e.stopPropagation();
            }).text('F-Search').addClass(exibepoweredbyClass)
          );

        list.append(
            $('<div>')
            .mouseover(function (e) { list.find('.' + CLASSES.ACTIVE).removeClass(CLASSES.ACTIVE); })
            .addClass('autocomplete-vertodos')
            .text('Clique para ver todos')
          );
      }

      // apply bgiframe if available
      if ($.fn.bgiframe)
        list.bgiframe();
    }

    function detectMobile() { 
     if( navigator.userAgent.match(/Android/i)
     || navigator.userAgent.match(/webOS/i)
     || navigator.userAgent.match(/iPhone/i)
     || navigator.userAgent.match(/iPad/i)
     || navigator.userAgent.match(/iPod/i)
     || navigator.userAgent.match(/BlackBerry/i)
     || navigator.userAgent.match(/Windows Phone/i)
     )
        return true;
     else 
        return false;
    }

    return {
      display: function (d, q) {
        init();
        data = d;
        term = q;
        fillList();
      },
      next: function () {
        moveSelect(1);
      },
      prev: function () {
        moveSelect(-1);
      },
      pageUp: function () {
        if (active != 0 && active - 8 < 0) {
          moveSelect(-active);
        } else {
          moveSelect(-8);
        }
      },
      pageDown: function () {
        if (active != listItems.size() - 1 && active + 8 > listItems.size()) {
          moveSelect(listItems.size() - 1 - active);
        } else {
          moveSelect(8);
        }
      },
      hide: function () {
        element && element.hide();
        listItems && listItems.removeClass(CLASSES.ACTIVE);
        active = -1;
      },
      visible: function () {
        return element && element.is(":visible");
      },
      current: function () {
        return this.visible() && (listItems.filter("." + CLASSES.ACTIVE)[0] || options.selectFirst && listItems[0]);
      },
      // Posiciona o menu do autocomplete
      show: function () {
        var offset = $(input).offset();
        var bottom;
        var top;
        var right;
        
        // verifica se o navegador é mobile
        if(detectMobile()){
            right = 0;
        } else {
            // verifica a posição do input de busca 
            right = ($(window).width() - (offset.left + $(input).outerWidth()));
        }
        if (options.positionAutoComplete == "fixed") {
          top = options.top != undefined && options.top > 0 ? options.top : offset.top + 40;
        } else {
          //se for o busca inferior, autocomplete pra cima
          //alert("Input top: "+offset.top);
          if (offset.top < 200) {
              top = offset.top + $(input).height() + 10;
          }
          else {
            // Valor relativo, necessário alterar dependendo do cliente.
            // Pega o tamanho do corpo da página
              var height = $('body').height();
              bottom = height - offset.top;
              element.css({ bottom: bottom });
            }
        }

        element.css({
          width: options.width != undefined ? options.width : $(input).width(),
          top:  top,
          left: "inherit",
          right: right
        }).show();

        $(element).find("ul").attr("id", options.searchTextBox.replace("#", ""));

        $(element).find(".autocomplete-vertodos").click(function (event) {
          var endereco = window.location.href;
          $(options.searchForm).submit();
          return false;
        })

        if (options.scroll) {
          list.scrollTop(0);
          list.css({
            maxHeight: options.scrollHeight,
            overflow: 'auto'
          });
          if ($.browser.msie && typeof document.body.style.maxHeight === "undefined") {
            var listHeight = 0;
            listItems.each(function () {
              listHeight += this.offsetHeight;
            });
            var scrollbarsVisible = listHeight > options.scrollHeight;
            list.css('height', scrollbarsVisible ? options.scrollHeight : listHeight);
            if (!scrollbarsVisible) {
              // IE doesn't recalculate width when scrollbar disappears
              listItems.width(list.width() - parseInt(listItems.css("padding-left")) - parseInt(listItems.css("padding-right")));
            }
          }
        }
      },
      selected: function () {
        var selected = listItems && listItems.filter("." + CLASSES.ACTIVE)/*.removeClass(CLASSES.ACTIVE)*/;
        return selected && selected.length && $.data(selected[0], "ac_data");
      },
      emptyList: function () {
        list && list.empty();
      },
      unbind: function () {
        element && element.remove();
      }
    };
  };

  $.fn.selection = function (start, end) {
    if (start !== undefined) {
      return this.each(function () {
        if (this.createTextRange) {
          var selRange = this.createTextRange();
          if (end === undefined || start == end) {
            selRange.move("character", start);
            selRange.select();
          } else {
            selRange.collapse(true);
            selRange.moveStart("character", start);
            selRange.moveEnd("character", end);
            selRange.select();
          }
        } else if (this.setSelectionRange) {
          this.setSelectionRange(start, end);
        } else if (this.selectionStart) {
          this.selectionStart = start;
          this.selectionEnd = end;
        }
      });
    }
    var field = this[0];
    if (field.createTextRange) {
      var range = document.selection.createRange(),
			orig = field.value,
			teststring = "<->",
			textLength = range.text.length;
      range.text = teststring;
      var caretAt = field.value.indexOf(teststring);
      field.value = orig;
      this.selection(caretAt, caretAt + textLength);
      return {
        start: caretAt,
        end: caretAt + textLength
      }
    } else if (field.selectionStart !== undefined) {
      return {
        start: field.selectionStart,
        end: field.selectionEnd

      }
    }
  };

})(jQuery);

; 

var fbitsSearchConfig = {
  // Configurações básicas.
  filtersContainerSelector: ".filtro",
  pagerContainerSelector: ".paginacao",
  suspendedTermsContainerSelector: "#termosSuspensos",
  exibepoweredby: true,
  selectors: [{
    searchForm: '#searchFormHeader',
    searchTextBoxSelector: '#txtBuscaPrincipal',
    searchButtonSelector: '#btnBusca',
    autocomplete: { width: 450, position: 'absolute' }
  },
  {
    searchForm: '#searchFormFooter',
    searchTextBoxSelector: '#txtBuscaFooter',
    searchButtonSelector: '#btnBuscaFooter',
    autocomplete: { width: 650, position: 'absolute' }
  },
  {
      searchForm: '#searchFormMobile',
      searchTextBoxSelector: '#txtBuscaMobile',
      searchButtonSelector: '#btnBuscaMobile',
      autocomplete: { width: 450, position: 'absolute' }
  },
  {
    searchForm: '#searchFormBarraFixa',
    searchTextBoxSelector: '#txtBuscaBarraFixa',
    searchButtonSelector: '#btnBuscaBarraFixa',
    autocomplete: { width: 550, top: 60, position: 'fixed'}
  }],

  // Função chamada antes da incialização do JavaScript da busca.
  clientScript_beforeInit: function () {
  },
  // Função chamada após o término da inicialização do JavaScript da busca.
  clientScript_afterInit: function () {
    //      $("#linkVejaMaisProdutos").bind("click", { self: this }, linkVejaMaisProdutos_click);
  }
};
; 

// Inicializa uma nova instância de FbitsSearch.
// @config: Object: Os parâmetros de configuração.
function FbitsSearch(config) {
    $.extend(this, config);
    this.init();
}

//executa a função trim()
String.prototype.trim = function () {
    return this.replace(/^\s+|\s+$/g, "");
}

/********************
Métodos.
********************/
var textoPadrao = fbits.search.placeholder;
var qualForm = null;

// Aplica as funções que tratam os eventos da página de busca e seus controles.
FbitsSearch.prototype.applyEventHandlers = function () {
    var eventData = { self: this };
    $(this.filtersContainerSelector).add(this.filterContainerTopSelector).find(":checkbox").bind("click", eventData, this.filter_click);
    $(this.pagerContainerSelector).find("a").unbind("click").bind("click", eventData, this.pager_click);
    $(this.suspendedTermsContainerSelector).find("a").unbind("click").bind("click", eventData, this.suspendedTermsLink_click);
};

// Inicializa a funcionalidade JavaScript da busca.
FbitsSearch.prototype.init = function () {
    if ($.isFunction(this.clientScript_beforeInit))
        this.clientScript_beforeInit();

    this.applyEventHandlers();
    this.createAutoComplete();

    // Copia o valor do hidden field de busca para a caixa de texto de busca.
    // Todo o código é necessário por causa do IE para que apareça a mensagem caso clique fora do campo.
    var searchHiddenField = $("#searchHiddenField");
    var texto = "";

    if (searchHiddenField.val() != "" && searchHiddenField.val() != null)
        texto = searchHiddenField.val();
    else
        texto = textoPadrao;


    $(this.selectors).each(function (i, item) {
        if (texto == textoPadrao) {
            $(item.searchTextBoxSelector).attr("placeholder", texto);
        }
        else {
            $(item.searchTextBoxSelector).val(texto);
        }
        //Adiciona eventos
        $(item.searchTextBoxSelector).blur(
          function () {
              var elem = $(this);
              if (elem.val() == '' || elem.val() == null)
                  $(item).attr("placeholder", textoPadrao);
          });

        var editarTermoPesquisado = false;

        if (typeof (configEditarTermoPesquisado) != "undefined") {
            editarTermoPesquisado = configEditarTermoPesquisado
        }

        if ($.browser.webkit) {
            $(item.searchTextBoxSelector).click(function (e) {
                if (texto != textoPadrao) {
                    if (!editarTermoPesquisado) {
                        $(this).val(texto)
                        $(this).select();
                    }
                } else {
                    $(this).val('');
                }
            });
        } else {
            $(item.searchTextBoxSelector).focus(function () {
                if (texto != textoPadrao) {
                    if (!editarTermoPesquisado) {
                        $(this).val(texto)
                        $(this).select();
                    }
                } else {
                    $(this).val('');
                }
            });
        }
    });

    // Esconde os botões de aplicação de filtro de busca.
    $(this.filtersContainerSelector).find(":submit").hide();

    if ($.isFunction(this.clientScript_afterInit)) {
        this.clientScript_afterInit();
    }

    addCookieHistoricoBusca();

};

/********************
Eventos.
********************/
// Ocorre quando um dos itens de filtro é clicado.
// Simula um clique no botão de aplicação de filtros.
FbitsSearch.prototype.filter_click = function (e) {
    var filtroNome = $(this).attr('value').split(':')[0];
    filtroNome = filtroNome.substring(0, filtroNome.length - 2)
    var filtroValor = $(this).attr('value').split(':')[1];

    if ($(this).attr('checked') == 'checked') {
        $("input[value^='" + filtroNome + "'][value$=':" + filtroValor + "']").attr('checked', true);
    } else {
        $("input[value^='" + filtroNome + "'][value$=':" + filtroValor + "']").attr('checked', false);
    }

    $(e.data.self.filtersContainerSelector).find(":submit").eq(0).click();
};


//Gerencia os filtros de ordenação
function submitOrder(element) {
    var valorOrdenacao = '';
    if ($(element).val() != null && $(element).val() != '') {
        valorOrdenacao = $(element).val();

        if ($('#Ordem').val() != null && $('#Ordem').val() != '')
            valorOrdenacao += ':' + $(element).val();
    }

    $('#hdnOrdenacao').val(valorOrdenacao);
    $("#searchForm").submit();
}

/********************
Auto Complete.
********************/
// Aplica o auto-complete na caixa de texto de busca do topo.
FbitsSearch.prototype.createAutoComplete = function () {
    if ($().autocomplete) {
        $(this.selectors).each(function (i, item) {
            $(item.searchTextBoxSelector)
           .autocomplete(fbits.ecommerce.urlEcommerce + "/Busca/AutoComplete", {
               delay: 200,
               highlight: false,
               scroll: false,
               selectFirst: false,
               top: item.autocomplete.top,
               width: item.autocomplete.width,
               searchForm: item.searchForm,
               searchTextBox: item.searchTextBoxSelector,
               positionAutoComplete: item.autocomplete.position,
               formatResult: function (data, value) {
                   // O template de item de auto-complete pode especificar um HTML.
                   // Neste caso, o designer deve aplicar a classe CSS "item-value" aos elementos que contém o texto que deve ser considerado como "valor selecionado" do item.
                   // O código abaixo procura todos os elementos que contém essa classe CSS, recupera seus respectivos textos e os separa com espaço.
                   // Caso nenhum elemento com a classe CSS "item-value" seja encontrado, o "valor selecionado" será o valor completo do item, mesmo que contenha HTML.
                   var parsedValue = [];
                   $("<div>").html(value).find(".autocomplete-item-value").each(function () {
                       parsedValue[parsedValue.length] = $.trim($(this).text().replace(/[\r\f\n]/g, ""));
                   });
                   parsedValue = parsedValue.join(" ");
                   return parsedValue.length > 0 ? parsedValue : value;
               }
           });
        });
    }
};

/********************
Inicialização do JavaScript do sistema de busca.
********************/
$(function () {
    window.fbitsSearch = new FbitsSearch(fbitsSearchConfig);
    //CarregarHistoricoBuscas();
    CarregarNuvemTags();
});

// Retira os "|" dentro do menu de filtros.
$(document).ready(function () {
    $('.item span').each(function () {
        while ($(this).text().indexOf('|') > -1) {
            $(this).text(
                      $(this).text().replace('|', '')
                  );
        }
    });
});

//Preenche a caixa de NuvemTags
function CarregarNuvemTags() {
    $.ajax({
        type: 'GET',
        url: fbits.ecommerce.urlEcommerce + "Busca/nuvemtags",
        dataType: 'json',
        success: function (data) {
            //console.log(data);
            var html = "<ul>";
            var termos = $.parseJSON(data.nuvemTags);

            //Recebe a quantidade para cada tamanho de tag (ex: 10 tags / 3 = 4... Assim a cada 4 tags será modificado o tamanho da fonte)
            //O arredondamento é sempre para o próximo numero inteiro
            var qtdPorTag = Math.ceil(termos.ResultadosNuvemTags.length / 3);

            //Contador
            var qtdPorTagLoop = qtdPorTag;

            var numTag = 1;

            //Receberá uma lista de objetos json com o html para cada tag
            var objTag = [];

            $.each(termos.ResultadosNuvemTags, function () {
                var textTag = "tag-";
                if (qtdPorTagLoop == 0) {
                    numTag++;
                    qtdPorTagLoop = qtdPorTag;
                }
                //tag-1
                textTag = textTag + numTag;

                objTag.push({ "value": "<li><a href=\"" + fbits.ecommerce.urlEcommerce + "Busca/?busca=" + this.termoAmigavel + "\" class=\"" + textTag + "\">" + this.termoAmigavel + "</a></li>" });

                qtdPorTagLoop--;
            });

            var i = 1;

            //Armazena keys já adicionadas a html
            var added = [];

            //Quantidade de tags retornadas
            var size = termos.ResultadosNuvemTags.length;

            while (i < size) {
                //Pega as posições do objeto randomicamente
                var key = Math.ceil((Math.random() * size) + -1);
                //Verifica se a chave já foi adicionada
                var pos = $.inArray(key, added);

                if (key > 0 && pos == -1) {
                    added.push(key);
                    html += objTag[key].value;
                    i++;
                }

            }
            html = html + '</ul>';
            if (termos.ResultadosNuvemTags.length > 0) {
                $('#nuvemTags').html(html);
                $('#tagCloud').show();
            }
        }
    });
}

function submitSearchForm(conteudo, formSearch) {
    if (conteudo != textoPadrao && conteudo.trim() != "" && conteudo != null && conteudo != undefined) {
        $(formSearch).submit();
    }
}

$(function () {
    $(fbitsSearchConfig.selectors).each(function (i, item) {
        $(item.searchButtonSelector).click(function () {
            submitSearchForm($(item.searchTextBoxSelector).attr('value'), item.searchForm);
        });
    });
});

function addCookieHistoricoBusca() {

    var searchTermo = getParameterByName("busca");

    if (searchTermo !== null && searchTermo !== undefined && searchTermo !== "") {

        searchTermo = encodeURI(searchTermo);
        var primeiroTermo = "termo=[" + searchTermo + "]";
        var cookieHistoricoBusca = Fbits.Cookie.Get("historicoBuscas");

        if (cookieHistoricoBusca == null || cookieHistoricoBusca == undefined || cookieHistoricoBusca == "") {
            Fbits.Cookie.Set("historicoBuscas", primeiroTermo, 1, "", true);
        } else {
            cookieHistoricoBusca = cookieHistoricoBusca.replace("termo=", "");
            cookieHistoricoBusca += "," + "[" + searchTermo + "]";
            var cookieItens = cookieHistoricoBusca.split(',');
            var uniqueItens = [];
            $.each(cookieItens, function (i, el) {
                if ($.inArray(el, uniqueItens) === -1) {
                    if (el !== null) {
                        uniqueItens.push(el);
                    }
                }
            });

            Fbits.Cookie.Set("historicoBuscas", "termo=" + uniqueItens.toString(), 1, "", true);
        }
    }
}

function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}



; 

var Fbits = Fbits || {};
Fbits.Componentes = Fbits.Componentes || {};
Fbits.Componentes.Historico = Fbits.Componentes.Historico || {};
Fbits.Componentes.Historico.Buscas = Fbits.Componentes.Historico.Buscas || {};
Fbits.Componentes.Historico.Buscas.termosBuscadosExibirImagens = Fbits.Componentes.Historico.Buscas.termosBuscadosExibirImagens || false;

function montarHistorico() {
    $.ajax({
        type: 'GET',
        url: fbits.ecommerce.urlEcommerce + 'GerenciadorCookie/ListarHistorico',
        success: function (data) {
            $("#historyBoard").replaceWith(data);
            if (Fbits.Componentes.Historico.Buscas.termosBuscadosExibirImagens == true) {
                var primeiroTermo = $('[data-produtosAcessados-termo]:first', '#dvTermosPesquisados').attr('data-produtosAcessados-termo');
                buscarSpots(primeiroTermo);
            }
        }
    });
}


function buscarSpots(termo) {
    $.ajax({
        method: "GET",
        url: "/Busca/BuscarSpots",
        data: { busca: termo, quantidade: 3 },
        cache: true,
        success: function (data) {
            $('[data-produtosAcessados-resultado="' + termo + '"]').html(data);
        }
    });
}

if (Fbits.Componentes.Historico.Buscas.termosBuscadosExibirImagens == true) {
    $(function () {
        //Fazer o hover dos termos.
        //Não fazer requisições ajax repetidas. Para isso pode-se verificar o conteudo da div de resultado. //Validar retornos vazios.
    });
}


; 
$(document).ready(function () {

var _isIE7 = jQuery.browser.msie && parseInt(jQuery.browser.version) == 7;

function ShowElement(element) {
  if (_isIE7)
    element.slideDown('fast').css("display", "inline");
  else
    element.show("fast");
}

$(".ver-todos").bind("click", AddClickVerTodos).text("+ Veja mais");
function AddClickVerTodos() {
  var currentAncora = $(this);
  currentAncora.parent().prev(".hide").show(200);
  currentAncora.removeClass("ver-todos").addClass("ver-menos");
  currentAncora.text("- Ocultar");
  currentAncora.unbind("click").bind("click", AddClickVerMenos);
}
function AddClickVerMenos() {
  var currentAncora = $(this);
  currentAncora.parent().prev(".hide").hide(200);
  currentAncora.removeClass("ver-menos").addClass("ver-todos");
  currentAncora.text("+ Veja mais");
  currentAncora.unbind("click").bind("click", AddClickVerTodos);
}
});
; 
// SlidesJS 3.0.3 - http://slidesjs.com
;
(function() {
    (function(a, b, c) {
        var d, e, f;
        return f = "slidesjs", e = {
            width: 940,
            height: 528,
            start: 1,
            navigation: {
                active: !0,
                effect: "slide"
            },
            pagination: {
                active: !0,
                effect: "slide"
            },
            play: {
                active: !0,
                effect: "slide",
                interval: 8e3,
                auto: !0,
                swap: !0,
                pauseOnHover: !0,
                restartDelay: 2500
            },
            effect: {
                slide: {
                    speed: 500
                },
                fade: {
                    speed: 300,
                    crossfade: !0
                }
            },
            callback: {
                loaded: function() {},
                start: function() {},
                complete: function() {}
            }
        }, d = function() {
            function b(b, c) {
                this.element = b, this.options = a.extend(!0, {}, e, c), this._defaults = e, this._name = f, this.init()
            }
            return b
        }(), d.prototype.init = function() {
            var c, d, e, f, g, h, i = this;
            return c = a(this.element), this.data = a.data(this), a.data(this, "animating", !1), a.data(this, "total", c.children().not(".slidesjs-navigation", c).length), a.data(this, "current", this.options.start - 1), a.data(this, "vendorPrefix", this._getVendorPrefix()), "undefined" != typeof TouchEvent && (a.data(this, "touch", !0), this.options.effect.slide.speed = this.options.effect.slide.speed / 2), c.css({
                overflow: "hidden"
            }), c.slidesContainer = c.children().not(".slidesjs-navigation", c).wrapAll("<div class='slidesjs-container'>", c).parent().css({
                overflow: "hidden",
                position: "relative"
            }), a(".slidesjs-container", c).wrapInner("<div class='slidesjs-control'>", c).children(), a(".slidesjs-control", c).css({
                position: "relative",
                left: 0
            }), a(".slidesjs-control", c).children().addClass("slidesjs-slide").css({
                position: "absolute",
                top: 0,
                left: 0,
                width: "100%",
                zIndex: 0,
                display: "none",
                webkitBackfaceVisibility: "hidden"
            }), a.each(a(".slidesjs-control", c).children(), function(b) {
                var c;
                return c = a(this), c.attr("slidesjs-index", b)
            }), this.data.touch && (a(".slidesjs-control", c).on("touchstart", function(a) {
                return i._touchstart(a)
            }), a(".slidesjs-control", c).on("touchmove", function(a) {
                return i._touchmove(a)
            }), a(".slidesjs-control", c).on("touchend", function(a) {
                return i._touchend(a)
            })), c.fadeIn(0), this.update(), this.data.touch && this._setuptouch(), a(".slidesjs-control", c).children(":eq(" + this.data.current + ")").eq(0).fadeIn(0, function() {
                return a(this).css({
                    zIndex: 10
                })
            }), this.options.navigation.active && (g = a("<a>", {
                "class": "slidesjs-previous slidesjs-navigation",
                href: "#",
                title: "Previous",
                text: "Previous"
            }).appendTo(c), d = a("<a>", {
                "class": "slidesjs-next slidesjs-navigation",
                href: "#",
                title: "Next",
                text: "Next"
            }).appendTo(c)), a(".slidesjs-next", c).click(function(a) {
                return a.preventDefault(), i.stop(!0), i.next(i.options.navigation.effect)
            }), a(".slidesjs-previous", c).click(function(a) {
                return a.preventDefault(), i.stop(!0), i.previous(i.options.navigation.effect)
            }), this.options.play.active && (f = a("<a>", {
                "class": "slidesjs-play slidesjs-navigation",
                href: "#",
                title: "Play",
                text: "Play"
            }).appendTo(c), h = a("<a>", {
                "class": "slidesjs-stop slidesjs-navigation",
                href: "#",
                title: "Stop",
                text: "Stop"
            }).appendTo(c), f.click(function(a) {
                return a.preventDefault(), i.play(!0)
            }), h.click(function(a) {
                return a.preventDefault(), i.stop(!0)
            }), this.options.play.swap && h.css({
                display: "none"
            })), this.options.pagination.active && (e = a("<ul>", {
                "class": "slidesjs-pagination"
            }).appendTo(c), a.each(Array(this.data.total), function(b) {
                var c, d;
                return c = a("<li>", {
                    "class": "slidesjs-pagination-item"
                }).appendTo(e), d = a("<a>", {
                    href: "#",
                    "data-slidesjs-item": b,
                    html: b + 1
                }).appendTo(c), d.click(function(b) {
                    return b.preventDefault(), i.stop(!0), i.goto1(1 * a(b.currentTarget).attr("data-slidesjs-item") + 1)
                })
            })), a(b).bind("resize", function() {
                return i.update()
            }), this._setActive(), this.options.play.auto && this.play(), this.options.callback.loaded(this.options.start)
        }, d.prototype._setActive = function(b) {
            var c, d;
            return c = a(this.element), this.data = a.data(this), d = b > -1 ? b : this.data.current, a(".active", c).removeClass("active"), a("li:eq(" + d + ") a", c).addClass("active")
        }, d.prototype.update = function() {
            var b, c, d;
            return b = a(this.element), this.data = a.data(this), a(".slidesjs-control", b).children(":not(:eq(" + this.data.current + "))").css({
                display: "none",
                left: 0,
                zIndex: 0
            }), d = b.width(), c = this.options.height / this.options.width * d, this.options.width = d, this.options.height = c, a(".slidesjs-control, .slidesjs-container", b).css({
                width: d,
                height: c
            })
        }, d.prototype.next = function(b) {
            var c;
            return c = a(this.element), this.data = a.data(this), a.data(this, "direction", "next"), void 0 === b && (b = this.options.navigation.effect), "fade" === b ? this._fade() : this._slide()
        }, d.prototype.previous = function(b) {
            var c;
            return c = a(this.element), this.data = a.data(this), a.data(this, "direction", "previous"), void 0 === b && (b = this.options.navigation.effect), "fade" === b ? this._fade() : this._slide()
        }, d.prototype.goto1 = function(b) {
            var c, d;
            if (c = a(this.element), this.data = a.data(this), void 0 === d && (d = this.options.pagination.effect), b > this.data.total ? b = this.data.total : 1 > b && (b = 1), "number" == typeof b) return "fade" === d ? this._fade(b) : this._slide(b);
            if ("string" == typeof b) {
                if ("first" === b) return "fade" === d ? this._fade(0) : this._slide(0);
                if ("last" === b) return "fade" === d ? this._fade(this.data.total) : this._slide(this.data.total)
            }
        }, d.prototype._setuptouch = function() {
            var b, c, d, e;
            return b = a(this.element), this.data = a.data(this), e = a(".slidesjs-control", b), c = this.data.current + 1, d = this.data.current - 1, 0 > d && (d = this.data.total - 1), c > this.data.total - 1 && (c = 0), e.children().removeClass("imgProdutoNext"), e.children(":eq(" + c + ")").addClass("imgProdutoNext"), e.children(":eq(" + c + ")").css({
                display: "block",
                left: this.options.width
            }), e.children(":eq(" + d + ")").css({
                display: "block",
                left: -this.options.width
            })
        }, d.prototype._touchstart = function(b) {
            var c, d;
            return c = a(this.element), this.data = a.data(this), d = b.originalEvent.touches[0], this._setuptouch(), a.data(this, "touchtimer", Number(new Date)), a.data(this, "touchstartx", d.pageX), a.data(this, "touchstarty", d.pageY), b.stopPropagation()
        }, d.prototype._touchend = function(b) {
            var c, d, e, f, g, h, i, j = this;
            return c = a(this.element), this.data = a.data(this), h = b.originalEvent.touches[0], f = a(".slidesjs-control", c), f.position().left > .5 * this.options.width || f.position().left > .1 * this.options.width && 250 > Number(new Date) - this.data.touchtimer ? (a.data(this, "direction", "previous"), this._slide()) : f.position().left < -(.5 * this.options.width) || f.position().left < -(.1 * this.options.width) && 250 > Number(new Date) - this.data.touchtimer ? (a.data(this, "direction", "next"), this._slide()) : (e = this.data.vendorPrefix, i = e + "Transform", d = e + "TransitionDuration", g = e + "TransitionTimingFunction", f[0].style[i] = "translateX(0px)", f[0].style[d] = .85 * this.options.effect.slide.speed + "ms"), f.on("transitionend webkitTransitionEnd oTransitionEnd otransitionend MSTransitionEnd", function() {
                return e = j.data.vendorPrefix, i = e + "Transform", d = e + "TransitionDuration", g = e + "TransitionTimingFunction", f[0].style[i] = "", f[0].style[d] = "", f[0].style[g] = ""
            }), b.stopPropagation()
        }, d.prototype._touchmove = function(b) {
            var c, d, e, f, g;
            return c = a(this.element), this.data = a.data(this), f = b.originalEvent.touches[0], d = this.data.vendorPrefix, e = a(".slidesjs-control", c), g = d + "Transform", a.data(this, "scrolling", Math.abs(f.pageX - this.data.touchstartx) < Math.abs(f.pageY - this.data.touchstarty)), this.data.animating || this.data.scrolling || (b.preventDefault(), this._setuptouch(), e[0].style[g] = "translateX(" + (f.pageX - this.data.touchstartx) + "px)"), b.stopPropagation()
        }, d.prototype.play = function(b) {
            var c, d, e, f = this;
            return c = a(this.element), this.data = a.data(this), !this.data.playInterval && (b && (d = this.data.current, this.data.direction = "next", "fade" === this.options.play.effect ? this._fade() : this._slide()), a.data(this, "playInterval", setInterval(function() {
                return d = f.data.current, f.data.direction = "next", "fade" === f.options.play.effect ? f._fade() : f._slide()
            }, this.options.play.interval)), e = a(".slidesjs-container", c), this.options.play.pauseOnHover && (e.unbind(), e.bind("mouseenter", function() {
                return f.stop()
            }), e.bind("mouseleave", function() {
                return f.options.play.restartDelay ? a.data(f, "restartDelay", setTimeout(function() {
                    return f.play(!0)
                }, f.options.play.restartDelay)) : f.play()
            })), a.data(this, "playing", !0), a(".slidesjs-play", c).addClass("slidesjs-playing"), this.options.play.swap) ? (a(".slidesjs-play", c).hide(), a(".slidesjs-stop", c).show()) : void 0
        }, d.prototype.stop = function(b) {
            var c;
            return c = a(this.element), this.data = a.data(this), clearInterval(this.data.playInterval), this.options.play.pauseOnHover && b && a(".slidesjs-container", c).unbind(), a.data(this, "playInterval", null), a.data(this, "playing", !1), a(".slidesjs-play", c).removeClass("slidesjs-playing"), this.options.play.swap ? (a(".slidesjs-stop", c).hide(), a(".slidesjs-play", c).show()) : void 0
        }, d.prototype._slide = function(b) {
            var c, d, e, f, g, h, i, j, k, l, m = this;
            return c = a(this.element), this.data = a.data(this), this.data.animating || b === this.data.current + 1 ? void 0 : (a.data(this, "animating", !0), d = this.data.current, b > -1 ? (b -= 1, l = b > d ? 1 : -1, e = b > d ? -this.options.width : this.options.width, g = b) : (l = "next" === this.data.direction ? 1 : -1, e = "next" === this.data.direction ? -this.options.width : this.options.width, g = d + l), -1 === g && (g = this.data.total - 1), g === this.data.total && (g = 0), this._setActive(g), i = a(".slidesjs-control", c), b > -1 && i.children(":not(:eq(" + d + "))").css({
                display: "none",
                left: 0,
                zIndex: 0
            }), i.children(":eq(" + g + ")").css({
                display: "block",
                left: l * this.options.width,
                zIndex: 10
            }), this.options.callback.start(d + 1), this.data.vendorPrefix ? (h = this.data.vendorPrefix, k = h + "Transform", f = h + "TransitionDuration", j = h + "TransitionTimingFunction", i[0].style[k] = "translateX(" + e + "px)", i[0].style[f] = this.options.effect.slide.speed + "ms", i.on("transitionend webkitTransitionEnd oTransitionEnd otransitionend MSTransitionEnd", function() {
                return i[0].style[k] = "", i[0].style[f] = "", i.children(":eq(" + g + ")").css({
                    left: 0
                }), i.children(":eq(" + d + ")").css({
                    display: "none",
                    left: 0,
                    zIndex: 0
                }), a.data(m, "current", g), a.data(m, "animating", !1), i.unbind("transitionend webkitTransitionEnd oTransitionEnd otransitionend MSTransitionEnd"), i.children(":not(:eq(" + g + "))").css({
                    display: "none",
                    left: 0,
                    zIndex: 0
                }), m.data.touch && m._setuptouch(), m.options.callback.complete(g + 1)
            })) : i.stop().animate({
                left: e
            }, this.options.effect.slide.speed, function() {
                return i.css({
                    left: 0
                }), i.children(":eq(" + g + ")").css({
                    left: 0
                }), i.children(":eq(" + d + ")").css({
                    display: "none",
                    left: 0,
                    zIndex: 0
                }, a.data(m, "current", g), a.data(m, "animating", !1), m.options.callback.complete(g + 1))
            }))
        }, d.prototype._fade = function(b) {
            var c, d, e, f, g, h = this;
            return c = a(this.element), this.data = a.data(this), this.data.animating || b === this.data.current + 1 ? void 0 : (a.data(this, "animating", !0), d = this.data.current, b ? (b -= 1, g = b > d ? 1 : -1, e = b) : (g = "next" === this.data.direction ? 1 : -1, e = d + g), -1 === e && (e = this.data.total - 1), e === this.data.total && (e = 0), this._setActive(e), f = a(".slidesjs-control", c), f.children(":eq(" + e + ")").css({
                display: "none",
                left: 0,
                zIndex: 10
            }), this.options.callback.start(d + 1), this.options.effect.fade.crossfade ? (f.children(":eq(" + this.data.current + ")").stop().fadeOut(this.options.effect.fade.speed), f.children(":eq(" + e + ")").stop().fadeIn(this.options.effect.fade.speed, function() {
                return f.children(":eq(" + e + ")").css({
                    zIndex: 0
                }), a.data(h, "animating", !1), a.data(h, "current", e), h.options.callback.complete(e + 1)
            })) : f.children(":eq(" + d + ")").stop().fadeOut(this.options.effect.fade.speed, function() {
                return f.children(":eq(" + e + ")").stop().fadeIn(h.options.effect.fade.speed, function() {
                    return f.children(":eq(" + e + ")").css({
                        zIndex: 10
                    })
                }), a.data(h, "animating", !1), a.data(h, "current", e), h.options.callback.complete(e + 1)
            }))
        }, d.prototype._getVendorPrefix = function() {
            var a, b, d, e, f;
            for (a = c.body || c.documentElement, d = a.style, e = "transition", f = ["Moz", "Webkit", "Khtml", "O", "ms"], e = e.charAt(0).toUpperCase() + e.substr(1), b = 0; f.length > b;) {
                if ("string" == typeof d[f[b] + e]) return f[b];
                b++
            }
            return !1
        }, a.fn[f] = function(b) {
            return this.each(function() {
                return a.data(this, "plugin_" + f) ? void 0 : a.data(this, "plugin_" + f, new d(this, b))
            })
        }
    })(jQuery, window, document)
}).call(this);
; 
$(window).load(function () {
    //
    //  por Rossano M. Szczepanski em 23/02/2015
    //
    //  A chamada do componente slider foi colocada dentro do evento load da página pois o mesmo deverá ser exibido
    //  somente quando todas as imagens já estiverem carregadas. Este procedimento corrige o bug da altura do banner 
    //  apenas na exibição em modo mobile.
    //
    // caso necessário incluir banner rotativo utilizar adicionar o script jquery.slides.min.js
    if ($.fn.slidesjs) {
        var imageHeight = 0;
        // se temos imagens -- Tem flash tbm
        if ($('[data-banner="centro"]>').length > 1) {

            // alteramos a visualização do bloco
            $('[data-banner="centro"] img').css('display', 'block');

            // informamos que o bloco é um slide
            $('[data-banner="centro"]').slidesjs();

            if ($('.fbits-banner-mobile-centro img').length && $('.fbits-banner-mobile-centro img').first().height() > 0) {
                imageHeight = $('.fbits-banner-mobile-centro img').first().height() + 10;

                $('.slidesjs-container', '[data-banner="centro"]').height(imageHeight);

                //Criado para o safari do ios, pois o mesmo fica redimensionando os banners.
                $(window).resize(function () {
                    $('.slidesjs-container', '[data-banner="centro"]').height(imageHeight);
                });
            }

            // se temos ao menos um item
            if ($('.fbits-banner-centro img').first()) {
                // se a altura é maior que 0
                if ($('.fbits-banner-centro img').first().height() > 0) {
                    $('.slidesjs-container', '[data-banner="centro"]').height($('.fbits-banner-centro img').first().height() + 10);
                }
                // se a largura é maior que 0
                if ($('.fbits-banner-centro img').first().width() > 0) {
                    $('.slidesjs-container', '[data-banner="centro"]').width($('.fbits-banner-centro img').first().width() + 10);
                }
            }

        }
        if ($("#imagensProduto") != null && $("#imagensProduto").children().length > 1)
            $("#imagensProduto").slidesjs(produtoArgs());

        //$('.fbits-produto-imagensMinicarrossel').slidesjs({
        //  navigation: { active: true, effect: "slide" },
        //  pagination: { active: false },
        //  width: 400,
        //  height: 40
        //});
    }

    
    var tipoCarrossel = null;//Seta a configuração do carrossel como linear por default  // Marlon 07/01/2016 - linear não existe no novo plugin, null deixa wrap desligado (que é o mesmo comportamento do linear da versão anterior)
    tipoCarrossel = $("#tipoCarrossel").val() != undefined ? $("#tipoCarrossel").val() : tipoCarrossel;
    if ($('div[id=carrossel-fabricantes]').length >= 1 && $.fn.jcarousel)
    {

        $('div[id=carrossel-fabricantes]').jcarousel({ wrap: tipoCarrossel });

        $('.bt-prev-fab')
            .on('jcarouselcontrol:active', function () {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function () {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '-=3'
            });

        $('.bt-next-fab')
            .on('jcarouselcontrol:active', function () {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function () {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '+=3'
            });
    }

    //Controle do carrossel do historico de já vistos
    if ($('.fbits-carrossel-historico').length > 0) {

        $('.fbits-carrossel-historico').jcarousel({ wrap: 'circular' });

        $('.jsCarrousel-prev-historico')
            .on('jcarouselcontrol:active', function () {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function () {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '-=2'
            });

        $('.jsCarrousel-next-historico')
            .on('jcarouselcontrol:active', function () {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function () {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '+=2'
            });
    }

    });


// CustomSelect - http://adam.co/lab/jquery/customselect/
; (function (a) { a.fn.extend({ customSelect: function (b) { var c = { customClass: null, mapClass: true, mapStyle: true }, d = function (f, i) { var e = f.find(":selected"), h = i.children(":first"), g = e.html() || "&nbsp;"; h.html(g); setTimeout(function () { i.removeClass("customSelectOpen") }, 60) }; if (typeof document.body.style.maxHeight === "undefined") { return this } b = a.extend(c, b); return this.each(function () { var e = a(this), g = a('<span class="customSelectInner" />'), f = a('<span class="customSelect" />'); f.append(g); e.after(f); if (b.customClass) { f.addClass(b.customClass) } if (b.mapClass) { f.addClass(e.attr("class")) } if (b.mapStyle) { f.attr("style", e.attr("style")) } e.addClass("hasCustomSelect").on("update", function () { d(e, f); var i = parseInt(e.outerWidth(), 10) - (parseInt(f.outerWidth(), 10) - parseInt(f.width(), 10)); f.css({ display: "inline-block" }); var h = f.outerHeight(); if (e.attr("disabled")) { f.addClass("customSelectDisabled") } else { f.removeClass("customSelectDisabled") } g.css({ width: i, display: "inline-block" }); e.css({ "-webkit-appearance": "menulist-button", width: f.outerWidth(), position: "absolute", opacity: 0, height: h, fontSize: f.css("font-size") }) }).on("change", function () { f.addClass("customSelectChanged"); d(e, f) }).on("keyup", function () { e.blur(); e.focus() }).on("mousedown", function () { f.removeClass("customSelectChanged").addClass("customSelectOpen") }).focus(function () { f.removeClass("customSelectChanged").addClass("customSelectFocus") }).blur(function () { f.removeClass("customSelectFocus customSelectOpen") }).hover(function () { f.addClass("customSelectHover") }, function () { f.removeClass("customSelectHover") }).trigger("update") }) } }) })(jQuery);

$('.ordenar select').customSelect();

/*
*Banners
*/
function produtoArgs() {
    var args = {
        width: 323,
        height: 323,
        navigation: {
            active: true
        },
        play: {
            active: false,
            auto: false
        }
    }
    return args;
}




/*
* Menu
*/
$('.menuPai').filter(function (index) { return index > 7 }).addClass('rightMenu'); // Joga últimos submenus para esquerda
$('.menuPai:first').addClass('first');

/*
* Paginação
*/
$('.paginacao').find('li:first').addClass('first');
$('.paginacao').find('li:last').addClass('last');

$('.paginacao').find('li:first').each(function () {
    if ($(this).find('a').html() == '&lt;') {
        $(this).addClass('prev');
    }
});

$('.paginacao').find('li:last').each(function () {
    if ($(this).find('a').html() == '&gt;') {
        $(this).addClass('next');
    }
});


/*
* Spot
*/
// Troca de imagens nos thumbnails do spot
$('.spotHover').on('hover', '.jsReplaceImgSpot', function (ev) {
    var spotImg = $(this).parents('.spot').find('.jsImgSpot.imagem-primaria');
    switch (ev.type) {
        case 'mouseenter':
            spotImg.attr('src', $(this).attr('data-image'));
            break;
        case 'mouseleave':
            spotImg.attr('src', spotImg.attr('data-original'));
            break;
    }
});

// Carrossel quando existem muitos thumbs no spot
var isIE = document.all && document.querySelector && !document.addEventListener; // Solução alternativa p/ ie8
$('.spotHover').hover(function () {
    if (isIE)
        $(this).find('.spotHoverPanel').show();
    if ($(this).find('li').length > 4 && !$(this).hasClass('jsCarouselReady')) {
        $(".produtosSimilares").css("position", "relative");
        $(".produtosSimilares > ul").css("position", "relative");
        $(".produtosSimilares > ul > li").css("height", "50px");
        $(this).find('.spotHoverPanel').prepend('<div class="jsSpotPrev"/><div class="jsSpotNext"/>');
        var back = $(this).find('.jsSpotPrev');
        var go = $(this).find('.jsSpotNext');
        var tipoCarrossel = null;//Seta a configuração do carrossel como linear por default // Marlon 07/01/2016 - linear não existe no novo plugin, null deixa wrap desligado (que é o mesmo comportamento do linear da versão anterior)
        tipoCarrossel = $("#tipoCarrossel").val() != undefined ? $("#tipoCarrossel").val() : tipoCarrossel;
        $(this).find('.jsProdutosSimilares').jcarousel({ animation: 'slow', wrap: tipoCarrossel, vertical: true });

        back
            .on('jcarouselcontrol:active', function () {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function () {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '-=1'
            });

        go
            .on('jcarouselcontrol:active', function () {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function () {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '+=1'
            });

        //$(this).addClass('jsCarouselReady');
    }
}, function () {
    if (isIE)
        $(this).find('.spotHoverPanel').hide();
});

/*
* Placeholder
*/
// Adiciona funcionalidade Array.filter() em browsers antigos
if (!Array.prototype.filter) { Array.prototype.filter = function (fun) { "use strict"; if (this === void 0 || this === null) throw new TypeError(); var t = Object(this); var len = t.length >>> 0; if (typeof fun !== "function") throw new TypeError(); var res = []; var thisp = arguments[1]; for (var i = 0; i < len; i++) { if (i in t) { var val = t[i]; if (fun.call(thisp, val, i, t)) res.push(val); } } return res; }; }

// Analisa se browser suport placeholders, e se não, o faz por JS
function placeholderIsSupported() {
    var test = document.createElement('input');
    return ('placeholder' in test);
}
if (!placeholderIsSupported()) { $("[placeholder]").focus(function () { var a = $(this); if (a.val() == a.attr("placeholder")) { a.val(""); a.removeClass("placeholder") } }).blur(function () { var a = $(this); if (a.val() == "" || a.val() == a.attr("placeholder")) { a.addClass("placeholder"); a.val(a.attr("placeholder")) } }).blur(); $("[placeholder]").parents("form").submit(function () { $(this).find("[placeholder]").each(function () { var a = $(this); if (a.val() == a.attr("placeholder")) { a.val("") } }) }) };

if (typeof String.prototype.trim !== 'function') {
    String.prototype.trim = function () {
        return this.replace(/^\s+|\s+$/g, '');
    }
}


; 

if (fbits.google.analytics.id != undefined && fbits.google.analytics.id != '') {
    var _gaq = _gaq || [];

    // Realiza o traking para a fbits
    _gaq.push(['fbits._setAccount', fbits.google.analytics.id]);
    _gaq.push(['fbits._setDomainName', fbits.google.analytics.domain]);
    _gaq.push(['fbits._trackPageview']);

    // Chamada asyncrona para o script do google analytics
    (function () {
        var ga = document.createElement('script');
        ga.type = 'text/javascript';
        ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ga, s);
    })();
}

; 
(function ($) {
	var timer;

	function trackLeave(ev) {
		if (ev.pageY > 0) {
			return;
		}

		if (timer) {
			clearTimeout(timer);
		}

		if ($.exitIntent.settings.sensitivity <= 0) {
			$.event.trigger('exitintent');
			return;
		}

		timer = setTimeout(
			function() {
				timer = null;
				$.event.trigger('exitintent');
			}, $.exitIntent.settings.sensitivity);
	}

	function trackEnter() {
		if (timer) {
			clearTimeout(timer);
			timer = null;
		}
	}

	$.exitIntent = function(enable, options) {
		$.exitIntent.settings = $.extend($.exitIntent.settings, options);

		if (enable == 'enable') {
			$(window).mouseleave(trackLeave);
			$(window).mouseenter(trackEnter);
		} else if (enable == 'disable') {
			trackEnter(); // Turn off any outstanding timer
			$(window).unbind('mouseleave', trackLeave);
			$(window).unbind('mouseenter', trackEnter);
		} else {
			throw "Invalid parameter to jQuery.exitIntent -- should be 'enable'/'disable'";
		}
	}

	$.exitIntent.settings = {
		'sensitivity': 300
	};

})(jQuery);

