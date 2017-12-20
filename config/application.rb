require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Ytpush
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    Yt.configuration.api_key = ENV["YOUTUBE_API_KEY"]
    Yt.configuration.log_level = :debug
    Yt.configuration.client_id = ENV["YOUTUBE_CLIENT_ID"]
    Yt.configuration.client_secret = ENV["YOUTUBE_CLIENT_SECRET"]

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
