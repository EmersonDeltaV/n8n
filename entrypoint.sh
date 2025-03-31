#!/bin/sh

# Change ownership of /home/node/n8n and /home/node/.n8n to user "node" (1000:1000)
chown -R 1000:1000 /home/node/n8n /home/node/.n8n
chown -R node:node /home/node/n8n /home/node/.n8n

# Execute the original command
exec "$@"