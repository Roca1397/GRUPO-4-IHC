Feature: US01 - Acceso a información de la enfermedad

    Como usuario, 
    quiero tener acceso a información sobre la enfermedad y sus síntomas
    para poder estar informado acerca de mi estado de salud

Scenario: E1: Ingresar al apartado de mas detalles 

    Given que el usuario se encuentra en el landing page 
    And se dirige a la barra lateral
    When da click al boton de <informacion del dengue>
    Then el sistema te dirige a una pestaña de informacion detallada con las opciones de <leer mas> y <saber mas>.


Examples: Input
    | Barra lateral            | Opción             | 
    | Informacion del dengue   | Leer mas/Saber mas | 

Examples: Output

    |Se despliegua la información solicitada por el usuario|


Feature: US04 - Acceso según suscripción

   Como usuario,
    quiero tener acceso a funcionalidades acorde a mi tipo de suscripción para 
    disfrutar de una experiencia personalizada.



Scenario: E1: Selección de Tipo de Suscripción

    Given El usuario ha iniciado sesión en la aplicación Dengue Code 
    And  se encuentra en la pantalla de configuración
    When El usuario selecciona la opción <Suscripcion> desde el menú de configuración
    Then el sistme mostrar los distintos planes y beneficios de los que dipone la aplicación


Examples: Input
    | Barra lateral | Opción       | 
    | configuración | Suscripciones| 

Examples: Output

    |Se desplieguan los dintintos servicios con sus respectivos beneficios que ofrece la aplicación|




Feature: US10 -  Funcionalidad opcion foro 

    Como usuario, quiero contar con una funcionalidad de foor para tener la opción de aclarar dudas o comentar sobre información y novedades
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






Feature: US11 - Creacion del apartado registro de usuario

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




Feature: US13 - Manejo de interfaces de la aplicación

  Como usuario de Dengue Code quiero usar un asistente por voz para navegar rápidamente a través de cada funcionalidad de la aplicación

Scenario: E1 : Acceso funcionalidad Mapa Calor
     
     Given que el usuario se encuentra en la pantalla inicial de la aplicación
     And activa la asistencia por voz
     When consulte por la funcionalidad Mapa Calor
     Then el sistema redirigirá al usuario a dicha funcionalidad

Scenario: E2 : Acceso funcionalidad Métodos de Prevención
     
     Given que el usuario se encuentra en la pantalla inicial de la aplicación
     And activa la asistencia por voz
     When consulte por la funcionalidad Métodos de Prevención
     Then el sistema redirigirá al usuario a dicha funcionalidad

Scenario: E3 : Acceso funcionalidad Métodos de Noticias
     
     Given que el usuario se encuentra en la pantalla inicial de la aplicación
     And activa la asistencia por voz
     When consulte por la funcionalidad Métodos de Noticias
     Then el sistema redirigirá al usuario a dicha funcionalidad

Scenario: E4 : Acceso funcionalidad Métodos de Información
     
     Given que el usuario se encuentra en la pantalla inicial de la aplicación
     And activa la asistencia por voz
     When consulte por la funcionalidad Métodos de Información
     Then el sistema redirigirá al usuario a dicha funcionalidad

Scenario: E5 : Acceso funcionalidad Métodos de Foro
     
     Given que el usuario se encuentra en la pantalla inicial de la aplicación
     And activa la asistencia por voz
     When consulte por la funcionalidad Métodos de Foro
     Then el sistema redirigirá al usuario a dicha funcionalidad

Scenario: E6 : Acceso funcionalidad Acerca de Nosotros
     
     Given que el usuario se encuentra en la pantalla inicial de la aplicación
     And activa la asistencia por voz
     When consulte por la funcionalidad Acerca de Nosotros
     Then el sistema redirigirá al usuario a dicha funcionalidad


Feature: US12 - Acceso a información de funcionalidad

  Como usuario de Dengue Code quiero tener una interfaz por voz para acceder a la información de alguna funcionalidad. 

Scenario: E1 :  Acceso información Mapa de Calor:
     
     Given: El usuario se encuentra en la pantalla inicial de la aplicación
    And activa la asistencia por voz
    When: Mencione alguna funcionalidad por su nombre
    Then: El sistema le responderá sobre la funcionalidad y las diferentes tareas que realiza dicha función








