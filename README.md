# Aeropress Dice bot for Telegram

## Instructions
Create a Telegram bot by following official instructions: https://core.telegram.org/bots

# Fill in the necessary environment variables:
```
cp .env.dist .env
```

# Configure web server to proxy requests
Example for nginx
```nginx
location /tgbot {
  proxy_pass http://127.0.0.1:9292;
  proxy_redirect     off;
  proxy_set_header   Host             $host;
  proxy_set_header   X-Real-IP        $remote_addr;
  proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;
}
```

# Build container image
```
docker build -t aerodicebot .
```

# Launch the container
```
docker run \
  --name aerodicebot \
  --publish 127.0.0.1:9292:9292/tcp \
  --restart always \
  --detach \
  -t -i \
  aerodicebot:latest
```

Find your bot and send `/roll` command to it

Or check out the bot at https://t.me/aerodicebot

## TODO
- rsyslog from container to the host system
- Add tests
