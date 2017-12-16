source 'https://rubygems.org'

gem 'rails', '3.2.22.2'

# mongoid
gem 'mongoid', '2.8.1'

# push notification
gem 'eventmachine'
gem 'pusher'
gem 'socky-client', '>= 0.5.0.beta1'

# html
gem 'haml-rails'
gem 'sass-rails'
gem 'compass-rails'
gem "execjs"
gem 'therubyracer', :platform => :ruby
gem 'uglifier', '>= 1.0.3'

# util
gem 'rest-client'
gem 'on_the_spot'
gem "uuidtools"
gem 'omniauth'
gem 'json'

gem "rails3-generators"
gem 'quiet_assets'

gem 'test-unit', '~> 3.0'
gem "rspec-rails"
gem "rspec-its"
gem 'rspec-collection_matchers'
gem 'rspec-activemodel-mocks'
gem 'rcov', :platforms => :ruby_18
gem 'simplecov', :platforms => :ruby_19
gem 'coveralls'
gem 'ci_reporter'

gem 'spork'
gem 'rb-fsevent'
gem 'guard-spork'
gem 'guard-rspec'
gem 'socky-server', '>= 0.5.0.beta1'
gem 'thin'
gem 'bson_ext'
gem 'newrelic_rpm'
gem 'airbrake'
gem 'warbler'

# FIXME: warbler does not recognize plugins' Gemfile
gem 'omniauth-twitter', '>= 0.0.14'
self.send(:eval, File.open(gemfile, 'r').read)
