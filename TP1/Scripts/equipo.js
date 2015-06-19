$(document).ready(
    function () {
        $('[name="btnCrear"]').click(function () {
            $('[name="hdnIdTorneo"]').val("");
            $('[name="chkboxActive"] input').prop("checked", "checked");
            $('[data-interactive="txtNombre"]').val("");
            $('[data-interactive="txtMonto"]').val("");
            $('[data-interactive="ddlTorneo"]').val("0");
            $('[data-interactive="divWarning"]').hide();
            
            $('div.formulario').show();
        });
    }
);