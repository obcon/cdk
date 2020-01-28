FROM alpine:3.11.3

RUN apk update && \
  apk upgrade && \
  apk add \
    nodejs npm zip unzip bash python3 && \
  npm install -g aws-cdk && \
  pip3 install awscli && \
  rm -rf /var/cache/apk/* && \
  update-ca-certificates
  
