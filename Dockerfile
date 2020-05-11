FROM hashicorp/terraform:0.12.24

ARG VERSION=0.12.24

RUN apk --no-cache add python3 python3-dev py-pip ca-certificates npm && \
    rm -rf /var/cache/apk/* && \
    update-ca-certificates

WORKDIR /opt/app
