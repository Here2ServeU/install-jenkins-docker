### Step One: Define Your Docker Compose File
version: '3'
services:
  jenkins:
    image: jenkins/jenkins:lts
    container_name: jenkins
    ports:
      - "8080:8080"
      - "50000:50000"
    volumes:
      - jenkins_home:/var/jenkins_home

volumes:
  jenkins_home:

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

