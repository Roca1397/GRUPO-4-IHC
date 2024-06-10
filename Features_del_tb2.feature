Feature: US01 - Acceso a información de la enfermedad

    Como usuario, 
    quiero tener acceso a información sobre la enfermedad y sus síntomas
    para poder estar informado 

Scenario: E1: Ingresar al apartado de mas detalles de la especie

    Given que el usuario se encuentra en el landing page 
    And se dirige a la barra lateral
    When da click al boton de <informacion del dengue>
    Then el sistema te dirige a una pestaña de informacion detallada con las opciones de <leer mas> y <saber mas>.


Examples: Input
    | Barra lateral            | Opción             | 
    | Informacion del dengue   | Leer mas/Saber mas | 

Examples: Output

    |Se despliegua la información solicitada por el usuario|




Feature: US11 -  Funcionalidad opcion foro 

    Como usuario, 
    quiero tener la opción de aclarar dudas o comentar sobre información y novedades
    recientes sobre el dengue con la comunidad de la aplicación.

Scenario: E1: Ingresar al apartado de foro

    Given que el usuario se encuentra en la barra lateral de la aplicación
    When da click a la opción <foro comunitario>
    Then el sistema muestra comentarios de los usuarios de la aplicación
    And te permite buscar según filtro

    Examples: Input
        | Barra lateral     | Filtro                      | Opción            |
        | Foro comunitario  | Mas reciente/ Mas destacado | ver mas/comentar  |

    Examples: Output

        |Se muestra los comentarios segun el filtro seleccionado      | Se muestra mas informacion del comentario |
        |Se muestra una interface para que el usuario pueda comentar  |

Scenario: E2: Responder a comentarios

    Given que el usuario se encuentra en la interfaz de foro
    And filtro los comentarios segun su preferencia
    When de click a la opción <comentar>
    Then el sistema mostrará una interface para responder al usuario
    And podra opinar y calificar el comentario seleccionado

    Examples:Input
        | Filtro                      | Opción    | opcion               |
        | Mas reciente/Mas destacado  | Comentar  | Calificar este post  | 

    Examples:Output
       |El sistema muestra un menu para responder el comentario seleccionado, ademas podra calificarlo|






Feature: US12 - Creacion del apartado registro de usuario

    Como usuario, 
    quiere tener una pantalla de registro clara y facil de usar para 
    crear una cuenta y acceder a todas las funciones de la aplicacion

Scenario: E1 : Creación de cuenta 
     
     Given que el usuario esta en la página inicial de la app
     And no esta registrado
     When le de clic al boton <Registrate>
     Then el sistema le mostrará un formulario para que rellene sus datos personales



     Examples:Input
         | Pagina inicial                | opcion       | 
         | Inicio de sesion/Registrarse  | Registrarse  |
    
    Example: Output
         |El sistema desplegara un formulario para rellenar sus datos personales como nombre completo, email, etc,|
