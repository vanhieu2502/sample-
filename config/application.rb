require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.action_mailer.perform_deliveries = true
        config.action_mailer.raise_delivery_errors = true
        config.action_mailer.delivery_method = :smtp
        config.action_mailer.default_url_options = {host: "localhost", port: 3000}
        config.action_mailer.smtp_settings = {
          address:              "smtp.gmail.com",
          port:                 587,
          domain:               "google.com",
          user_name:            "awesome.academy.test@gmail.com",
          password:             "Aa@123456",
          authentication:       'plain',
          enable_starttls_auto: true
        }

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Include the authenticity token in remote forms.
    config.action_view.embed_authenticity_token_in_remote_forms = true

  end
end
