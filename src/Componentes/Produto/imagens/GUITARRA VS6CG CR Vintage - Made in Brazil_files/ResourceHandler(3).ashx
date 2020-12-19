; 
/**
* @module Fbits.Framework
*/
//Declara��o dos namespaces
var Fbits = Fbits || { __namespace: true };

//Declara��o das classes
Fbits.Framework = Fbits.Framework || {
    Validation: function () {
        if (!(this instanceof Fbits.Framework.Validation)) {
            return new Fbits.Framework.Validation();
        }
    },
    Cookie: function () {
        if (!(this instanceof Fbits.Framework.Cookie)) {
            return new Fbits.Framework.Cookie();
        }
    },
    Message: function () {
        if (!(this instanceof Fbits.Framework.Message)) {
            return new Fbits.Framework.Message();
        }
    },
    UrlUtils: function () {
        if (!(this instanceof Fbits.Framework.UrlUtils)) {
            return new Fbits.Framework.UrlUtils();
        }
    },
    Input: function () {
        if (!(this instanceof Fbits.Framework.Input)) {
            return new Fbits.Framework.Input();
        }
    },
    __namespace: true
};

/**
* Para identificar as classes no visual studio
*/
Fbits.Framework.Validation.__class = true;
Fbits.Framework.Cookie.__class = true;
Fbits.Framework.Input.__class = true;

/**
* Classe respons�vel pela manuten��o de valida��es.
* @Class
*/
Fbits.Framework.Validation.prototype = {
    /**
    * Verifica se um determinado caracter � um numeral.
    * @param descricao
    * @method validarCupomDesconto
    */
    soNumeros: function (event) {
        var charCode = (event.keyCode ? event.keyCode : event.which);
        //Permite teclas backspace, tab, enter e escape.
        var allowedChars = [8, 9, 27, 13];
        var i = -1;
        var allowed = false;
        for (i = 0; i < allowedChars.length; i++) {
            if (allowedChars[i] === charCode) {
                allowed = true;
                break;
            }
        }

        //Permite n�meros.
        if (!allowed && charCode >= 48 && charCode <= 57) {
            allowed = true;
        }

        //Caso tecla n�o permitida retorna false.
        if (!allowed) {
            event.cancelBubble = true
            event.returnValue = false;
            return false;
        }
    },
    /**
  * Verifica se um determinado caracter � um numeral. Essa function aceita uma lista de caracteres (em forma numeral)
  * que ser�o consideradas exce��es e ser�o permitidos
  * @param caracteresPermitidos Lista de caracteres permitidos exemplo: [8, 9, 27, 13] para permitir enter, backspace tab e escape
  * @method soNumerosParam
  */
    soNumerosParam: function (event, caracteresPermitidos) {
        try {
            var charCode = (event.keyCode ? event.keyCode : event.which);
            //Permite teclas backspace, tab, enter e escape.
            allowedChars = [8, 9, 27, 13]
            if (caracteresPermitidos != undefined) {
                for (var i = 0; i < caracteresPermitidos.length; i++) {
                    allowedChars.push(caracteresPermitidos[i]);
                }
            }
            var i = -1;
            var allowed = false;
            for (i = 0; i < allowedChars.length; i++) {
                if (allowedChars[i] === charCode) {
                    allowed = true;
                    break;
                }
            }

            //Permite n�meros.
            if (!allowed && charCode >= 48 && charCode <= 57) {
                allowed = true;
            }

            //Caso tecla n�o permitida retorna false.
            if (!allowed) {
                event.cancelBubble = true
                event.returnValue = false;
                return false;
            }
        } catch (e) {
            console.log("Houve um erro na funcao 'soNumerosParam(event,caracteresPermitidos);' provavelmente faltou passar algum parametro");
        }
        
    }
}

/**
 * Exten��o para formatar numeros em money BRL por default.
 * @param c => n�mero de casas decimais, para centavos..
 * @param d => separador de centavos.
 * @param t => separador de milhar.
 * @method formatMoney
 * @Example. Number(1000).formatMoney(2,'.', ',') result=> 1,000.00
 * @Example. Number(1000).formatMoney() result=> 1.000,00
 */
Number.prototype.formatMoney = function (c, d, t) {
    var n = this,
      c = isNaN(c = Math.abs(c)) ? 2 : c,
      d = d == undefined ? "," : d,
      t = t == undefined ? "." : t,
      s = n < 0 ? "-" : "",
      i = parseInt(n = Math.abs(+n || 0).toFixed(c)) + "",
      j = (j = i.length) > 3 ? j % 3 : 0;
    return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
};

Fbits.Framework.Cookie.setCookie = function (cname, cvalue, exdays, cdomain) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toGMTString();
    cdomain = (typeof cdomain === 'undefined') ? location.host.substr(location.host.indexOf("."), location.host.length) : cdomain;
    document.cookie = cname + "=" + cvalue+ ";" + expires + ";domain=" + cdomain + ";path=/";

}


Fbits.Framework.Cookie.getCookie = function (cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i].trim();
        if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
    }
    return "";
}

Fbits.Framework.Cookie.setCookieConfig = function (cname, cvalue, exdays) {
    var cookieConfig = this.getCookie('Config').split('|');
    cookieConfig = cookieConfig ? cookieConfig : [];
    var contemConfig = this.getCookieConfig(cname) ? true : false;

    if (contemConfig) {
        for (var i = 0; i < cookieConfig.length; i++) {
            if (cookieConfig[i] == cname && cookieConfig[i + 1]) {
                cookieConfig[i + 1] = cvalue;
            }
        }
        this.setCookie('Config', cookieConfig.join('|'), exdays);
    }
    else
        this.setCookie('Config', cookieConfig.join('|') + '|' + cname + '|' + cvalue, exdays);
}

Fbits.Framework.Cookie.getCookieConfig = function (cname) {
    var cookieConfig = this.getCookie('Config').split('|');
    for (var i = 0; i < cookieConfig.length; i++) {
        if (cookieConfig[i] == cname && cookieConfig[i + 1]) {
            return cookieConfig[i + 1];
        }
    }
    return "";
}


Fbits.Framework.Message.error = function (selector, message) {
    var obj = $(selector);
    if (obj != undefined) {
        $.each(obj, function (index, item) {
            $(item).addClass('error');
            $(item).stop().html(message).fadeTo('slow', 1.0).delay(7000).fadeOut('slow');
        });
    }
}

/**
* M�todo utilizado para recuperar a query string de uma determinada url.
*/
Fbits.Framework.UrlUtils.getUrlVars = function getUrlVars(url) {
    if (url == undefined || url == '')
        url = window.location.href;

    var vars = [], hash;
    var hashes = url.slice(url.indexOf('?') + 1).split('&');
    for (var i = 0; i < hashes.length; i++) {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}

Fbits.Framework.UrlUtils.Builder = function (url) {
    var self = this;
    var _url = url;
    var _ps = [];

    this.set = function (p, v) {
        _ps.push({
            param: p,
            value: v
        }); 
    }

    this.build = function () {
        var r = String(_url + '?');
        _ps.forEach(function (e, i) {
            r += (i > 0 ? '&' : '') + e.param + '=' + encodeURI(String(e.value));
        })
        return r;
    }
}

Fbits.Framework.Input.TriggerChange = function (id) {
    var el = $(id)[0];
    el.focus();
    var evt = document.createEvent("HTMLEvents");
    evt.initEvent("change", false, true);
    el.dispatchEvent(evt);
};

$(function () {
    $(".summary").click(function (event) {
        $(this).parent().find('.details-content').slideToggle(200);
        $(this).parent().find('.details-content').prev().toggleClass("opened");
        
        event.stopImmediatePropagation();
    });

    $('[data-enter-to-click]').each(function (index, item) {
        var elementid = $(this).attr('data-enter-to-click');
        $(this).on('keyup', function () {
            if (event.keyCode == 13)
                $('[id="' + elementid + '"]').click();
        });
    });
});

; 
$(function () {

  if (Fbits.Framework.Cookie.getCookieConfig("nohead") === '0') {
    $('#fixed-bar').addClass("nohead");
  }

  $(window).scroll(function () {
    fixedSearch()
  });


  $("#fixed-bar-close").click(function () {
    $(this).parents('#fixed-bar').toggleClass(function () {
      if ($(this).hasClass("nohead")) {
        Fbits.Framework.Cookie.setCookieConfig("nohead", 1);
        return "nohead";
      } else {
        Fbits.Framework.Cookie.setCookieConfig("nohead", 0);
        return "nohead";
      }
    });
    return false
  });

});


function fixedSearch() {
    var el = $('#fixed-bar');
    if (el.length > 0) {
        if (el.offset().top > 150) {
            el.removeClass("hide");
        } else {
            el.addClass("hide");
        }
    }
}
