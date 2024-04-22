# Use a lightweight web server like Nginx as our base image
FROM nginx:alpine 

# Create a working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove any existing default files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML website files into the container
COPY personal-details.html /usr/share/nginx/html
COPY Kaliprasanna_05132023_175514.jpg /usr/share/nginx/html

# Check the files upload or not
RUN ls -l /usr/share/nginx/html

# Expose the default Nginx port 
EXPOSE 80
