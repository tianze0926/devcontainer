FROM ubuntu:jammy
WORKDIR /root
ARG DEBIAN_FRONTEND=noninteractive

# build-essential
RUN apt-get update &&\
    apt-get install -y build-essential

# fish
RUN apt-get install -y software-properties-common &&\
    apt-add-repository -y ppa:fish-shell/release-3 &&\
    apt-get update &&\
    apt-get install -y fish &&\
    chsh -s /usr/bin/fish

# code-server
RUN apt-get install -y curl
RUN curl -fsSL https://code-server.dev/install.sh | sh
COPY settings.json /root/.local/share/code-server/User/
RUN code-server --install-extension llvm-vs-code-extensions.vscode-clangd

RUN apt-get clean

CMD code-server --bind-addr 0.0.0.0:8080 --auth none