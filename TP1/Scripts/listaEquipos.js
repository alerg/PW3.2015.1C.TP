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

function cargarTabla() {
    var incluirDeTorneosInactivos = $('#chkMostrarInactivos').prop("checked");
    $.ajax({
        url: "http://localhost:4372/WebServiceTorneo.asmx/ObtenerEquipos",
        dataType: 'json',
        method:'POST',
        data: {
            'incluirDeTorneosInactivos': incluirDeTorneosInactivos
        }, success: crearLista
    });
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
    }
);