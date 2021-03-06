require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Hack2save
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.i18n.load_path = Dir[Rails.root.join("config/locales/**/*.{rb,yml}")]
		
		config.i18n.default_locale = :'pt-BR'
		
		config.generators do |g|
			g.assets false
			g.helper false
			g.stylesheets false
		end
  end
end
