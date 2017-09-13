require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Workspace
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    
    Mongoid.load! './config/mongoid.yml'
    
    config.load_defaults 5.1
    
    # config.middleware.insert_before 0, "Rack::Cors" do
    #   allow do
    #     origins '*'
        
    #     resource '/api/*',
    #       :headers => :any,
    #       :methods => [:get, :post, :put, :delete, :options]
    #   end
    # end
    

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
