#Primera Etapa
FROM node:14-alpine as build-step
RUN mkdir -p /app
WORKDIR /app
COPY . /app
#Segunda Etapa
FROM nginx:alpine

COPY --from=build-step /app /usr/share/nginx/html