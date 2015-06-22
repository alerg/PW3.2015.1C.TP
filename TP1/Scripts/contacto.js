function validarLongitudNombre(oSrc, args) {
    var longitudMaxima = $('[data-interactive="txtNombre"]').attr("maxlength") || null;
    validar(args, oSrc, longitudMaxima);
}

function validarLongitudEmail(oSrc, args) {
    var longitudMaxima = $('[data-interactive="txtEmail"]').attr("maxlength") || null;
    validar(args, oSrc, longitudMaxima);
}

function validarLongitudMensaje(oSrc, args) {
    var longitudMaxima = Number($('[data-interactive="txtAMensaje"]').attr("rows")) + Number($('[data-interactive="txtAMensaje"]').attr("cols"));
    validar(args, oSrc, longitudMaxima);
}