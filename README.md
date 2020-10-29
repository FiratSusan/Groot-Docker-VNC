# Workaround for using Groot in Windows

Goal of this repo is to provide a Dockerfile which contains a VNC Server and compiles Groot for use on Windows.

## Requirements
Docker https://docs.docker.com/get-docker/

VNC Viewer https://www.realvnc.com/de/connect/download/viewer/

## Usage
Run with:
```sh
docker run -p 5900:5900 pablodockobar/vnc-groot
```
The VNC Server will listen on **localhost:5900**.

Via the VNC Viewer access the container to open a Terminal with `CTRL+ALT+T` and directly execute `Groot`, to open the Editor.

If you want to build the image locally:
```sh
git clone https://github.com/FiratSusan/Groot-Docker-VNC
cd Groot-Docker-VNC
docker build -t pablodockobar/vnc-groot .
```

# References

For more Information regarding Groot:
https://github.com/BehaviorTree/Groot

VNC enabled by using this image as base: [**dorowu/ubuntu-desktop-lxde-vnc/**](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc/)