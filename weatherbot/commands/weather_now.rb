# frozen_string_literal: true

module SlackWeatherBot
  module Commands
    class WeatherNow < SlackRubyBot::Commands::Base
      command 'weather now' do |client, data, _match|
        forecast = ForecastIO.forecast(40.7233, -74.0030).currently
        parsed_forecast = "*#{forecast.summary}*\n
          *Current Temp:* #{forecast.temperature}°F\n
          *#{forecast.precipProbability}%* chance of rain"
        client.say(channel: data.channel, text: parsed_forecast)
      end
    end
  end
end