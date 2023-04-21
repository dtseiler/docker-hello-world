FROM nginx:alpine
ARG version
COPY index.html /usr/share/nginx/html/index.html
RUN sed -i "s/VERSION/${version}/g" /usr/share/nginx/html/index.html
