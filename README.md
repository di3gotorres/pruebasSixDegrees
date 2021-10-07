# pruebasSixDegrees
Solucion Backend en .Net Core C# y Frontend en Agular

En la carpeta scripts estan los archivos para:
  Crear la base de datos
  Crear la tabla de usuarios
  Insertar datos de pruebas
  
En el Backend se debe cambiar la cadena de conexion a la base de datos. Esto se debe hacer en:
  Proyecto services
    Archivo launchSettings.json
      Seccion ConnectionStrings
        Nombre de conexion ConnectionPruebaSD
        
En el Frontend se debe cambiar la ruta a los servicios. Esto se debe hacer en:
  El archivo usuario.service.ts de la carpeta Services
    En la variable urlServicio
    
