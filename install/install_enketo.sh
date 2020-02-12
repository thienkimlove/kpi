#!/usr/bin/env bash
#sudo apt-get update
#sudo apt-get upgrade -y
#sudo apt-get autoremove -y
#sudo apt-get install -y git nginx htop build-essential redis-server checkinstall python
#sudo apt-get install -y gconf-service libasound2 libatk1.0-0 libatk-bridge2.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget

#sudo apt-get install -y nodejs
#sudo npm install -g pm2 npm

#cd ~
#git clone https://github.com/enketo/enketo-express.git
#cd enketo-express
# IMPORTANT : --unsafe-perm
#sudo npm install --production --unsafe-perm

#sudo systemctl stop redis
#sudo systemctl disable redis
#sudo systemctl daemon-reload

#sudo mv /etc/redis/redis.conf /etc/redis/redis-origin.conf
#sudo cp ~/enketo-express/setup/redis/conf/redis-enketo-main.conf /etc/redis/

#sudo cp ~/enketo-express/setup/redis/conf/redis-enketo-cache.conf /etc/redis/
#sudo systemctl enable redis-server@enketo-main.service
#sudo systemctl enable redis-server@enketo-cache.service

#sudo systemctl start redis-server@enketo-main.service
#sudo systemctl start redis-server@enketo-cache.service

#cp ~/enketo-express/config/default-config.json ~/enketo-express/config/config.json

#cd ~/enketo-express
#pm2 start app.js -n enketo
#pm2 save
#sudo pm2 startup ubuntu -u enketo

#testing
#curl --user enketorules: -d "server_url=https://kf.kobotoolbox.org&form_id=test" http://localhost:8005/api/v2/survey
#we must see the result json.

# pm2 status
# pm2 stop enketo
# pm2 start enteko

# setup nginx
#sudo rm /etc/nginx/sites-enabled/default
#ln -s /home/thienkimlove/enketo.scoach.vn /etc/nginx/sites-enabled/enketo.scoach.vn
#service nginx restart

# https
# see https://certbot.eff.org/lets-encrypt/ubuntubionic-nginx.html

sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-nginx

sudo certbot --nginx

# after completed, run sudo certbot renew --dry-run to add to cron renew