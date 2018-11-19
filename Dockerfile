FROM alpine-glibc:3.8
LABEL maintainer="shibadog99@gmail.com"
LABEL version="2.1.0"

WORKDIR /credhub

RUN wget https://github.com/cloudfoundry-incubator/credhub-cli/releases/download/2.1.0/credhub-linux-2.1.0.tgz
RUN tar -xzvf ./credhub-linux-2.1.0.tgz
RUN mv ./credhub /usr/bin/credhub

ENTRYPOINT [ "credhub" ]
CMD [ "--help" ]