# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
require_relative 'weatherbot/bot'

Thread.abort_on_exception = true
Thread.new do
  SlackWeatherBot::Bot.run
end

run Rails.application
