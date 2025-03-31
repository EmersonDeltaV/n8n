# Use the official n8n image as the base image
FROM n8nio/n8n:latest

# Switch to root user to perform operations that require root privileges
USER root

# Create the directories and set permissions for all users
RUN mkdir -p /.n8n && chmod -R 777 /.n8n \ 
	&& mkdir -p /home/node/.n8n && chmod -R 777 /home/node/.n8n \
    && mkdir -p /root/.n8n && chmod -R 777 /root/.n8n \
    && mkdir -p /home/data && chmod -R 777 /home/data \
    && chmod -R 777 /usr/local/lib/node_modules/n8n \
    && chmod -R 777 /usr \
	&& mkdir -p /.cache && chmod -R 777 /.cache

# Switch back to the node user
USER node