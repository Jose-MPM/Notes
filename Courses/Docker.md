## Docker
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
ntory@flavor:~/Escritorio/CC/20241$ sudo docker exec -it mysql bash
bash-4.4# mysql -u root -p
