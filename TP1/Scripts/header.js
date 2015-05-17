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
            }
        }
    }
);