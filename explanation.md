# Overview

The explanation.md seeks to expound on my reasoning for the implementation of 

## Choice of the base image
 * The smallest possible base image and in this case alpine- was chosen. 
 * A Small image reduces the number of patches that need to be deployed; it also reduces the footprint of the image itself, so fewer  resources are wasted to deploy them

## Dockerfile directives used in the creation and running of each container
 * Directive is a command that is used to create a Docker image
 * In this project the common directives that were mainly used are
   - The **FROM** directive
   - The **RUN** directive
   - The **COPY** directive
   - The **CMD** directive
 
## Docker-compose Networking
*  By default, Docker Compose creates a single network for each container defined in the compose file
*  In this project, I choose 3000 react bridge network all containet seprate network

## Docker-compose volume definition and usage
 * Docker volumes basically create a link between one of the local folders on the system and the folder on the docker container.
 * Volumes are the preferred mechanism for persisting data generated by and used by Docker containers

## Successful running of the applications and if not, debugging measures applied
 * I added ** standard input** and set it as stdin_open: true. This means that the container will have an open STDIN stream when it is run. 

## Good practices such as Docker image tag naming standards for ease of identification of images and containers. 
 * images has been named and tagged correctly for ease of identification. Sample of the 2 images 
   - wnjenga/yolo-client:1.0.0
   -  wnjenga/yolo-backend:1.0.0
  * The same has been successfully pushed to dockerhub 