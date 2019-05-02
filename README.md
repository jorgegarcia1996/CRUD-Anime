# CRUD Anime (Version 1)

Mi trabajo de CRUD es una lista de anime en la que se pueden agregar nuevos animes, editar alguno ya existente, borrar un anime de la lista o ver mas detalles de anime.

## Componentes y estilo

Para el estilo he utilizado la siguiente [plantilla](https://www.tutorialrepublic.com/snippets/preview.php?topic=bootstrap&file=crud-data-table-for-database-with-modal-form), modificando y agregando botones y una barra de busqueda, en la parte superior derecha podemos encontrar un botón el cual sirve para agregar un nuevo anime a la lista, para cada entrada de la lista tenemos 3 botones en la columna de 'Acciones', uno para editar los datos de esa entrada, otro para borrar la entrada y un último botón para ver más información sobre la entrada.

<img src="capturas-CRUD/01-Pagina Principal.png">

## Agregar un nuevo anime

Al pulsar en el botón de agregar un nuevo anime, se despliega un Modal con el formulario necesario para agregar un nuevo anime a la lista, todos los campos son obligatorios. Al final del Modal, hay 3 botones, uno de 'Cancelar' que vuelve a la lista, otro de 'Reset' que limpia todos los campos del formulario y otro de 'Agregar' que añade el anime a la lista.Los campos son los siguientes:

- <b>Nombre:</b> Es el nombre del anime, campo tipo 'text'.
- <b>Tipo:</b> Es el tipo de anime, campo 'select'.
- <b>Generos:</b> Son los generos del anime, campo tipo 'text'.
- <b>Sinopsis:</b> Es la descripción del anime, es un 'textarea'.
- <b>Número de Episodios:</b> Es el número de episodios que tiene el anime, campo tipo 'number'.
- <b>Duración de los episodios (en minutos):</b> Es la duración de los episodios del anime en minutos, campo tipo 'number'.
- <b>Fecha de estreno:</b> Es la fecha en la que se empezó a emitir el anime, campo tipo 'date'.
- <b>Estudio:</b> Es el nombre delestudio de animación que creó el anime, campo tipo 'text'.

<img style="margin: 0 auto" src="capturas-CRUD/02-1-Modal agregar anime.png" width="50%">
<img style="margin: 0 auto" src="capturas-CRUD/02-2-Botones modal agregar anime.png" width="50%">

## Editar un anime

Al editar un anime se nos abre un Modal con todos los datos del anime en sus respectivos campos de formulario, no se puede dejar un campo de formulario en blanco, y al final tiene 2 botones, uno de 'Cancelar' para volver a la lista de anime y oreo de 'Guardar Cambios' para actualizar los datos del anime.

<img style="margin: 0 auto" src="capturas-CRUD/03-1-Modal editar anime.png" width="50%">
<img style="margin: 0 auto" src="capturas-CRUD/03-2-Boton modal editar anime.png" width="50%">

## Borrar un anime

Al borrar un anime se abre un Modal pidiendo confirmación para borrar el anime de la lista.

<img style="margin: 0 auto" src="capturas-CRUD/04-Modal Eliminar Anime.png" width="50%">

## Ver detalles de un anime

En la sección de ver detalles de un anime, se noa abre un Modal mostrando todos los datos del anime seleccionado.

<img style="margin: 0 auto" src="capturas-CRUD/05-1-Modal detalles anime.png" width="50%">
<img style="margin: 0 auto" src="capturas-CRUD/05-2-Boton modal detalles anime.png" width="50%">

## Barra de búsqueda

He añadido una barra de búsqueda la cual busca una entrada de la lista por el nombre.

<img src="capturas-CRUD/06-Barra de busqueda funcional.png">

# Cambios de la versión 2

## Login

He implementado un login con una tabla más en la base de datos donde se comprueba que el usuario esté registrado para acceder al CRUD.

<img src="capturas-CRUD/07-Pantalla login.PNG">

Si el usuario está en la base de datos podrá acceder al CRUD y se mostrará su nombre en el encabezado de la tabla, junto con un botón de 'Logout'.

<img src="capturas-CRUD/12-Identificacion del usuario en el crud.PNG">

Si por el contrario el usuario no está en la base de datos, o el nombre de usuario/contraseña son incorrectos, mostrará un mensaje de error junto a un botón para volver a la pantalla de login.

<img src="capturas-CRUD/08-Login incorrecto.PNG">

## Registro

Debajo del login hay un enlace a un formulario de registro para registrar un uaurio en la base de datos.

<img src="capturas-CRUD/09-Pagina de registro.PNG">

Si se registra a un usuario muestra un mensaje de que se ha registrado correctamente junto con un botón para volver al login.

<img src="capturas-CRUD/10-Registro correcto.PNG">

Pero si se intenta registrar un usuario que ya existe en la base de datos, muestra un mensaje diciendo que el usuario ya existe.

<img src="capturas-CRUD/11-Registro de usuario existente.PNG">

## Características extras
- Si desde la pantalla de login, mediante la URL intentamos acceder al CRUD, se hace una redireccion a la pantalla de login.
- La contraseña de los usuarios en la base de datos está encriptada.
