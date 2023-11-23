# Proyecto de Bookstore Challenge

Este es un proyecto de Rails que realiza la simulación de una libreria o biblioteca donde se puede realizar el prestamo de libros

## Demo

Puedes ver una demostración en vivo del proyecto [aquí](https://bookstore-challenge-app-2b1a24c1b4f6.herokuapp.com/).

## ¿Cómo funciona?

Se cuenta con el CRUD para las entidades de:

- Usuario (`/users`)
- Libro (`/books`)
- Categoria (`/categories`)

En la vista inicial (index) de libros se podra apreciar una etiqueta `amarilla` con el texto "Taken" en aquellos libros que no hayan sido devueltos.

Asimismo, en la vista inicial (index) de usuarios se podra apreciar una etiqueta `amarilla` con el texto "Book pending to return" en aquellos usuarios que tengan un libro pendiente de entregar.

Por ultimo, en la vista de prestamos de libros (`/loan_books`) se pueden ver todos los prestamos de libro, aquellos que esten pendientes de devolver tendran una etiqueta `amarilla` con el texto "Book pending to return".

En esta vista se puede:

- Marcar un libro como "Devuelto"
- Realizar nuevos prestamos de libros
- Filtrar los libros prestados en base al correo de usuario

## Requisitos del Sistema

Asegúrate de tener instalados los siguientes requisitos antes de ejecutar el proyecto:

- Ruby [ruby 3.2.2]
- Rails [Rails 7.0.8]
- PostgreSQL [PostgreSQL 14.9]

## Configuración del Proyecto

Sigue estos pasos para configurar el proyecto localmente:

1. Clona el repositorio:

   ```bash
   git clone https://github.com/tu-usuario/tu-proyecto.git
   cd tu-proyecto
   ```

2. Instala las dependencias::

   ```bash
   bundle install
   ```

3. Configura tus variables de entorno

   - Usa el archivo `.env.example` como ejemplo para agregar los de tu base de datos

4. Configura la base de datos:

   - Usa el archivo `database.example.yml` localizado en la carpeta `/config` para configurar tu base datos. Sigue ese formata y crea el archivo `database.yml` en ese mismo directorio

   ```bash
   rails db:create
   rails db:migrate
   ```

5. Inicia el servidor:

   ```bash
   rails server
   ```
