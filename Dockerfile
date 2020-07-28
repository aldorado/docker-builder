FROM docker:latest

ARG KUBE_VERSION="1.15.1"

RUN apk add git curl
RUN curl -L https://storage.googleapis.com/kubernetes-release/release/v$KUBE_VERSION/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl
