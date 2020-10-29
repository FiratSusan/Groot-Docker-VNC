FROM dorowu/ubuntu-desktop-lxde-vnc

RUN apt update
RUN apt install -y git cmake qtbase5-dev libqt5svg5-dev libzmq3-dev libdw-dev g++ gedit

WORKDIR /Groot

RUN git clone https://github.com/BehaviorTree/Groot.git /Groot
RUN git submodule init
RUN git submodule update
RUN mkdir build && cd build && cmake .. && make

RUN echo '  <keybind key="C-A-t"> \
  <action name="Execute"> \
    <command>lxterminal</command> \
  </action> \
</keybind>' > /tmp/keybinding

RUN sed -i -e '/<!-- Keybindings for desktop switching -->/r /tmp/keybinding' /etc/xdg/openbox/rc.xml

ENV PATH="/Groot/build/:${PATH}"