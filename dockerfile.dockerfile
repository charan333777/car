# Use an official Nginx base image
FROM nginx:latest

# Copy your custom configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your web application files to the default Nginx public HTML directory
COPY ./your-web-app /usr/share/nginx/html

# Expose the port on which Nginx will run
EXPOSE 80

# Define the default command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
