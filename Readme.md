# CMAK Docker Container

## Introduction

> An Docker container build to make easier manage kafka without need to install CMAK hardcode and it's dependencies.

> You will just need have  Zookeeper host or hosts runing and pass it with enviroment variable called ZK_HOSTS as the example bellow.

## Installation

> Just need to have Docker instaled <br><br> <code>docker run -d -p 9000:9000 -e ZK_HOSTS=zookeeperHostsIP globocom/cmak </code>
<br><br>
Building the container from  DockerFile 
<br><br>
<code>docker build -t imagetag . </code>

## Or use Docker Compose
