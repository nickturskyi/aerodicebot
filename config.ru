require 'dotenv'
require './aerodicebot.rb'

Dotenv.load

run AerodiceBot.new(
  :tg_bot_token => ENV['TG_BOT_TOKEN'],
  :webhook_url => ENV['WEBHOOK_URL']
)
