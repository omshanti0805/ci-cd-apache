# The Base Image used to create this Image
FROM httpd:latest

#Copy my conf file
COPY ./apache-conf/httpd.conf /usr/local/apache2/conf/httpd.conf

# Add n number of v hosts
RUN mkdir -p /usr/local/apache2/conf/sites/

COPY ./apache-conf/dummy.conf /usr/local/apache2/conf/sites
COPY ./apache-conf/hariom.conf /usr/local/apache2/conf/sites







# To tell docker to expose this port
#EXPOSE 80
# The Base command, This command should be used to start the container
# Remember, A Container is a Process.As long as the base process (started by base cmd) is live the Container will be ALIVE.
#CMD ["httpd", "-D", "FOREGROUND"]