FROM continuumio/miniconda3
WORKDIR /root
ARG DEBIAN_FRONTEND=noninteractive

# fish
RUN apt-get update &&\
    apt-get install -y gpg curl &&\
    echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_11/ /' | tee /etc/apt/sources.list.d/shells:fish:release:3.list &&\
    curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:3/Debian_11/Release.key | gpg --dearmor | tee /etc/apt/trusted.gpg.d/shells_fish_release_3.gpg > /dev/null &&\
    apt-get update &&\
    apt-get install -y fish &&\
    chsh -s /usr/bin/fish
RUN conda init fish

# code-server
RUN apt-get install -y curl
RUN curl -fsSL https://code-server.dev/install.sh | sh
COPY settings.json /root/.local/share/code-server/User/
RUN code-server --install-extension ms-python.python

RUN apt-get clean

CMD code-server --bind-addr 0.0.0.0:8080 --auth none