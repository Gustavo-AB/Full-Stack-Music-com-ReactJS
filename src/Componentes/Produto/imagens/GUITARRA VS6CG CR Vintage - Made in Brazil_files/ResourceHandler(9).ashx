; 
/*
Dependência: Fbits.Cookie.js
Não tem dependência de JQuery
*/
var Fbits = Fbits || { __namespace: true };

//Declaração das classes
Fbits.Midia = Fbits.Midia || {
    nomeCookie: 'Fbits.Parceiro',
    expiracaoCookie: 365,
    parceiroAtivo: '',
    parceiroUltimaData: '',
    directUltimaData: '',
	urlTrackeada: '',
    init: function () {
        //Inicializa recuperando e populando os dados.
        Fbits.Midia.getDados();
        //Caso detectar algum parceiro ou direct
        if (Fbits.Midia.verificaParceiro()) {
            //Grava no cookie
            Fbits.Midia.setDados();
        }

    },
    //Seta os dados no cookie
    setDados: function () {
        var obj = {
            parceiroAtivo: Fbits.Midia.getParceiroAtivo(),
            parceiroUltimaData: Fbits.Midia.getUltimaData(),
            directUltimaData: Fbits.Midia.getDirectUltimaData(),
			urlTrackeada: Fbits.Midia.getUrlTrackeada()
        }
        Fbits.Cookie.Set(Fbits.Midia.nomeCookie, JSON.stringify(obj), Fbits.Midia.expiracaoCookie);
    },
    //Recupera os dados e popula
    getDados: function () {
        var cookie = Fbits.Cookie.Get(Fbits.Midia.nomeCookie);
        if (cookie) {
            var obj = JSON.parse(cookie);
            Fbits.Midia.setParceiroAtivo(obj.parceiroAtivo);
            Fbits.Midia.setUltimaData(obj.parceiroUltimaData);
            Fbits.Midia.setDirectUltimaData(obj.directUltimaData);
			Fbits.Midia.setUrlTrackeada(obj.urlTrackeada);
            return obj;
        }
        return false;
    },
    //Retorna o parceiroAtivo
    getParceiroAtivo: function () {
        return Fbits.Midia.parceiroAtivo.toLowerCase();
    },
    //Seta o parceiroAtivo
    setParceiroAtivo: function (parceiro) {
        if(parceiro){
            Fbits.Midia.parceiroAtivo = parceiro;
        }
    },
    //Retorna Parametro da querystring
    getParameter: function (parameter,url) {
        var loc = location.search.substring(1, location.search.length);
		if(url){
			loc='';
			if(url.indexOf('?')>-1){
				loc = url.substring(url.indexOf('?')+1,url.length);
			}
		}
        var param_value = false;
        var params = loc.split("&");
        for (i = 0; i < params.length; i++) {
            param_name = params[i].substring(0, params[i].indexOf('='));
            if (param_name == parameter) {
                param_value = params[i].substring(params[i].indexOf('=') + 1)
            }
        }
        if (param_value) {
            return param_value;
        }
        else {
            return false;
        }
    },
    //Verifica se a url esta trakeada e armazena os dados.
    verificaParceiro: function () {
        var utm = Fbits.Midia.getParameter('utm');
        var source = Fbits.Midia.getParameter('source');
        var utm_source = Fbits.Midia.getParameter('utm_source');
        var googleAnuncio = Fbits.Midia.getParameter('gclid');

        var direct = document.referrer == '' ? 'Direct' : false;

        var referrerHost = Fbits.Midia.removeProtocolo(document.referrer);
        var googleOrganic = /www.google/.test(referrerHost) ? 'Google Organic' : false;
        var yahooOrganic = /search.yahoo/.test(referrerHost) ? 'Yahoo Organic' : false;
        var bingOrganic = /www.bing/.test(referrerHost) ? 'Bing Organic' : false;
        var googleAds = /googleads/.test(referrerHost) ? 'Google Ads' : false;
        var trakeado = false;
        
        if (googleAds) {
            Fbits.Midia.setParceiroAtivo(googleAds);
            trakeado = true;
        }
        if (googleOrganic) {
            Fbits.Midia.setParceiroAtivo(googleOrganic);
            trakeado = true;
        }
        if (yahooOrganic) {
            Fbits.Midia.setParceiroAtivo(yahooOrganic);
            trakeado = true;
        }
        if (bingOrganic) {
            Fbits.Midia.setParceiroAtivo(bingOrganic);
            trakeado = true;
        }
        if (googleAnuncio) {
            Fbits.Midia.setParceiroAtivo('Google Anuncio');
            trakeado = true;
        }
        if (source) {
            Fbits.Midia.setParceiroAtivo(source);
            trakeado = true;
        }
        if (utm) {
            Fbits.Midia.setParceiroAtivo(utm);
            trakeado = true;
        }
        if (utm_source) {
            Fbits.Midia.setParceiroAtivo(utm_source);
            trakeado = true;
        }
        //Parceiro
        if (trakeado) {
            Fbits.Midia.setUltimaData(new Date().toUTCString());
			Fbits.Midia.setUrlTrackeada(window.location.href);
        }
        //Direct
        if (direct && trakeado==false) {
            trakeado = true;
            Fbits.Midia.setDirectUltimaData(new Date().toUTCString());
        }
        return trakeado;
    },
	//Seta a ultima url que foi trakeado
    setUrlTrackeada: function (urlTrackeada) {
        if (urlTrackeada) {
            Fbits.Midia.urlTrackeada = urlTrackeada;
        }
    },
    //Seta a ultimaData que foi trakeado
    setUltimaData: function (ultimaData) {
        if (ultimaData) {
            Fbits.Midia.parceiroUltimaData = new Date(ultimaData).toUTCString();
        }
    },
    //Seta a ultimaData que foi utilizado Direct
    setDirectUltimaData: function (ultimaData) {
        if (ultimaData) {
            Fbits.Midia.directUltimaData = new Date(ultimaData).toUTCString();
        }
    },
	//Retorna a url que foi trackeada
	getUrlTrackeada: function () {
        if (Fbits.Midia.urlTrackeada) {
            return Fbits.Midia.urlTrackeada;
        }
        return false;
    },
    //Retorna a ultima data que foi trakeado
    getUltimaData: function () {
        if (Fbits.Midia.parceiroUltimaData) {
            return new Date(Date.parse(Fbits.Midia.parceiroUltimaData))
        }
        return false;
    },
    //Retorna a ultima data que foi Direct
    getDirectUltimaData: function () {
        if (Fbits.Midia.directUltimaData) {
            return new Date(Date.parse(Fbits.Midia.directUltimaData))
        }
        return false;
    },
    //Retorna em dias a ultima vez que foi trakeado
    getDiasUltimaData: function () {
        if (Fbits.Midia.getUltimaData()) {
            var timeDiff = Math.abs(Fbits.Midia.getUltimaData().getTime() - new Date().getTime());
            var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));
            return diffDays;
        }
        return 0;
    },
    //Remove http:// e https://
    removeProtocolo: function (href) {
        return href.replace(/.*?:\/\//g, "");
    }
}
//Chama o metodo que inicializa
Fbits.Midia.init();


