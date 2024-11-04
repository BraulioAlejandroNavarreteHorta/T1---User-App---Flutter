# Flutter Profile App

Esta es una aplicación simple de Flutter para crear, guardar y visualizar un perfil de usuario. La aplicación tiene tres pantallas: Inicio, Crear Perfil y Perfil.

## Características

1. **Pantalla de Inicio ("Home")**
   - Pantalla con el título "Inicio".
   - Contiene un botón que dice "Crear perfil".
   - Al presionar el botón, navega a la pantalla de creación de perfil.

   ![Pantalla de Inicio](<img width="500" alt="Captura de pantalla 2024-11-03 a las 11 18 34 p m" src="https://github.com/user-attachments/assets/7bb8a068-747d-4311-8ac7-d94b5cb0267a">
)

2. **Pantalla de Creación de Perfil ("Crear Perfil")**
   - Incluye campos de texto (TextFields) para que el usuario ingrese su nombre, edad y ocupación.
   - Contiene un botón que dice "Guardar y Ver Perfil".
   - Al presionar el botón, navega a la pantalla de perfil y muestra los datos ingresados.

   ![Pantalla de Crear Perfil](<img width="494" alt="Captura de pantalla 2024-11-03 a las 11 20 57 p m" src="https://github.com/user-attachments/assets/d7a7a445-d761-403b-b1c9-b4eb52bfae90">
)

3. **Pantalla de Perfil de Usuario ("Perfil")**
   - Muestra los datos ingresados por el usuario (nombre, edad y ocupación).
   - Contiene un botón que dice "Regresar a Inicio" para navegar de regreso a la pantalla principal.

   ![Pantalla de Perfil de Usuario](<img width="497" alt="Captura de pantalla 2024-11-03 a las 11 21 05 p m" src="https://github.com/user-attachments/assets/eaec06a9-b66a-4789-b1c6-09a5fa63ddbf">
)

## Navegación

La navegación entre pantallas se realiza utilizando el paquete `go_router`. La estructura de navegación permite pasar los datos ingresados en la pantalla de creación de perfil a la pantalla de perfil.
