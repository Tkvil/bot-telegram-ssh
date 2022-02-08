# Enviar mensaje a Telegram en cualquier inicio de sesión SSH
Creación de un script de shell Bash para enviar mensajes a telegram. Despues utilizaremos este script para enviar una notificación en cada inicio de sesion ssh en el servidor.
# Crear bot de telegram
Empezamos abriendo una conversación con **BotFather** para la creación de nuestro bot.
Con el comando /newbot  le diremos al bot que queremos crear un nuevo bot. A continuación nos dira que nombre le queremos poner y que username. Una vez terminemos de decirle todo lo anterior nos mostrara un mensaje con el Token del bot que hemos creado.

![image](https://user-images.githubusercontent.com/74573174/153090135-015ada08-522e-4661-83c8-b0d41308d04a.png)

# Crear canal 
Creamos un canal y agregamos al bot como miembro. Por lo cual tu bot podra enviar mensajes al canal. 

Para poder obtener la ID del canal solo tendemos que meternos a telegram desde el navegador y en la url del canal podremos ver el ID de dicho canal.

![idcanal](https://user-images.githubusercontent.com/74573174/153091401-ebce838a-b96f-4231-a3f9-ba0784a57cfe.png)

# Script para enviar mensajes
Creamos un archivo llamado **msg-telegram.sh** (o el nombre que mas te guste).

> nano msg-telegram.sh

Luego agregue el siguiente script a este archivo con el id del canal y el token del bot correspondientes.

![Captura de pantalla de 2022-02-09 00-53-12](https://user-images.githubusercontent.com/74573174/153095600-01cedb59-90ed-4106-92d0-f2ba1846eeb7.png)

Para ejecutar este script debemos agregarle permisos.

> chmod +x msg-telegram.sh

Ahora puedes probarlo.

> ./msg-telegram.sh "Hola Mundo"

Para poder usar este script desde todas las ubicaiones debemos moverlo a **/usr/bin/**.

> sudo mv msg-telegram.sh /usr/bin/msg-telegram **

El propietario de todos los archivos en /usr/bin es el usuario root.

> sudo chown root:root /usr/bin/msg-telegram

Ahora puedes probarlo.

> msg-telegram "Hola mundo"

# Enviar notificaiones al iniciar sesión SSH

Todos los archivos con la extension .sh que esten en la carpeta **/etc/profile.d/** se ejecutaran cada vez que inicies sesion.

Agregamos un nuevo scrip.

> nano login_ssh.sh

Agregue el siguiente código al script.

![Captura de pantalla de 2022-02-09 00-39-15](https://user-images.githubusercontent.com/74573174/153094187-82697897-cf66-4420-a5fb-2a49c6c83464.png)

Si lo ha creado en otra carpeta muevalo a **/etc/profile.d/**.

> mv login_ssh.sh /etc/profile.d/login_ssh.sh

**AHORA VUELVA A INICIAR SESIÓN EN SU SERVIDOR Y COMPRUEBE QUE FUNCIONA**

 

 
 
