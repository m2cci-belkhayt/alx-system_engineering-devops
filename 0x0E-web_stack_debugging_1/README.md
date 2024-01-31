**README**

**Debugging Nginx Listening Issue**

---

**Objective:**

The objective of this task is to debug and resolve an issue where the Nginx installation on an Ubuntu container is not listening on port 80. We aim to automate the fix using a Bash script while ensuring that Nginx is running and listening on port 80 of all the server's active IPv4 IPs.

---

**Steps Taken:**

1. **Diagnosis:** Initially, the issue was identified by attempting to curl port 80, resulting in a "Connection refused" error.

2. **Debugging:** The provided script `0-nginx_likes_port_80` was executed. Upon running this script, Nginx started listening on port 80 and successfully served content.

---

**Solution:**

To automate the fix, a Bash script named `fix-nginx-port.sh` was created. This script installs Nginx if not already installed, configures Nginx to listen on port 80 of all active IPv4 IPs, and restarts the Nginx service.

---

**Bash Script:**

```bash
#!/bin/bash

# Install Nginx if not already installed
apt-get update
apt-get install nginx -y

# Configure Nginx to listen on port 80 of all active IPv4 IPs
sed -i '/listen 80;/c\    listen 80 default_server;' /etc/nginx/sites-available/default

# Restart Nginx
service nginx restart
