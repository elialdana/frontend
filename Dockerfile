#CONSTRUCCION DEL PROYECTO
FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/
CMD [ "NG" ]

FROM node:14-alpine
