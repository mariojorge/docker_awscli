FROM alpine:3.18

# Atualizar os pacotes e instalar dependências necessárias
RUN apk update && apk add --no-cache \
  docker \
  openrc \
  curl \
  python3 \
  py3-pip \
  bash \
  aws-cli

#RUN addgroup -S docker && adduser -S docker-user -G docker
COPY daemon.json /etc/docker/daemon.json

CMD [ "tail", "-f", "/dev/null" ]

