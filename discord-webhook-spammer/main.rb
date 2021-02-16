# frozen_string_literal: true

require 'discordrb/webhooks'

WEBHOOK_URL = 'https://discord.com/api/webhooks/794773544314732565/ErJkwroCauTqegM2uZMYnyl5NY6kX-li_p5vLDur15n-fAufyjAkJgbV-8sp_LTVgRON'

client = Discordrb::Webhooks::Client.new(url: WEBHOOK_URL)

client.execute do |builder|
  builder.content = 'Hello world!'
end
