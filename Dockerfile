ARG BASE_IMAGE=registry.access.redhat.com/ubi8/ubi:latest
FROM ${BASE_IMAGE}

ARG GCC_TOOLSET=13
ARG ENABLE_SCRIPT=/opt/rh/gcc-toolset-${GCC_TOOLSET}/enable

RUN dnf install -y \
        gcc-toolset-${GCC_TOOLSET}-gcc \
        gcc-toolset-${GCC_TOOLSET}-gcc-c++ \
        cmake \
        ninja-build \
        git \
    && dnf clean all

# Persist the enable script path so consumers know how to activate
ENV GCC_ENABLE_SCRIPT=${ENABLE_SCRIPT}

# Source the toolset on every bash invocation
RUN echo "source ${ENABLE_SCRIPT}" >> /etc/profile.d/gcc-toolset.sh

WORKDIR /workspace

SHELL ["/bin/bash", "--login", "-c"]
CMD ["/bin/bash", "--login"]