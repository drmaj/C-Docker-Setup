FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y software-properties-common
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    ca-certificates \
    sudo \
    git \
    vim \
    cmake \
    ccache && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN adduser --disabled-password --gecos '' --shell /bin/bash user
RUN echo "user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/90-user
USER user

ENV HOME=/home/user
RUN chmod 777 /home/user

WORKDIR /home/user

CMD ["/bin/bash"]
