#!/bin/bash

clear

# Variable para fecha
DATE=$(date +"%d-%b-%Y-%H_%M_%S")

# Mensaje de saludo
echo "Hola, bienvenido al asistente del script de administración del SO Linux"
echo "Asegúrese de ejecutar este script como usuario root (sudo su)"
#sleep 4s
echo -e
echo "Este script ha sido creado por Pedro Ángel Castiñeira Ruiz ©"
echo -e
read -p "Pulse Enter para continuar"
# Fin del mensaje de saludo

# Actualización de repositorios del sistema
clear
echo "¿Me permite actualizar sus repositorios?"
echo -e
echo "De esta forma la ejecución del script será más precisa"
read -p "Escriba S para aceptar, N para denegar y presione enter: " RESPUESTA
case $RESPUESTA in

   S)
    clear
    echo "Actualizando, cargando comando"
    #sleep 2s
    clear
    echo "Cargando."
    #sleep 1s
    clear
    echo "Cargando.."
    #sleep 1s
    clear
    echo "Cargando..."
    #sleep 1s
    clear
    echo "Cargado, comenzando actualización de repositorios"
    #sleep 3s
    echo -e
    set -x
    apt update -y
    set +x
    echo -e
    echo "Actualización completada, gracias por esperar, continuemos"
    #sleep 4s
   ;;

   s)
    clear
    echo "Actualizando, cargando comando"
    #sleep 2s
    clear
    echo "Cargando."
    #sleep 1s
    clear
    echo "Cargando.."
    #sleep 1s
    clear
    echo "Cargando..."
    #sleep 1s
    clear
    echo "Cargado, comenzando actualización de repositorios"
    #sleep 3s
    echo -e
    set -x
    apt update -y
    set +x
    echo -e
    echo "Actualización completada, gracias por esperar, continuemos"
    #sleep 4s
   ;;

   N)
    clear
    echo "Ha decidido denegar la actualización, sigamos"
    #sleep 4s
   ;;

   n)
    clear
    echo "Ha decidido denegar la actualización, sigamos"
    #sleep 4s
   ;;

esac
# Fin de actualización de repositorios

#################################################################
#                            PACR ©                             #
#################################################################

# Comienzo de la actividad
clear
echo "Este script resuelve la actividad propuesta en el aula"
echo -e
#sleep 4s
echo "A continuación se le mostrará la guía con lo que puede hacer"
#sleep 4s
echo -e
while clear
do
echo "Cargando guía"
#sleep 3s
clear
echo "Cargando."
#sleep 1s
clear
echo "Cargando.."
#sleep 1s
clear
echo "Cargando..."
#sleep 1s
clear
echo "Gúia cargada, mostrando"
#sleep 3s
echo -e
echo "1-Crear usuario"
#sleep 1s
echo "2-Habilitar usuario"
#sleep 1s
echo "3-Deshabilitar usuario"
#sleep 1s
echo "4-Cambiar permisos a un usuario"
#sleep 1s
echo "5-Copia de seguridad del directorio de trabajo de un usuario determinado"
#sleep 1s
echo "6-Usuarios conectados actualmente"
#sleep 1s
echo "7-Espacio libre en disco"
#sleep 1s
echo "8-Trazar ruta"
#sleep 1s
echo "9-Salir"
#sleep 1s
echo "0-Salida especial"
echo -e

read -p "Pulse un número correspondiente a la acción que muestra la gúia para ejecutar la orden: " CASO
case $CASO in

   1)
    clear
    echo "Ha elegido crear un usuario"
    #sleep 3s
    echo "Escriba el nombre del usuario que quiere crear"
    read CASO1
    echo -e
    echo "Desplegando comando, rellene los datos que le pide el sistema para completar el registro"
    echo -e
    adduser $CASO1
    clear
    echo "Acción completada volviendo..."
    #sleep 3s
   ;;

   2)
    clear
    echo "Ha elegido habilitar usuario"
    #sleep 3s
    echo "Escriba el nombre del usuario que quiere habilitar"
    read CASO2
    echo -e
    echo "Habilitando usuario"
    echo -e
    usermod -U $CASO2
    echo "Acción completada volviendo..."
    #sleep 3s
   ;;

   3)
    clear
    echo "Ha elegido deshabilitar usuario"
    #sleep 3s
    echo "Escriba el nombre del usuario que quiere deshabilitar"
    read CASO3
    echo -e
    echo "Deshabilitando usuario"
    echo -e
    usermod -L $CASO3
    echo "Acción completada volviendo..."
    #sleep 3s
   ;;

   4)
    echo "Ha elegido cambiar los permisos de un usuario"
    #sleep 3s
    echo "Instalando herramienta locate para localizar archivos y directorios"
    #sleep 5s
    set -x
    apt install mlocate
    set +x
    while clear
    do
    echo "Estas son las modificaciones que puede realizar:"
    #sleep 1s
    echo "1)Cambiar permisos a una carpeta o un fichero"
    #sleep 1s
    echo "2)Cambiar dueño y grupo de una carpeta o un fichero"
    #sleep 1s
    echo "Salir)Escriba salir para volver al menú principal"
    echo -e
    read -p "Elija la opción que quiera llevar a cabo: " CASO4
    case $CASO4 in
      
      1)
         clear
         echo "Ha elegido la opción 1"
         #sleep 2s
         echo -e
         read -p "Escriba solamente el nombre del fichero o directorio que quiere modificar: " CASO41LOCATE
         clear
         echo "Localizando"
         echo -e
         echo "Éstas son las localizaciones:"
         echo -e
         set -x
         locate $CASO41LOCATE
         set +x
         echo -e
         echo "Escriba solamente la ruta donde se encuentra el fichero o directorio partiendo del directorio raíz"
         echo -e
         echo "Ejemplo, si quiere cambiar archivo.txt que se encuentra en /home (/home/archivos/archivo.txt) escriba hasta donde está el directorio, es decir /home/archivo"
         echo -e
         read CASO41RUTA
         echo -e
         echo "Mostrando directorio"
         echo -e
         set -x
         ls $CASO41RUTA -la
         set +x
         echo -e
         read -p "Escriba el nombre del fichero/directorio al que quiere cambiarle los permisos: " CASO41FIDIR
         echo -e
         echo "Ha elegido $CASO41FIDIR"
         #sleep 1s
         echo -e
         read -p "Seleccione los permisos a modificar (todo=777 | lectura=4 | escritura=2 | ejecución= 1): " CASO41PERM
         #sleep 2s
         echo "Cambiando"
         #sleep 2s
         set -x
         chmod $CASO41PERM $CASO41RUTA/$CASO41FIDIR
         set +x
         #sleep 2s
         echo -e
         echo "Mostrando permisos modificados de $CASO41FIDIR"
         set -x
         ls -la $CASO41RUTA/$CASO41FIDIR
         set +x
         read -p "Presione Enter para volver al menú de permisos"
      ;;

      2)
         clear
         echo "Ha elegido la opción 2"
         #sleep 2s
         echo -e
         read -p "Escriba solamente el nombre del fichero o directorio que quiere modificar: " CASO42LOCATE
         clear
         echo "Localizando"
         echo -e
         echo "Éstas son las localizaciones:"
         echo -e
         set -x
         locate $CASO42LOCATE
         set +x
         echo -e
         echo "Escriba solamente la ruta donde se encuentra el fichero o directorio partiendo del directorio raíz"
         echo -e
         echo "Ejemplo, si quiere cambiar archivo.txt que se encuentra en /home (/home/archivos/archivo.txt) escriba hasta donde está el directorio, es decir /home/archivo"
         echo -e
         read CASO42RUTA
         echo -e
         echo "Mostrando directorio"
         echo -e
         set -x
         ls $CASO42RUTA -la
         set +x
         echo -e
         read -p "Escriba el nombre del fichero/directorio al que quiere cambiarle la propiedad: " CASO42FIDIR
         echo -e
         echo "Ha elegido $CASO42FIDIR"
         #sleep 1s
         echo -e
         read -p "Escriba el usuario que tendrá la propiedad: " CASO42PROP
         read -p "Escriba el grupo que tendrá la propiedad: " CASO42GRUP
         #sleep 2s
         echo "Cambiando propiedad"
         #sleep 2s
         set -x
         chown $CASO42PROP $CASO42RUTA/$CASO42FIDIR
         chgrp $CASO42GRUP $CASO42RUTA/$CASO42FIDIR
         set +x
         #sleep 2s
         echo -e
         echo "Mostrando permisos de $CASO42FIDIR"
         set -x
         ls -la $CASO42RUTA/$CASO42FIDIR
         set +x
         read -p "Presione Enter para volver al menú de permisos"
      ;;

      Salir)
         clear
         echo "Saliendo"
         #sleep 2s
         break
      ;;
    esac
    done
   ;;

   5)
    clear
    echo "Ha elegido realizar una copia de seguridad del directorio de trabajo de un usuario"
    #sleep 4s
    echo "Analizando directorio home"
    #sleep 4s
    clear
    echo "Estos son los directorios de trabajo que hay disponibles:"
    ls 7home/
    #sleep 4s
    echo -e
    echo "Escriba el nombre o nombres del directorio/s que quiere copiar"
    read CASO5
    echo -e
    clear
    echo "Realizando copia. La copia se llevará al directorio $PWD"
    echo -e
    #sleep 4s
    tar -cvf $CASO5-$DATE.tar /home/$CASO5
    echo -e
    echo "Acción completada volviendo..."
    #sleep 3s
   ;;

   6)
    clear
    echo "Ha elegido ver los usuarios conectados"
    #sleep 3s
    echo "Instalando herramienta necesaria"
    #sleep 2s
    apt install finger -y
    clear
    echo "La herramienta se ha instalado"
    #sleep 2s
    clear
    echo "Estos son los usuarios conectados, después de 10 segundos la terminal se limpiará"
    finger
    #sleep 10s
    echo -e
    echo "Acción realizada, saliendo..."
   ;;

   7)
    clear
    echo "Ha elegido ver el espacio en el disco"
    #sleep 3s
    echo "Mostrando información del disco"
    df -h
    #sleep 15s
    echo "Acción realizada, saliendo..."
    #sleep 3s
   ;;

   8)
    clear
    echo "Ha elegido trazar una ruta de red"
    #sleep 3s
    clear
    echo "Instalando herramienta"
    apt install traceroute -y
    echo -e
    #sleep 3s
    echo "Herramienta instalada"
    #sleep 3s
    clear
    read -p "Escriba el nombre de dominio o dirección IP del host: " TRAZARUTA
    traceroute -I $TRAZARUTA
    echo -e
    read -p "Presione Enter para continuar"
    echo -e
    echo "Acción realizada, saliendo..."
    #sleep 3s
   ;;


   9)
    clear
    echo "Ha elegido salir del script"
    #sleep 3s
    clear
    echo "Espero que le haya sido de ayuda"
    #sleep 3s
    clear
    echo "Preparando limpiador de texto de la terminal"
    #sleep 3s
    clear
    echo "Saliendo"
    #sleep 1s
    echo "Saliend"
    #sleep 1s
    echo "Salien"
    #sleep 1s
    echo "Salie"
    #sleep 1s
    echo "Sali"
    #sleep 1s
    echo "Sal"
    #sleep 1s
    echo "Sa"
    #sleep 1s
    echo "S"
    echo -e
    #sleep 1s
    clear
    exit
   ;;

   0)
    clear
    echo "Ha elegido salir del script de una forma especial"
    #sleep 3s
    clear
    echo "Preparando salida especial"
    #sleep 3s
    apt install cowsay -y
    clear
    echo "Salida especial preparada, limpiado terminal"
    #sleep 3s
    clear
    echo "Saliendo"
    #sleep 1s
    echo "Saliend"
    #sleep 1s
    echo "Salien"
    #sleep 1s
    echo "Salie"
    #sleep 1s
    echo "Sali"
    #sleep 1s
    echo "Sal"
    #sleep 1s
    echo "Sa"
    #sleep 1s
    echo "S"
    #sleep 1s
    echo -e
    cowsay Bye
    #sleep 3s
    clear
    exit
   ;;
esac
done

# Fin de la actividad
