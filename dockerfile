FROM ubuntu:16.04

LABEL maintainer Late Lee(li@latelee.org)

RUN apt-get update || true && \
    apt-get install -y \
    curl wget \
    pkg-config && \
    rm -rf /var/lib/dpkg/info/* /var/lib/apt/lists/*

RUN wget -c https://dl.k8s.io/v1.13.3/kubernetes-node-linux-amd64.tar.gz

RUN wget -c https://dl.k8s.io/v1.13.3/kubernetes-server-linux-amd64.tar.gz

RUN wget -c https://dl.k8s.io/v1.13.3/kubernetes.tar.gz

CMD ["/bin/bash"]
