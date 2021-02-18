#!/bin/bash

clear

# Variable para fecha
DATE=$(date +"%d-%b-%Y-%H_%M_%S")

# Mensaje de saludo
echo "Hola, bienvenido al asistente del script de administración del SO Linux"
echo "Asegúrese de ejecutar este script como usuario root"
sleep 4s
echo -e
echo "Este script ha sido creado por Pedro Ángel Castiñeira Ruiz ©"
sleep 4s
# Fin del mensaje de saludo

# Actualización de repositorios del sistema
clear
echo "¿Me permite actualizar sus repositorios?"
echo -e
echo "De esta forma la ejecución del script será más precisa"
read -p "Escriba S para aceptar, N para denegar y presione enter " RESPUESTA
case $RESPUESTA in

   S)
    clear
    echo "Actualizando, cargando comando"
    sleep 1s
    clear
    echo "Cargando."
    sleep 1s
    clear
    echo "Cargando.."
    sleep 1s
    clear
    echo "Cargando..."
    sleep 1s
    clear
    echo "Cargado, comenzando actualización de repositorios"
    sleep 2s
    echo -e
    apt update -y 
    echo -e
    echo "Actualización completada, gracias por esperar, continuemos"
    sleep 3s
   ;;

   s)
    clear
    echo "Actualizando, cargando comando"
    sleep 1s
    clear
    echo "Cargando."
    sleep 1s
    clear
    echo "Cargando.."
    sleep 1s
    clear
    echo "Cargando..."
    sleep 1s
    clear
    echo "Cargado, comenzando actualización de repositorios"
    sleep 2s
    echo -e
    apt update -y
    echo -e
    echo "Actualización realizada, gracias por esperar, continuemos"
    sleep 3s
   ;;

   N)
    clear
    echo "Ha decidido denegar la actualización, sigamos"
    sleep 3s
   ;;

   n)
    clear
    echo "Ha decidido denegar la actualización, sigamos"
    sleep 3s
   ;;

esac
# Fin de actualización de repositorios

#################################################################
#                             PACR ©                            #
#################################################################

# Comienzo de la actividad
clear
echo "Este script resuelve la actividad propuesta en el aula"
echo -e
sleep 2s
echo "A continuación se le mostrará la guía con lo que puede hacer"
sleep 2s
echo -e
while clear
do
echo "Cargando guía"
sleep 2s
clear
echo "Cargando."
sleep 1s
clear
echo "Cargando.."
sleep 1s
clear
echo "Cargando..."
sleep 1s
clear
echo "Gúia cargada, mostrando"
sleep 2s
echo -e
echo "1-Crear usuario"
sleep 1s
echo "2-Habilitar usuario"
sleep 1s
echo "3-Deshabilitar usuario"
sleep 1s
echo "4-Cambiar permisos a un usuario"
sleep 1s
echo "5-Copia de seguridad del directorio de trabajo de un usuario determinado"
sleep 1s
echo "6-Usuarios conectados actualmente"
sleep 1s
echo "7-Espacio libre en disco"
sleep 1s
echo "8-Trazar ruta"
sleep 1s
echo "9-Salir"
sleep 1s
echo "0-Salida especial"
echo -e

read -p "Pulse un número correspondiente a la acción que muestra la gúia para ejecutar la orden " CASO
case $CASO in

   1)
    clear
    echo "Ha elegido crear un usuario"
    sleep 2s
    echo "Escriba el nombre del usuario que quiere crear"
    read CASO1
    echo -e
    echo "Desplegando comando, rellene los datos que le pide el sistema para completar el registro"
    echo -e
    adduser $CASO1
    clear
    echo "Acción completada volviendo..."
    sleep 2s
   ;;

   2)
    clear
    echo "Ha elegido habilitar usuario"
    sleep 2s
    echo "Escriba el nombre del usuario que quiere habilitar"
    read CASO2
    echo -e
    echo "Habilitando usuario"
    echo -e
    usermod -U $CASO2
    echo "Acción completada volviendo..."
    sleep 2s
   ;;

   3)
    clear
    echo "Ha elegido deshabilitar usuario"
    sleep 2s
    echo "Escriba el nombre del usuario que quiere deshabilitar"
    read CASO3
    echo -e
    echo "deshabilitando usuario"
    echo -e
    usermod -L $CASO3
    echo "Acción completada volviendo..."
    sleep 2s
   ;;

#   4) NO TERMINADO NO USAR
#    clear
#    echo "Ha elegido cambiar permisos a un usuario"
#    sleep 2s
#    echo "Escriba el nombre del usuario al que quiere cambiarle los permisos"
#    read CASO3
#    echo -e
#    echo "deshabilitando usuario"
#    echo -e
#    usermod -L $CASO3
#   ;;

   5)
    clear
    echo "Ha elegido realizar una copia de seguridad del directorio de trabajo de un usuario"
    sleep 2s
    echo "Escriba el nombre del usuario del que quiere copiar su directorio"
    read CASO5
    echo -e
    echo "Realizando copia. La copia se llevará al directorio $PWD"
    echo -e
    sleep 2s
    tar -cvf $CASO5-$DATE.tar /home/$CASO5
    echo -e
    echo "Acción completada volviendo..."
    sleep 2s
   ;;

   6)
    clear
    echo "Ha elegido ver los usuarios conectados"
    sleep 2s
    echo "Instalando herramienta necesaria"
    sleep 1s
    apt install finger -y
    sleep 1s
    clear
    echo "La herramienta se ha instalado"
    sleep 1s
    clear
    echo "Estos son los usuarios conectados, después de 10 segundos la terminal se limpiará"
    finger
    sleep 10s
    echo -e
    echo "Acción realizada, saliendo..."
   ;;

   7)
    clear
    echo "Ha elegido ver el espacio en el disco"
    sleep 2s
    echo "Mostrando información del disco"
    df -h
    sleep 15s
    echo "Acción realizada, saliendo..."
    sleep 2s
   ;;

   8)
    clear
    echo "Ha elegido trazar una ruta de red"
    sleep 2s
    clear
    echo "Instalando herramienta"
    apt install traceroute -y
    echo -e
    sleep 2s
    echo "Herramienta instalada"
    sleep 3s
    clear
    echo "Escriba el nombre de dominio o dirección IP del host"
    read TRAZARUTA
    traceroute -I $TRAZARUTA
    sleep 10s
    echo -e
    echo "Acción realizada, saliendo..."
    sleep 3s
   ;;


   9)
    clear
    echo "Ha elegido salir del script"
    sleep 2s
    clear
    echo "Espero que le haya sido de ayuda"
    sleep 2s
    clear
    echo "Preparando limpiador de texto de la terminal"
    sleep 2s
    clear
    echo "Saliendo"
    sleep 1s
    echo "Saliend"
    sleep 1s
    echo "Salien"
    sleep 1s
    echo "Salie"
    sleep 1s
    echo "Sali"
    sleep 1s
    echo "Sal"
    sleep 1s
    echo "Sa"
    sleep 1s
    echo "S"
    echo -e
    sleep 1s
    clear
    exit
   ;;

   0)
    clear
    echo "Ha elegido salir del script de una forma especial"
    sleep 2s
    clear
    echo "Preparando salida especial"
    sleep 2s
    apt install cowsay -y
    clear
    echo "Salida especial preparada, limpiado terminal"
    sleep 2s
    clear
    echo "Saliendo"
    sleep 1s
    echo "Saliend"
    sleep 1s
    echo "Salien"
    sleep 1s
    echo "Salie"
    sleep 1s
    echo "Sali"
    sleep 1s
    echo "Sal"
    sleep 1s
    echo "Sa"
    sleep 1s
    echo "S"
    sleep 1s
    echo -e
    cowsay Bye
    sleep 3s
    clear
    exit
   ;;
esac
done

# Fin de la actividad
