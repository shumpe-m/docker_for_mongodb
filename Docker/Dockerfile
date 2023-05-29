FROM osrf/ros:noetic-desktop-full

WORKDIR /root/

ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics
ENV DEBIAN_FRONTEND=noninteractive


########################
### INSTALL PACKAGES ###
########################
RUN apt-get update && apt-get install -y \
    sudo \
    vim \
    wget \
    unzip \
    git \
    iputils-ping \
	net-tools \
    curl \
	init \
    build-essential \
    gcc \
    g++ \
    gnupg \
    make \
    libtool \
    texinfo \
    dpkg-dev \
    pkg-config \
    libcurl4-openssl-dev \
    libssl-dev \
    python3 \
    python3-dev \
    python3-setuptools \
    python3-pip

#########################
### INSTALL MongoDB   ###
#########################
RUN apt purge -y mongodb*
RUN curl -fsSL https://pgp.mongodb.com/server-6.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-6.0.gpg \
   --dearmor
RUN echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list && \
    apt-get update && apt-get install -y mongodb-org && \
    echo "mongodb-org hold" | sudo dpkg --set-selections && \
    echo "mongodb-org-database hold" | sudo dpkg --set-selections && \
    echo "mongodb-org-server hold" | sudo dpkg --set-selections && \
    echo "mongodb-mongosh hold" | sudo dpkg --set-selections && \
    echo "mongodb-org-mongos hold" | sudo dpkg --set-selections && \
    echo "mongodb-org-tools hold" | sudo dpkg --set-selections

