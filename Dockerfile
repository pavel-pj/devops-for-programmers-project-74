FROM node:20.12.2

# Устанавливаем make (нужен для вашего Makefile)
#RUN apt-get update && apt-get install -yq make

WORKDIR /app

COPY package.json .
COPY package-lock.json .

COPY ./app .

RUN npm ci

ENV FASTIFY_ADDRESS 0.0.0.0

CMD ["make","start"]
