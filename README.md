# Aeropress Dice bot for Telegram

## Instructions
Create a Telegram bot by following official instructions: https://core.telegram.org/bots

Fill in the necessary environment variables:
```
cp .env.dist .env
```

Configure web server to proxy requests

Run bundler to install dependencies:
```
bundle install
```

Run the app:
```
rackup
```

Find your bot and send `/roll` command to it

## TODO
- Dockerize
- Add tests
- Add instructions for web server configuration
- Example of using
