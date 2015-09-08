FROM google/nodejs

# Install supervisord
RUN apt-get update && apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

WORKDIR /app
COPY package.json /app/
RUN npm install
COPY . /app

EXPOSE 8080

CMD ["/usr/bin/supervisord"]
