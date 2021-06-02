# Bienvenido!

Este es un repositorio para evaluar candidatos para el equipo de desarrollo
de Grupo Petsa.

La aplicación es un bloc de notas, hecha en Ruby on Rails con
MaterializeCSS.

La idea es arreglar bugs para cumplir con las funciones descritas abajo.

### Requerimientos para correr

Te recomendamos *mucho* que utilices alguna distribución de Linux para arrancar,
pero eres libre de utilizar lo que gustes.

### Cómo arrancar el servidor

Para correr esta aplicación de la forma tradicional, debes tener instalado previamente
  - Ruby, versión 3.0.1 (te recomendamos utilizar [rvm](https://rvm.io) o [rbenv](https://devhints.io/rbenv))
  - NodeJS
  - Yarn
  - Git

Posteriormente, podrás iniciar el arranque haciendo lo siguiente:

- Clona el repositorio en tu computadora
- Utiliza `bundle` para instalar las gemas requeridas
- Configura la base de datos y webpacker por medio del comando `rails`
- Arranca el servidor con `rails server`

Si así lo deseas, puedes utilizar Docker y Docker Compose en lugar de lo anterior para arrancar la aplicación. Los archivos de configuración estan casi completos, cuestión de que los revises y corrijas para que puedas utilizarlos para correr la aplicación.

### Las funciones que se ocupan arreglar

![001](https://user-images.githubusercontent.com/4324005/120245348-b74e3f80-c221-11eb-8fcf-7d3d9ee6695a.png)

La aplicación debe cumplir con los siguientes puntos que actualmente estan
fallando:

- Tener un encabezado, color rojo, donde esté el nombre de la aplicación.
- En el encabezado, el título de la aplicación debe ser un link para mandar al usuario al índice
- El índice debe mostrar:
  - Una nota por fila
  - Las notas ordenadas de más reciente a más antigua
  - La fecha y hora de creación en la parte superior derecha de cada nota
  - La hora de creación debe ser la hora local
  - Un campo para buscar por título:
    - Encontrará las notas que contengan lo buscado en cualquier parte del título.
    - La búsqueda no debe hacer distinción entre mayúsculas o minúsculas.
    - Si hay multiples palabras buscadas, debe buscar que todas las palabras esten presentes en el título, sin importar su orden.
    - Debe poder buscar caracteres especiales también (`$`, `_`, `\`, `*`, `%`)
- Al hacer clic en cada nota, debe enviar a la vista completa de la nota, donde:
  - se debe mostrar el cuerpo de la nota,
  - respetando saltos de línea en caso de tenerlos,
  - con un ícono indicado para borrar la nota,
  - y otro para editarla.
- Debe haber un botón de `Nueva nota` en el índice, también color rojo, que envíe al usuario a la interfaz de creación de notas.
- Al crear o editar una nota:
  - Si el titulo o el cuerpo de la nota estan vacios, no debe guardarse la nota.
  - Si el titulo y el cuerpo tienen contenido, debe poder crearse la nota.
  - El cuerpo de la nota debe permitir saltos de línea
  - Si el cuerpo de la nota es muy grande, se debe ajustar automaticamente para mostrar todo el contenido.
  - Despues de guardar la nota, se debe redireccionar al usuario a la vista completa de la nota recien guardada.

### Comentarios

- Lo ideal es que resuelvas *todos* los puntos, pero tampoco es una obligación. Aunque no hayas terminado todos los puntos, igual enviannos tu respuesta para evaluar tu progreso.
- No esperamos que sepas todo de memoria tampoco, eres libre de guiarte con libros o con Google para poder completar el ejercicio.
- Cuando hayas terminado, crea un repositorio en el sitio de tu preferencia (GitHub, GitLab, BitBucket, etc) y haznos llegar la liga de acceso para su revisión.
- Si tienes alguna otra duda no dudes en comunicarte con nosotros.

### Capturas y ejemplos

- Buscador

https://user-images.githubusercontent.com/4324005/120245486-30e62d80-c222-11eb-97a9-e4faa0a2e332.mp4

https://user-images.githubusercontent.com/4324005/120245517-45c2c100-c222-11eb-9ede-e2aa8a8af962.mp4

- Vista completa

https://user-images.githubusercontent.com/4324005/120245539-5f640880-c222-11eb-8dfb-9f82014b51d9.mp4

- Interfaz de creación

https://user-images.githubusercontent.com/4324005/120245544-6559e980-c222-11eb-90b6-d2f718587c8f.mp4
