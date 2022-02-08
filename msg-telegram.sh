#!/bin/bash
USERID="YOUR_ID" #Chat al que queremos enviar el mensaje.
KEY="YOUR_TOKEN" #API Key generada por BotFather.
TIMEOUT="10" #Timeout de la petición a la API.
URL="https://api.telegram.org/bot$KEY/sendMessage" #URL de la API para enviar mensajes.
LOG="envio_telegram_`date "+%d%m%Y"`.log" #Log de envío de mensajes.
SONIDO=0 #Cuando SONIDO es 0, suena notificación, si es 1, es silenciosa.
FECHA_EJEC="$(date "+%d %b %H:%M:%S")" #Generamos fecha y hora de ejecución.
#Condicional para enviar sonido o no con la notificación. Segundo parámetro.
if [[ $2 -eq 1 ]] ; then
        SONIDO=1
fi
TEXTO="<b>$FECHA_EJEC:</b>\n<pre>$1</pre>" #Texto a enviar. Fecha de ejecución y primer parámetro del script.
curl -s --max-time $TIMEOUT -d "parse_mode=HTML&disable_notification=$SONIDO&chat_id=$USERID&disable_web_page_preview=1&text=`echo -e "$TEXTO"`" $URL >> $LOG 2>&1 #Realizamos la petic>
"echo" >> $LOG #Introducimos línea nueva en el log.
