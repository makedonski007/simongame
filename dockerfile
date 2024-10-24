#official Nginx image as the base image
FROM nginx:alpine

#working directory inside the container
WORKDIR /usr/share/nginx/html 

#removing the default Nginx static files
RUN rm -rf ./*

#coping the current directory contents into the container at the working directory
COPY . .

#exposing port 80 to the outside world
EXPOSE 80

#starting Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
