/*
var jsonp = {
    callbackCounter: 0,

    fetch: function (url, callback) {
        var fn = 'JSONPCallback_' + this.callbackCounter++;
        window[fn] = this.evalJSONP(callback);
        url = url.replace('=JSONPCallback', '=' + fn);

        var scriptTag = document.createElement('SCRIPT');
        scriptTag.src = url;
        document.getElementsByTagName('HEAD')[0].appendChild(scriptTag);
    },

    evalJSONP: function (callback) {
        return function (data) {
            var validJSON = false;
            if (typeof data == "string") {
                try { validJSON = JSON.parse(data); } catch (e) {

                }
            } else {
                validJSON = JSON.parse(JSON.stringify(data));
                window.console && console.warn(
                'response data was not a JSON string');
            }
            if (validJSON) {
                callback(validJSON);
            } else {
                throw ("JSONP call returned invalid or empty JSON");
            }
        }
    }
    */

var success = function(data){
    crearLista(data);
}

function cargarTabla() {
    var incluirDeTorneosInactivos = $('#chkMostrarInactivos').prop("checked");
    var pepe = function (data) { alert(data); }

    $.ajax({
        url: "http://localhost:4681/Service1.asmx/ObtenerEquipos",
        dataType: 'jsonp',
        data: {
            'incluirDeTorneosInactivos': incluirDeTorneosInactivos
        }
    });

/*    $.ajax({
        method: 'POST',
        crossDomain: true,
       headers: { 'Access-Control-Allow-Origin': '*' },
       dataType: 'jsonp',
       jsonp: "callback",
        jsonpCallback: 'pepe',
       contentType: "application/json; charset=utf-8",
        url: "http://localhost:4681/Service1.asmx/ObtenerEquipos",
        data: { 'incluirDeTorneosInactivos': incluirDeTorneosInactivos },
        success: function (json) {
            var tbody = document.createElement('tbody');
            for (var index in json.equipos) {
                var tr = document.createElement('tr');
                var td = document.createElement('td').innterText(equipos[index].id);
                tr.appendChild(td);
                td = document.createElement('td').innterText(equipos[index].nombre);
                tr.appendChild(td);
                td = document.createElement('td').innterText(equipos[index].idTorneo);
                tr.appendChild(td);
                tbody.appendChild(tr);
            }
        }
    });
*/
}

function crearLista(json) {
    var tbody = document.createElement('tbody');
    var equipos = json.equipos;
    for (var index in equipos) {
        var tr = document.createElement('tr');
        var td = document.createElement('td');
        td.innerText = equipos[index].IdEquipo;
        tr.appendChild(td);
        td = document.createElement('td');
        td.innerText = equipos[index].Nombre;
        tr.appendChild(td);
        td = document.createElement('td');
        td.innerText = equipos[index].IdTorneo;
        tr.appendChild(td);
        $(tbody).append(tr);
    }
    $('[data-interactive="tabla"] tbody').remove();
    $('[data-interactive="tabla"]').append(tbody);
}

$(document).ready(
    function () {
        $('#btnFiltrar').click(function () {
            $('#chkMostrarInactivos').click();
            if ($(this).hasClass('active')) {
                $(this).prop('title', 'Mostrar torneos inactivos');
            } else {
                $(this).prop('title', 'Ocultar torneos inactivos');
            }
        });
        $('#chkMostrarInactivos').change(cargarTabla);
        cargarTabla();
        /*        var incluirDeTorneosInactivos = $('[name="radActivo"]').val() == "0";
        var url = "http://localhost:4681/Service1.asmx/ObtenerEquipos?count=5&callback=JSONPCallback&incluirDeTorneosInactivos=" + incluirDeTorneosInactivos;
        jsonp.fetch(url, crearLista);
        */
    }
);


