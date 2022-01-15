# vim: ft=dockerfile

ARG UBUNTU_VERSION=20.04

FROM docker.io/library/ubuntu:${UBUNTU_VERSION}

ARG NEOVIM_CHANNEL=stable

ENV TZ=Etc/UTC

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install --yes software-properties-common

RUN add-apt-repository ppa:neovim-ppa/${NEOVIM_CHANNEL} && \
    apt update && \
    DEBIAN_FRONTEND=noninteractive apt install --yes \
      git \
      neovim \
      python3-dev \
      python3-neovim \
      python3-pip \
      python-is-python3 \
      tmux \
      nodejs \
      npm \
      yarnpkg \
      ripgrep \
      fd-find

RUN update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60 && \
    update-alternatives --config vi && \
    update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60 && \
    update-alternatives --config vim && \
    update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60 && \
    update-alternatives --config editor

RUN groupadd developer && \
    useradd -s /bin/bash -d /home/developer -m -g developer developer

USER developer
WORKDIR /home/developer

RUN /bin/echo "/bin/tmux new-session nvim" > start.sh

RUN git clone https://github.com/FilBot3/neovim-config.git /home/developer/.config/nvim

ENV TERM=xterm-256color

ENTRYPOINT ["/bin/bash"]

CMD ["/home/developer/start.sh"]

LABEL RUN="podman run --rm --interactive --name=\"Neovim\" --hostname=\"neovim\" --tty IMAGE"
