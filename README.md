# Learn Docker
- Hands-on repository to learn about Docker

# Getting Started
## WSL Installation
- Before you can setup Docker on your local machine, you need to setup Windows Subsystem for Linux (WSL)
in order to install Docker. [See WSL installation guide](https://www.youtube.com/watch?v=_fntjriRe48&t=1s)

## Docker Installation
- Install Docker [See Docker installation guide](https://www.youtube.com/watch?v=5RQbdMn04Oc&list=PLhfrWIlLOoKNMHhB39bh3XBpoLxV3f0V9&index=2)

# Let's Dock!

1. Git clone this repository
2. Build Docker image with the following command (please don't forget to put the period on end of command!)
   ```Docker
   docker build -t hello-docker .
   ```
   Wait a couple of seconds before the image is completely build.
3. Check whether the image has been build with
   ```Docker
   docker image ls
   ```
   The following output should shown
   ```
   REPOSITORY     TAG       IMAGE ID       CREATED          SIZE
   hello_docker   latest    5c8a423dfed9   16 minutes ago   222MB
   ```
4. Spin the new container from the image with
   ```Docker
   docker run hello_docker 
   ```
5. The following output should shown
   ```
   hello wei
   hello wei
   hello wei
   ```
6. Congratulation you has successfully build a container and execute it!

# Use Case
- Deploying REST API with FastAPI with Docker to ECR with Fargate on ECS [see tutorial](https://beabetterdev.com/2023/01/29/ecs-fargate-tutorial-with-fastapi/)


# Source
1. [Docker Curriculum](https://docker-curriculum.com/)
2. [Dockerfile docs](https://docs.docker.com/reference/dockerfile/)
3. [Play with Docker](https://www.docker.com/play-with-docker/)

