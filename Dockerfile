# Use a lightweight web server like Nginx as our base image
FROM nginx:alpine 

# Create a working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove any existing default files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML website files into the container
COPY . /usr/share/nginx/html

RUN ls -l /usr/share/nginx/html

# Expose the default Nginx port 
EXPOSE 80
