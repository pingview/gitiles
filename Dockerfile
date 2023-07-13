FROM ubuntu:20.04

LABEL maintainer="Jia Jia <angersax@sina.com>"

USER root
WORKDIR /
ENV DEBIAN_FRONTEND=noninteractive
ENV TIME_ZONE=Asia/Shanghai
RUN apt update -y && \
    apt install -y apt-transport-https build-essential ca-certificates curl git inetutils-ping && \
    apt install -y maven net-tools software-properties-common telnet tzdata unzip vim zip && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt update -y && \
    apt install -y python3.8 && \
    ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime && echo $TIME_ZONE > /etc/timezone

USER root
WORKDIR /
RUN mkdir -p /opt/bazel/bin && \
    curl -L https://github.com/bazelbuild/bazel/releases/download/5.4.1/bazel-5.4.1-linux-x86_64 -o /opt/bazel/bin/bazel && \
    chmod +x /opt/bazel/bin/bazel
ENV PATH=/opt/bazel/bin:$PATH

USER root
WORKDIR /
ENV PATH=/opt/go/bin:$PATH
RUN curl -L https://go.dev/dl/go1.20.6.linux-amd64.tar.gz -o go.tar.gz && \
    tar zxvf go.tar.gz -C /opt && \
    go install github.com/bazelbuild/bazelisk@latest
ENV PATH=/root/go/bin:$PATH

USER root
WORKDIR /
RUN git clone https://gerrit.googlesource.com/gitiles -b v1.2.0 && \
    cd gitiles; git submodule update --init

USER root
WORKDIR /gitiles
RUN bazel build java/com/google/gitiles/dev
