require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module AeconomicoWeb
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    #configs copied from FLI
    config.assets.initialize_on_precompile = false
    config.encoding = "utf-8"

    config.assets.enabled = true
    
    config.assets.initialize_on_precompile = false
    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '4.0'
    
    config.autoload_paths << "#{Rails.root}/lib"
    #config.assets.paths << "#{Rails.root}/app/assets/videos"

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end
