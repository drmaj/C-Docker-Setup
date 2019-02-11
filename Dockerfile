FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y software-properties-common
RUN apt-get update && apt-get install -y \
    build-essential \
    gdb \
    curl \
    ca-certificates \
    sudo \
    git \
    vim \
    python3 \
    python3-dev \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    libmysqlclient-dev \
    mc \
    nano \
    cmake \
    ccache && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

RUN sudo python3 -m pip install pip --upgrade
RUN sudo python3 -m pip install gdbgui

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN adduser --disabled-password --gecos '' --shell /bin/bash user
RUN echo "user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/90-user
USER user

ENV HOME=/home/user
RUN chmod 777 /home/user

WORKDIR /home/user

COPY start.sh start.sh
ENTRYPOINT ["./start.sh"]

#CMD ["/bin/bash"]
