# frozen_string_literal: true

require 'slack-ruby-bot'
require_relative 'commands/weather_now'

SlackRubyBot::Client.logger.level = Logger::WARN

module SlackWeatherBot
  class Bot < SlackRubyBot::Bot
    help do
      title 'Weather Bot'
      desc 'This bot uses the Darksky API to provide weather forecasts.'

      command 'weather now' do
        desc 'Gives you your current weather information'
      end

      command 'weather tomorrow' do
        desc "Gives you tomorrow's forecast"
      end

      command 'weather in <location>?' do
        desc "Gives you tomorrow's forecast"
      end
    end
  end
end
