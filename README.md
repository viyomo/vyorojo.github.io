# Receta para publicar en la web (Github)

**LO PRIMERO QUE HAY QUE HACER ES ABRIR LA CARPETA EN UNA TERMINAL, EN ADELANTE HACER:**

1. Fijarse en que rama estas (main).  
   Si no estoy en la rama main Hay que ir a "main". Poner git Checkout main 
2. En otra pestaña: 
    a) Tipear code . (se abre VSCode)
3. Volver a la terminal y abrir otra terminar para tipear hugo server (renderiza localmente)
    A veces poner hugo server, para ver como está quedando la pagina. 
   c) Luego das click al enlace, que te muestra la pagina.
4. Editar lo que quieras en VSCode y ver el   resultado en el navegador local. Y das ^S para grabar.
5. Si estas conforme, volves a la terminal, abris una pestaña o cerras el servidor local, y tipeas ./publicar.sh 


**Para ocultar por ejemplo, las publicaciones en "publicaciones destacadas" **
Tienes que:
1. Ve a la carpeta donde está la publicación,
2a. agrega la siguiente línea a la sección inicial de tu archivo (la que está entre ---): 
   draft: true
2b lo anterior lo ubicas en el YAML (preferiblemente)
 Ventaja de este método: Es ideal para contenido que aún estás preparando. Cuando quieras volver a publicarlo,
 simplemente elimina la línea draft: true o cámbiala a draft: false.

 pagina de ayuda de hugo
 https://docs.hugoblox.com/reference/seo/