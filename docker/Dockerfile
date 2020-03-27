FROM debian:sid

RUN apt-get update
RUN apt-get -y install python git automake libtool build-essential cmake libglib2.0-dev closure-compiler git

RUN useradd -c 'Usa' -m -d /home/u -s /bin/bash u
USER u

# get emsdk
WORKDIR /home/u
RUN git clone https://github.com/emscripten-core/emsdk.git

WORKDIR /home/u/emsdk

RUN ./emsdk install emscripten-1.37.40
RUN ./emsdk activate emscripten-1.37.40

RUN ./emsdk install sdk-fastcomp-1.37.40-64bit
RUN ./emsdk activate sdk-fastcomp-1.37.40-64bit

RUN ./emsdk install fastcomp-clang-e1.37.40-64bit
RUN ./emsdk activate fastcomp-clang-e1.37.40-64bit
