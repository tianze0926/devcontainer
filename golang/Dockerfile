FROM golang:1.19
WORKDIR /root

RUN curl -fsSL https://code-server.dev/install.sh | sh
COPY settings.json /root/.local/share/code-server/User/

RUN code-server --install-extension golang.Go

CMD code-server --bind-addr 0.0.0.0:8080 --auth none