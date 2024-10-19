### Step One: Define Your Docker Compose File
***Use the file, Docker-compose***

### Step Two: Run the Following Command
docker-compose up -d

### Step Three: Access Jenkins
**Open a browser and go to http://localhost:8080** 
**(or http://<your-server-ip>:8080 if hosted remotely).**
***The initial Admin password is found in the container logs.***
***To get it, run this command:***
* docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

### Step Four: Manage the Jenkins Container
docker-compose down -d

