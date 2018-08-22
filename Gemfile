# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

gem "omniauth-auth0"
gem "aws-sdk-s3"
gem "delayed_job_active_record"
gem "delayed_job_recurring"
gem "daemons"
gem "logidze"

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails"# , "~> 5.2.0.rc2"
# Use postgresql as the database for Active Record
gem "pg" # , ">= 0.18", "< 2.0"
# Use Puma as the app server
gem "puma" # , "~> 3.11"

# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# gem "webpacker", "~> 3.5.5"
gem 'webpacker', git: 'https://github.com/rails/webpacker.git'
gem "react-rails"# , "~> 2.4.5"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder"# , "~> 2.5"
# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"
# Use ActiveModel has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Use ActiveStorage variant
gem "mini_magick"# , "~> 4.8"

# Use Capistrano for deployment
# gem "capistrano-rails", group: :development

# Reduces boot times through caching; required in config/boot.rb
# gem "bootsnap", ">= 1.1.0", require: false


# use in prod too for now
gem "faker"

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara"
  gem "selenium-webdriver"
  gem "rspec-rails"
  # gem "faker" # pulled out for prod too for now while still seeding prod
  gem "rubocop"
  gem "factory_bot"
  gem "factory_bot_rails"
  gem "dotenv"
  gem "rails-erd"
end

group :development do
  # Access an interactive console on exception pages or by calling "console" anywhere in the code.
  gem "web-console"# , ">= 3.3.0"
  gem "listen", ">= 3.0.5"# , "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem "spring"
  # gem "spring-watcher-listen", "~> 2.0.0"
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
