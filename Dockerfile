FROM nginx:alpine

# Set the app
ENV APP_FOLDER=/var/www/html

# Set the working directory
WORKDIR $APP_FOLDER

# Copy your website files to the Nginx HTML directory
COPY . $APP_FOLDER/

# Expose port 80 for web access
EXPOSE 80

# Correct CMD for Nginx
CMD ["nginx", "-g", "daemon off;"]
