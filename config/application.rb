# frozen_string_literal: true

require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Things
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Use a real queuing backend for Active Job (and separate queues per environment)
    config.active_job.queue_adapter = :delayed_job

    # moved lib to app/lib since that's automatically eager/auto loaded
    # and actual ./lib has other development only classes in it that
    # don't have their dependencies loaded in production environment
    # and hence make rails server fail to launch
    # config.paths.add( "lib", eager_load: true )

    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Don't generate system test files.
    config.generators.system_tests = nil

    config.generators do |g|
      g.test_framework false
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.channel assets: false
    end
  end
end
