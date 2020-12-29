# copy over our built project code to the container (this is done in a separate step in case you need any additional Node build steps here)
FROM node:12-alpine
WORKDIR /usr/app
COPY ./dist ./dist

# copy our application code to the final container, which runs nginx, and also copy over our nginx configuration to expose our Angular app.
FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=0 /usr/app/dist/gc-ui /usr/share/nginx/html

# expose our container on port 80
EXPOSE 80
