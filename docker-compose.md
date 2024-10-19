### Step One: Define Your Docker Compose File
***Use content from Docker-compose to create a file with the same name on your system.***
***Or, clone the repository to your local system.***

### Step Two: Run the Following Command
* docker-compose up -d

### Step Three: Access Jenkins
**Open a browser and go to http://localhost:8080** 
**(or http://<your-server-ip>:8080 if hosted remotely).**
***The initial Admin password is found in the container logs.***
***To get it, run this command:***
* docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

### Step Four: Manage the Jenkins Container
* docker-compose down -d

