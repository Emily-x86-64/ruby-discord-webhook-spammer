# frozen_string_literal: true

require 'discordrb'
require 'discordrb/webhooks'

puts "Discord Webhook Spammer\n©2021 by Scott"
puts 'Enter the url of the webhook you would like to spam: '
WEBHOOK_URL = gets.chomp.to_s
puts "Enter the message you would like to send\nfor pings, channel mentions and the like you would use the discord plain text format. ex <@user_id> for a ping."
Message = gets.chomp.to_s
puts 'Enter the username you want the webhook to display as: '
Name = gets.chomp.to_s
puts "How many threads do you want to run?\nmore threads does mean faster however you can get rate limited"
Threads = gets.chomp.to_i

client = Discordrb::Webhooks::Client.new(url: WEBHOOK_URL)

client.execute do |builder|
  builder.username = Name
  builder.content = Message
end
