FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y \
        build-essential \
        cmake \
        unzip \
        wget \
        vim \
        git \
        wget \
        libblas-dev \
        liblapack-dev \
        libboost-all-dev \
        libhdf5-dev \
        libmetis-dev \
        libopenmpi-dev \
        libyaml-cpp-dev \
        openmpi-bin \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /mnt/hst

# Install deal.II
RUN apt-get update && \
    apt-get install -y libdeal.II-dev && \
    rm -rf /var/lib/apt/lists/*

CMD ["./build_and_run.sh"]