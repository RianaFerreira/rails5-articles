require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Replace PK ID with a UUID
    # https://www.postgresql.org/docs/9.6/static/datatype-uuid.html
    # http://guides.rubyonrails.org/active_record_postgresql.html#uuid
    config.active_record.primary_key = :uuid
  end
end
