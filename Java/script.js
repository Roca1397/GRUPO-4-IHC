window.onscroll = function () {
    // Almacena los datos cuando baja
    scrool = document.documentElement.scrollTop;

    header = document.getElementById("header");

    if (scrool > 20) {
        header.classList.add('nav_mod');
    } else if (scrool < 20) {
        header.classList.remove('nav_mod');
    }
}

document.getElementById("Inicio").addEventListener("click", borrar_menu);
document.getElementById("Planes").addEventListener("click", borrar_menu);
document.getElementById("Servici").addEventListener("click", borrar_menu);
document.getElementById("Nosot").addEventListener("click", borrar_menu);
document.getElementById("App").addEventListener("click", borrar_menu);
document.getElementById("Contactanos").addEventListener("click", borrar_menu);

menu = document.getElementById("header");
body = document.getElementById("container_all");
nav = document.getElementById("nav");

function borrar_menu() {
    menu.classList.remove('moverconte');
    body.classList.remove('moverconte');
    nav.classList.remove('move_nav');
}

var btnAbrirPopup = document.getElementById('Regsitro'),
    overlay = document.getElementById('overlay'),
    popup = document.getElementById('caja_trasera');

btnAbrirPopup.addEventListener('click', function () {
    overlay.classList.add('active');
    popup.classList.add('active');
});

// jQuery para la animación de desplazamiento suave
$(document).ready(function () {
    var ir_a = $(".desplazar");

    ir_a.click(function (e) {
        e.preventDefault();
        $("html, body").animate({
            scrollTop: $(this.hash).offset().top
        }, 1000);
    });
});