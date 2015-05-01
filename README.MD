Programación Web 3

UNLaM - Tecnicatura en Desarrollo Web

Trabajo Práctico

Este documento describe el alcance funcional y los requisitos técnicos del trabajo práctico que los alumnos de la materia Programación Web III deberán realizar a fin de estar en condición de rendir ambos parciales de la materia. El equipo para realizar el trabajo práctico deberá ser de 4 alumnos. No se aceptará grupos de Universidad Nacional de la Matanza ­ DIIT
Tecnicatura en Programación Web ­ Programación Web 3

3. Requisitos Técnicos

1. El trabajo práctico deberá ser realizado utilizando ASP.NET. El tipo de proyecto a utilizar es una aplicación web.

1. No se permitirán que se utilicen los estilos ya provistos por Microsoft en la aplicación de ejemplo que provee Visual Studio.

2. Todos los archivos .css deberán estar dentro de una carpeta.

3. No utilizar estilos inline (atributo style=””) ni definir estilos dentro de una pagina (tags

4. Debe de utilizarse algún framework/biblioteca de hojas de estilo. Algunos ejemplos:

a. Twitter Bootstrap (http://getbootstrap.com/ , temas http://bootswatch.com/ )

b. Foundation (http://foundation.zurb.com/docs/)

c. KickStart (http://www.99lime.com/elements/)

d. Otro definido por los alumnos y validado con el cuerpo docente.

1. No utilizar JavaScript inline dentro de una página, se deberá referenciar a archivos js.

2. Todos los archivos .js deberán estar dentro de una carpeta.

a. Si se decide utilizar algún js que no es propio, el mismo deberá estar dentro de una subcarpeta.

3. Debe utilizarse jquery. Las librerías plugins son opcionales. Para el caso de los plugins, queda como responsabilidad de los alumnos asegurar el correcto funcionamiento del mismo para garantizar el funcionamiento del trabajo práctico. Las funciones específicas de una página, deberían estar en un archivo .js con el mismo Universidad Nacional de la Matanza ­ DIIT
Tecnicatura en Programación Web ­ Programación Web 3

Aquellas funciones utilizadas en más de una página, deberían de estar dentro de otro archivo

2. Todo el contenido debe ser SEO friendly.

3. Se requiere el uso de master page para estructura los formularios web de la aplicación. Dentro de la master page deberán referenciarse las hojas de estilo y archivos de javascript de uso común por toda la aplicación.

4. Debe utilizarse xHtml.

1. Utilizar validaciones tanto del lado del cliente (JavaScript) como del lado del servidor.

2. Se puede utilizar una lista que detalle todos los campos que no cumplieron con las

3. Se requerirá que las validaciones en los formularios webs serán realizadas mediante controles de validación de ASP.NET

3.6 Arquitectura y Consideraciones de Desarrollo

1. El proyecto deberá estar organizado en capas. Cabe aclarar, que el no conocimiento de este concepto, no implica que no puedan iniciar el desarrollo del trabajo en

2. La capa de acceso a datos deberá ser realizada con ADO.NET. Este componente de .NET será explicado en clases a fin de que los alumnos comprendan cómo utilizarlo.

3. Utilizar la menor cantidad posible de código en los archivos aspx.cs, ascx.cs, master.cs, etc. e intentar que en los mismos haya llamadas a métodos dentro de otro proyecto que contenga las reglas de negocio Universidad Nacional de la Matanza ­ DIIT Tecnicatura en Programación Web ­ Programación Web 3

4. Encriptar información sensible, como la contraseña de los usuarios.

5. Compatibilidad con exploradores.

a. Internet Explorer 9,10

b. Firefox (la última versión para Windows).

c. Google Chrome (la última versión para Windows).