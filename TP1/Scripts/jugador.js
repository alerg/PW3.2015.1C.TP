function validarLongitudNombre(oSrc, args) {
    var longitudMaxima = $('[data-interactive="txtNombre"]').attr("maxlength") || null;
    validar(args, oSrc, longitudMaxima);
}

function validarLongitudApellido(oSrc, args) {
    var longitudMaxima = $('[data-interactive="txtApellido"]').attr("maxlength") || null;
    validar(args, oSrc, longitudMaxima);
}