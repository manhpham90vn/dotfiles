# https://github.com/pyenv/pyenv?tab=readme-ov-file#basic-github-checkout
git clone --depth 1 https://github.com/pyenv/pyenv.git "$HOME/.pyenv"

sudo apt update
sudo apt install -y build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev curl \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev