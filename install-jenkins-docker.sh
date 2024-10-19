# Pre-requisites
## => Docker is installed
docker --version  # To verify if Docker is installed

# Step One: 
docker pull jenkins/jenkins:lts  # To pull the Jenkins Docker image

# Step Two: Run Jenkins Container
docker run -d --name jenkins \
  -p 8080:8080 -p 50000:50000 \
  -v jenkins_home:/var/jenkins_home \
  jenkins/jenkins:lts

## -d: Run the container in detached mode.
## --name jenkins: Name the container “jenkins”.
## -p 8080:8080: Map port 8080 on the host to port 8080 in the container (for web interface).
## -p 50000:50000: Map port 50000 (for Jenkins agents).
## -v jenkins_home:/var/jenkins_home: Persist Jenkins data to a Docker volume (jenkins_home).

# Step Three: Access Jenkins
## Open a browser and go to http://localhost:8080 
## (or http://<your-server-ip>:8080 if hosted remotely).
## The initial Admin password is found in the container logs.
## To get it, run this command:
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

# Step Four: Setup Your Account

# Step Five: Manage the Jenkins Container
docker stop jenkins  # To stop Jenkins
docker start jenkins # To start Jenkins
docker rm jenkins  # To remove the Jenkins container

