DOMAIN=runtimedev.com
EMAIL=manhpv151090@gmail.com

# Install certbot
sudo dnf install -y augeas-libs
sudo python3 -m venv /opt/certbot/
sudo /opt/certbot/bin/pip install --upgrade pip
sudo /opt/certbot/bin/pip install certbot
sudo ln -s /opt/certbot/bin/certbot /usr/bin/certbot

# Create pem file and copy
sudo certbot certonly -a manual \
    --agree-tos \
    --preferred-challenges dns \
    --rsa-key-size 2048 \
    --key-type rsa \
    --email $EMAIL \
    -d "$DOMAIN" \
    -d "*.$DOMAIN"

# Output
sudo cat /etc/letsencrypt/live/$DOMAIN/privkey.pem
sudo cat /etc/letsencrypt/live/$DOMAIN/fullchain.pem