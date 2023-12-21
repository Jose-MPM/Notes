## Docker

La idea es que con docker puedes utilizar imágenes para ejecutar servicios típicos (por ejemplo un manejador de bases de datos, como MySQL. docker-compose es simplemente una forma estándar de declarar esos servicios (sería similar al pom.xml de un proyecto de java).

Spring tiene algunas herramientas/dependencias (como Hibernate) que te permiten poder generar todo el esquema de la base de datos (eso se puede configurar en el properties). De esta forma, se pueden seguir diferentes formas de trabajo, por ejemplo:

- Crear las entidades (POJO's, entities, models, etc) en Java, 
- Levantar un servidor de base de datos (de manera local, o utilizando docker) y crear una base de datos vacía (solo con el CREATE DATABASE)
-  configurar spring para que genere el esquema de la base de datos al iniciar la aplicación.

ntory@flavor:~/Escritorio/CC/20241/Technologies-for-internet-dev/SyL$ docker-compose --version
Docker Compose version v2.18.1
ntory@flavor:~/Escritorio/CC/20241/Technologies-for-internet-dev/SyL$ docker --version
Docker version 24.0.7, build afdd53b



- sudo systemctl enable docker
- to mysql
	- docker pull mysql
	- docker images
	- docker ps
### To start and Run: 
docker run --name mysql -p 3306:3306 -v mysql_volume:/var/lib/mysql/ -d -e "MYSQL_ROOT_PASSWORD=ACDC1928" mysql

- The options used in the command mean:
	- The –name is used for your container name.
    - -p option is used for port mapping.
    - The -v attach the volume data for your container.
    - -d will start and run the container in detached mode.
    - The -e option is used for setting a password for your MySQL.

### Connect To MySQL Docker Container

- docker exec -it mysql bash
- mysql -u root -p
ntory@flavor:~/Escritorio/CC/20241$ sudo docker exec -it syl-mysql-1 bash
bash-4.4# mysql -u root -p



To mysql:
la contraseña de root si es main

pero 
CREATE USER 'main'@'localhost' IDENTIFIED BY 'main';
GRANT ALL PRIVILEGES ON SyLDB.* TO 'main'@'localhost';
FLUSH PRIVILEGES;


verificar permisos

SHOW GRANTS FOR 'main'@'localhost';

