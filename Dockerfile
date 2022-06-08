FROM httpd:latest

# Just my name who wrote this file
MAINTAINER Samy

# Copy your custom index file in the htdocs repo
COPY ./index.html /usr/local/apache2/htdocs/

# To tell docker to expose this port
EXPOSE 80

# The Base command, This command should be used to start the container
# Remember, A Container is a Process.As long as the base process (started by base cmd) is live the Container will be ALIVE.
CMD ["httpd", "-D", "FOREGROUND"]