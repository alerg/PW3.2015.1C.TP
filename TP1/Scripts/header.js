$(document).ready(
    function () {
        if ($('#currentPage')) {
            switch ($('#currentPage').val()) {
                case 'jugadores':
                    $('.dropdown#jugadores').addClass('active');
                    break;
                case 'torneos':
                    $('.dropdown#torneos').addClass('active');
                    break;
                case 'equipos':
                    $('.dropdown#equipos').addClass('active');
                    break;
                case 'lista':
                    $('.dropdown#lista').addClass('active');
                    break;
                case 'contacto':
                    $('.dropdown#contacto').addClass('active');
                    break;

            }
        }
    }
);