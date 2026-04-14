FROM registry.access.redhat.com/ubi8/ubi:latest

RUN dnf install -y \
        gcc-toolset-13-gcc \
        gcc-toolset-13-gcc-c++ \
        cmake \
        git \
    && dnf clean all

WORKDIR /workspace

CMD ["/bin/bash"]
