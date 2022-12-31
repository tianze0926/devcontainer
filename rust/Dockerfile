FROM rust:1.66
WORKDIR /root

RUN curl -fsSL https://code-server.dev/install.sh | sh
COPY settings.json /root/.local/share/code-server/User/

RUN code-server --install-extension rust-lang.rust-analyzer

CMD code-server --bind-addr 0.0.0.0:8080 --auth none