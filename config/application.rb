require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FoodoraCollaborativeProject
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.serve_static_assets = true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

config_files = ['secrets.yml']

config_files.each do |file_name|
  file_path = File.join(Rails.root, 'config', file_name)
  config_keys = HashWithIndifferentAccess.new(YAML.safe_load(IO.read(file_path)))[Rails.env]
  config_keys.each do |k, v|
    ENV[k.upcase] ||= v
  end
end
