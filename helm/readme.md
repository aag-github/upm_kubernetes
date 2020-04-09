# Helper scripts
Todo el proceso de creación que se describe a continuación se puede ejecutar con el script create.bat/create.sh
Para desinstalar todo se puede ejecutar destroy.bat/destroy.sh

**NOTA:
Al hacer el destroy borro todo el contenido de la base de datos porque la aplicación no funciona correctamente
y cada vez que se crea de nuevo se añade un registro más, en vez no hacer nada si la base de datos ya existe.**

# Charts
Para desplegar la aplicación se han creado dos charts, uno con la aplicación web y otro chart como dependencia para la base de datos.

Los parámetros por defecto para desplegar la aplicación están en values.yaml y charts/anuncios_db/values.yaml. En el fichero values.yaml de la aplicación se pueden configurar los parámetros tanto para la aplicación como para la base de datos.

La explicación de lo que hace cada template se puede ver en el [readme.md del directorio specs](../specs/readme.md)

**NOTA:
En el chart de la base de datos (charts/anuncios_db/values.yaml) los valores por defecto no son correctos. Los he puesto así para demostrar que se pueden configurar correctamente desde el values.yaml de la aplicación, en el elemento "anuncios_db"**

# Notas sobre el despliegue
* La aplicación no funciona bien sobre a URL creada a través de ingress:

      http://www.albertoalvarezgarcia.com/anuncios

  La página principal funciona bien, pero cuando se intenta acceder a un registro o crear uno nuevo, la applicacion redirige a una url sin "anuncios". Nos lleva por ejemplo a:

      http://www.albertoalvarezgarcia.com/nuevoAnuncio.html

  en lugar de:

      http://www.albertoalvarezgarcia.com/anuncios/nuevoAnuncio.html

* Si se cambia el valor de replicaCount a un valor distinto de 1, en la página principal saldrán los registros de ejemplo duplicados (uno por cada pod), porque la aplicación genera siempre los registros nuevos, aunque la base de datos ya exista.