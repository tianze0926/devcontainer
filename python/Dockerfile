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

# https://github.com/jupyter-lsp/jupyterlab-lsp
RUN pip install 'jupyterlab>=3.0.0,<4.0.0a0' jupyterlab-lsp &&\
    pip install 'python-lsp-server[all]' &&\
    ln -s / .lsp_symlink

RUN apt-get clean

CMD jupyter lab --ContentsManager.allow_hidden=True --allow-root --ip=0.0.0.0 --port=8080 --LabApp.token=''