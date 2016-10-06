from ubuntu

# Install dependencies
env DEBIAN_FRONTEND=noninteractive
run apt-get update && \
    apt-get install -yq software-properties-common && \
    apt-add-repository -y ppa:adrozdoff/emacs && \
    apt-get update && \
    apt-get install -yq emacs25

workdir /files

entrypoint ["emacs"]
