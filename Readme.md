# CMAK Docker Container 🐳

## Introduction

> An Docker container build to make easier manage kafka without need to install CMAK hardcoded and it's dependencies.

> You will just need have  Zookeeper host or hosts runing and pass it with enviroment variable called ZK_HOSTS as the example bellow.

## Installation

> Just need to have Docker installed <br><br> <code>docker container run -d -p 9000:9000 -e ZK_HOSTS=zookeeperHostsIP globocom/cmak </code>
<br>
Or
Building the container from  DockerFile 
<br><br>
<code>docker build -t imagetag . </code>

## Using Docker Compose 

> <code>git clone https://github.com/globocom/cmak </code> <br>
> <code>docker compose up (or pass -d for background running)</code> <br><br>
> The benefit of use the docker compose file instead of use docker run is that you don't need to pass the zookeeper variable or use an external zookeeper, the docker compose provides both zookeeper local container and the cmak application.
