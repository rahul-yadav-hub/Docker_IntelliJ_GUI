# Docker_IntelliJ_GUI
Build docker image to run IntelliJ IDEA as a GUI application in the container. 

## Prerequisites
- Should have GUI based Linux host machine.
- Should have docker engine installed and running.
- Should have downloaded zip file of IntelliJ IDEA from https://download-cdn.jetbrains.com/idea/ideaIC-2021.1.1.tar.gz 

## Build the image
mv ideaIC-2021.1.1.tar.gz Docker_IntelliJ_GUI/

cd Docker_IntelliJ_GUI/

docker build -t imagename:v1 .

## Launch the image to run the application
docker run -it --name anyname --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix imagename:v1

