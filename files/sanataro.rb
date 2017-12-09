source 'http://rubygems.org'

###
### This file is for MRI
### Please see gemfiles/Gemfile.jruby for JRuby env
###

gem 'rails', '>= 4.1.1'

# Use unicorn as the web server
# gem 'unicorn'

group :development, :test do
  gem "rspec-rails", ">= 2.13.1"
  gem 'rspec-activemodel-mocks'
  gem 'rspec-collection_matchers'
  gem "launchy"
  gem "fabrication"
  unless ENV['TRAVIS']
    if RUBY_VERSION >= '2.0.0'
      gem 'byebug'
    else
      gem 'debugger'
    end
  end
  gem 'dotenv-rails'
end


group :test do
  gem "simplecov"
  gem 'spork'
  gem "cucumber-rails", require: false
  gem "capybara-webkit", '>= 1.0.0'
  gem "capybara", '>= 2.2.0'
  gem "growl"
  gem "rb-fsevent"
  gem "webrat"

  gem "database_cleaner", '>= 1.2.0'
  gem "guard-rspec"
  gem "guard-cucumber"
  gem "guard-spork"

  gem "minitest"
end

group :production do
  gem "therubyracer", '>= 0.11.4'
  gem 'libv8', '>= 3.11.8.12'
  gem 'redis-rails'
end

platforms :ruby do
  gem "mysql2"
  gem 'sqlite3'
  gem 'pg'
end

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem "i18n"

gem "haml", '>= 4.0.2'

gem 'haml-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails', '>= 5.0.0'
gem 'settingslogic'
gem 'memoist'

# currently twitter bootstrap 3 is not supported in Sanataro
gem 'twitter-bootstrap-rails', '>= 2.2.8', '< 3'

gem 'rails_emoji'
gem 'jbuilder'
gem 'underscore-rails'

gem 'doorkeeper', '>= 0.7.1'

gem 'rails-observers'

## for database cleaner and cucumber
gem 'connection_pool'

gem 'responders'
