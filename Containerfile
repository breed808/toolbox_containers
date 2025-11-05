FROM registry.fedoraproject.org/fedora-toolbox:43
RUN dnf install -y \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-43.noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-43.noarch.rpm \
    && curl https://rpm.releases.hashicorp.com/fedora/hashicorp.repo -o /etc/yum.repos.d/hashicorp.repo \
    && dnf copr enable -y breed808/general && dnf clean all -y
RUN dnf copr enable -y breed808/general
RUN dnf install -y \
    bat \
    dos2unix \
    fd-find \
    fish \
    fzf \
    gcc-c++ \
    git-delta \
    helm \
    hexyl \
    htop \
    httpie \
    hyperfine \
    ipcalc \
    k9s \
    keychain \
    kitty-terminfo \
    kubernetes-client \
    ldns-utils \
    lnav \
    lua-language-server \
    neovim \
    nmap \
    nodejs-bash-language-server \
    nvim-ale-ansible \
    nvim-ale-dockerfile \
    nvim-ale-go \
    nvim-ale-python \
    nvim-ale-sh \
    nvim-ale-text \
    pinentry-tty \
    python3-lsp-server \
    python3-neovim \
    ripgrep \
    ruby \
    skopeo \
    stow \
    terraform \
    terraform-ls \
    tokei \
    vivid \
    yaml-language-server \
    zstd \
    && dnf clean all -y
