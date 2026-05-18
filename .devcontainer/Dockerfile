FROM mcr.microsoft.com/devcontainers/base:noble

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install \
    git \
    build-essential \
    autoconf \
    automake \
    bison \
    flex \
    gawk \
    libtool \
    libtool-bin \
    libncurses-dev \
    curl \
    file \
    git \
    gperf \
    help2man \
    ripgrep \
    texinfo \
    unzip \
    wget \

    # For the sdk
    curl \
    sed \
    libarchive-dev \
    nettle-dev \

    # direnv is required by the VS Code Dev Container extension
    direnv \

    # GTK dependencies
    ninja-build \
    pkgconf \
    libglib2.0-bin \
    libglib2.0-dev-bin \
    ccache \

    # for newer Meson than Ubuntu Noble has
    python3 \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    pipx

RUN sudo -u vscode pipx install meson

COPY setup-toolchain.sh /tmp/setup-toolchain.sh
RUN /tmp/setup-toolchain.sh
