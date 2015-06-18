$(document).ready(
    function () {
        $('[name="btnCrear"]').click(function () {
            $('[name="hdnIdTorneo"]').val("");
            $('[name="chkboxActive"] input').prop("checked", "checked");
            $('[data-interactive="nombre"]').val("");
            $('[data-interactive="divWarning"]').hide();
            
            $('div.formulario').show();
        });
    }
);