function validarLongitudNombre(oSrc, args) {
    var longitudMaxima = $('[data-interactive="txtNombre"]').attr("maxlength") || null;
    validar(args, oSrc, longitudMaxima);
}