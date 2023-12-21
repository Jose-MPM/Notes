# Project to IoT
#include <Wire.h>
#include "SparkFunBME280.h"
para que?
- to foto con bot:	
	- https://randomnerdtutorials.com/telegram-esp32-cam-photo-arduino/
- with chip: https://www.youtube.com/watch?v=tgaqegUNNyE
- me: 
	- https://www.youtube.com/watch?v=UA3cqgpFHXw
	- https://www.youtube.com/watch?v=UA3cqgpFHXw
- with pcb: https://randomnerdtutorials.com/esp32-cam-shield-pcb-telegram/
- with sensor the best tutorial: https://www.youtube.com/watch?v=UA3cqgpFHXw
- with people : 
- to save on micro xd: https://randomnerdtutorials.com/esp32-cam-pir-motion-detector-photo-capture/


- DEDINE TU OBJETIVO:
	- Requerrimientos Mínimos, que realizaras
		- Uso de un sensor PIR (sensor infrarrojo pasivo) para detectar cambios en el entorno cuando se detecte movimiento y así activar la captura de imágenes. Después de capturar la imagen, podríamos configurar la ESP32-CAM para enviar la foto a través de Telegram.
	- Qué vas a necesitar?
		- Lista de componentes:
			- esp32: 
				- datasheet
					- https://docs.ai-thinker.com/en/esp32-cam
				- png
					- https://docs.ai-thinker.com/_detail/esp32/boards/269b17ad-f1e6-4295-a407-45300983906e.png?id=en%3Aesp32-cam
	- cuanto cobraras?
		- Minimo el doble de los componentes
		- El trabajo que te costo, aunque te sea facil, tiempo,
	- metodologia
		- programación	
			- que lenguaje es emjor para resolver tan cosa?
				- software forma parte la lista de controladores
					- microcontroladores
		- electronica:
			- diagrama esquematico
				- dibujar las conexiones
			- dibujar el board
			- diagrama de board_: hacer las conexiones en 
				- fusion360
			- prueba en la protoboard, prueba que todo jale.
		- mecanica:	
			- 

- Puedo agregar una fotoresistencia? para que de acuerdo a esta señal modifique la luz del flash integrado.
	- https://www.youtube.com/watch?v=Yjoqbzh14YM
	- https://www.google.com/search?client=firefox-b-d&q=led+de+alta+potencia+para+conectar+a+una+esp32+cam

- What I need?
	- esp32cam-modulo-esp32-cam-camara-ov2640-arduino-wifi-blueto
	- https://programarfacil.com/esp32/esp32-cam/
		- esp32-cam pinout
		- pin out
		- en la esp
			- regula la intensidad del led con una resistencia
				- la resistencia es para regular la intensidad
					- Resistencia = V/I
						- la intensidad depende del color de led 
							- los orjos con 24 milivolts
						- 220 V 
			- los pines d's proporcionan 
			- gnd pin de tierra
		- bin y gnd to alimentacion 3.3v
			- ley de ohm
				- V-RI
		- como server
			- https://hetpro-store.com/TUTORIALES/esp32-cam-como-servidor-web-con-camara/
	- breadboard
	- fotoresistencia LDR 2-6k GI5506 datasheet
	- un sensor PIR Hc-sr501 

- to do:	
	-  https://www.youtube.com/watch?v=k_PJLkfqDuI




- to telegram:
	- https://randomnerdtutorials.com/telegram-esp32-cam-photo-arduino/
	- with pir sensonr:https://www.youtube.com/watch?v=UA3cqgpFHXw	 
	- diagrama
		- https://docs.ai-thinker.com/_detail/esp32/boards/269b17ad-f1e6-4295-a407-45300983906e.png?id=en%3Aesp32-cam

- video:https://www.youtube.com/watch?v=k_PJLkfqDuI
	- https://github.com/s60sc/ESP32-CAM_MJPEG2SD
	- https://github.com/iotechbugs/esp32-arduino/blob/master/docs/arduino-ide/boards_manager.md

- Referencias:
	- Para instalar la placa y probar puerto  https://randomnerdtutorials.com/installing-the-esp32-board-in-arduino-ide-windows-instructions/
	- with FTDI: https://randomnerdtutorials.com/program-upload-code-esp32-cam/
	- to fix Linux driver
		- https://learn.sparkfun.com/tutorials/how-to-install-ch340-drivers/linux

	pin flash 4


	como defines el complemento? 
	nosotros podemos suponer que NP=P -> todos son cerrados
	si asuminos que NP=P siguen siendo cerrados pero ya no nos deberia de importar coNP y NP

- puertas y tanques
- conectarle algo para fixear eltimeout
	- https://randomnerdtutorials.com/solved-failed-to-connect-to-esp32-timed-out-waiting-for-packet-header/

- upload code
	- https://randomnerdtutorials.com/program-upload-code-esp32-cam/

- about esp32 cam
	- 


- despues de enviar
	- quitamos el jumper, presionamos reset y abrimos el monitor para ver la info de arduino

https://dl.espressif.com/dl/package_esp32_index.json,
http://arduino.esp8266.com/stable/package_esp8266com_index.json,
https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json

https://dl.espressif.com/dl/package_esp32_index.json,
http://arduino.esp8266.com/stable/package_esp8266com_index.json

- library:
	- https://github.com/yoursunny/esp32cam

- program=sketch 

- bot:
	- oraculo
	- username
		- OraculoCamBot
		- http://t.me/OraculoCamBot
	- token to access the HTTP API: 6981655842:AAH7h991O13xvz2AIOr7bGyWK-1a82JsT7M

	- NtoryCamBot
	- NtoryCamBot
	- 6892080700:AAEKUectM8_3qK7jImJR3DFYNire1sTP5-g
	- Your own ID is: 6230497577

- arduinobot:
	- https://github.com/witnessmenow/Universal-Arduino-Telegram-Bot




For a description of the Bot API, see this page: https://core.telegram.org/bots/api

- to bots
	- https://noroute2host.com/creat-bot-telegram.html
	https://robotzero.one/telegram-bot-esp32cam/
	https://randomnerdtutorials.com/telegram-esp32-cam-photo-arduino/
	inly bot: https://randomnerdtutorials.com/telegram-esp32-cam-photo-arduino/
	https://blog.330ohms.com/2021/03/09/crea-tu-propio-bot-de-telegram-con-esp32/
	https://blog.330ohms.com/2021/03/09/crea-tu-propio-bot-de-telegram-con-esp32/
	- SIN CAM
		- https://bugeados.com/arduino/crea-un-bot-en-telegram-para-tus-proyectos-con-arduino/
	- libreria bot: https://github.com/witnessmenow/Universal-Arduino-Telegram-Bot
- ESP32 doc: https://github.com/raphaelbs/esp32-cam-ai-thinker/blob/master/docs/esp32cam-pin-notes.md
	- https://docs.platformio.org/en/latest/boards/espressif32/esp32cam.html
- how use esp32 https://all3dp.com/2/esp32-cam-arduino-tutorial/