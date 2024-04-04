# Learn Docker 🐳
- Hands-on repository to learn about Docker

# Getting Started

## Run on Playground
- No installation need, just use the [sandbox](https://labs.play-with-docker.com/)!

## Local Development
### WSL Installation
- Before you can setup Docker on your local machine, you need to setup Windows Subsystem for Linux (WSL)
in order to install Docker. [See WSL installation guide](https://www.youtube.com/watch?v=_fntjriRe48&t=1s)

### Docker Installation
- Install Docker [See Docker installation guide](https://www.youtube.com/watch?v=5RQbdMn04Oc&list=PLhfrWIlLOoKNMHhB39bh3XBpoLxV3f0V9&index=2)

# Let's Dock!

1. Git clone this repository in [Docker Sandbox](https://labs.play-with-docker.com/).
2. `cd` into `/learn_docker`.
3. Build Docker image with the following command 
   ```Docker
   docker build -t hello-docker .
   ```
   > Don't forget to put the period at the end of the command!
   Wait a couple of seconds before the image is completely build.

4. Check whether the image has been build with
   ```Docker
   docker image ls
   ```
   The following output should shown
   ```
   REPOSITORY     TAG       IMAGE ID       CREATED          SIZE
   hello_docker   latest    5c8a423dfed9   16 minutes ago   222MB
   ```
5. Spin the new container from the image with
   ```Docker
   docker run hello_docker 
   ```
6. The following output should shown
   ```
   hello wei
   hello wei
   hello wei
   ```
7. Show all container with command
   ```
   docker ps -a
   ```
   Output will show the existing container 
   ```
   CONTAINER ID   IMAGE          COMMAND                  CREATED
   8a203ca5aa3d   hello_docker   "/bin/sh -c 'python …"   5 seconds 
   ```
8. To delete the container, run command
   ```Docker
   docker rm 8a203ca5aa3d
   ```
   `docker rm <container_id>`
9. After than you can delete the image with 
   ```Docker
   docker rmi 5c8a423dfed9
   ```
   `docker rmi <image_id>`

> NOTE: To delete image, you need to delete the container first (due to container is the runnable instance of image)
10. Congratulation you has successfully build with Docker! 🐳🎉

# Use Case
- Deploying REST API with FastAPI, wrapped with Docker to ECR with Fargate on ECS [see tutorial](https://beabetterdev.com/2023/01/29/ecs-fargate-tutorial-with-fastapi/)


# Source
1. [Docker Curriculum](https://docker-curriculum.com/)
2. [Dockerfile docs](https://docs.docker.com/reference/dockerfile/)
3. [Play with Docker](https://www.docker.com/play-with-docker/)

