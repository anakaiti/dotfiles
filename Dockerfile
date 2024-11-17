FROM debian

RUN apt -qy update \
  && apt -qy full-upgrade \
  && apt -qy install build-essential procps curl file git

RUN bash -c "\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" \
  && eval "\$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" \
  && echo 'eval "\$(\$(brew --prefix)/bin/brew shellenv)"' >> ~/.bashrc

COPY Brewfile .

RUN brew bundle