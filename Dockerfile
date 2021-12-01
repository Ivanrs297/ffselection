FROM ubuntu:18.04

RUN apt-get update && \
    apt-get -y install sudo && \
    apt-get -y install python3 && \
    apt -y install python3-pip

WORKDIR /ffselection

COPY . .

RUN ln -sf /usr/bin/python3 /usr/bin/python && \
    ln -sf /usr/bin/pip3 /usr/bin/pip

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker

CMD /bin/bash