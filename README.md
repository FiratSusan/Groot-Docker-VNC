# Workaround for using Groot in Windows

Goal of this repo is to provide a Dockerfile which contains a VNC Server and compiles Groot for use on Windows.

### Usage
Run with
```sh
docker run -p 5900:5900 pablodockobar/vnc-groot
```

If you want to build the image locally
```sh
git clone https://github.com/FiratSusan/Groot-Docker-VNC
cd Groot-Docker-VNC
docker build -t pablodockobar/vnc-groot .
```

# References

For more Information regarding Groot:
https://github.com/BehaviorTree/Groot

VNC enabled via [**dorowu/ubuntu-desktop-lxde-vnc/**](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc/)