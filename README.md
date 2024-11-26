# Twitter Clone

¡Bienvenido a Twitter Clone! Este proyecto es una aplicación desarrollada en Flutter que simula una interfaz similar a Twitter, con tarjetas de publicaciones dinámicas y funcionales.

## Características

- Publicaciones dinámicas: Los datos de las publicaciones se obtienen de un archivo separado.

- Interfaz moderna: Utiliza tarjetas (PostCard) para mostrar información relevante de cada publicación.

- Fácil personalización: Puedes agregar o modificar publicaciones fácilmente en el archivo de datos.

## Tecnologías utilizadas

- Flutter: Framework para el desarrollo de aplicaciones móviles multiplataforma.

- Dart: Lenguaje de programación utilizado en Flutter.

- Arquitectura modular: Código organizado y reutilizable.

## Capturas de pantalla

<img src="image.png" alt="Descripción de la imagen" width="200" style="border-radius: 8px;"/>

## Instalación

Sigue estos pasos para clonar y ejecutar el proyecto en tu máquina local:

### Pre-requisitos

* Tener instalado Flutter en tu máquina.

* Un editor de código como VSCode o Android Studio.

## Clonar el repositorio

```bash

git clone https://github.com/JuanCalderon2005/flutter-clon-X.git

cd flutter-clon-X

```

## Estructura del proyecto

```bash
lib/

├── data/

│ └── posts_data.dart # Archivo con los datos de las publicaciones

├── models/

│ └── Posts.dart # Modelo de datos para una publicación

├── views/

│ └── Dashboard.dart # Rendering Principal

│ └── HomePage.dart # Vista Principal

├── widgets/

│ └── PostCard.dart # Componente de tarjeta para mostrar publicaciones

│ └── ButtonBar.dart # Componente de ButtonBar

│ └── AppBar.dart # Componente de Appbar
```
