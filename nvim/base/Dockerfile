FROM archlinux

RUN pacman --noconfirm -Syu &&\
    pacman --noconfirm -S pacman-contrib base-devel fish \
      neovim git lazygit ripgrep fd \
      npm

RUN useradd --create-home --user-group --shell /usr/bin/fish abc &&\
    echo 'abc ALL=(ALL:ALL) NOPASSWD: ALL' > /etc/sudoers
USER abc
WORKDIR /home/abc

RUN git clone https://github.com/LazyVim/starter ~/.config/nvim &&\
    rm -rf ~/.config/nvim/.git
ADD --chown=abc:abc lua/ .config/nvim/lua/
RUN nvim --headless -c "Lazy! sync" \
      -c "Lazy! load mason.nvim" \
      -c "MasonInstall lua-language-server json-lsp" \
      -c qa

USER root
ADD init.fish /init/
ENTRYPOINT ["/usr/bin/fish", "/init/init.fish"]

