source 'https://rubygems.org'
source 'https://rails-assets.org'

ruby '2.1.2'

gem 'rails', '4.1.4'
gem 'rails_config'

# Rails 4.1 upgrade to remove
gem 'active_model_serializers'
gem 'protected_attributes'

# Databases
gem 'activerecord-postgres-hstore'
gem 'activerecord-postgres-earthdistance'
gem 'annotate', '>=2.5.0'
gem 'pg'

# Authentication & APIs
gem 'cancan'
gem 'oauth'
gem 'devise', '~> 3.2.4'
gem 'omniauth'
gem 'omniauth-withings', github: 'jdjkelly/omniauth-withings'
gem 'omniauth-fitbit'
gem 'omniauth-foursquare', '~> 1.0.0'
gem 'withings', github: 'jdjkelly/withings'
gem 'fitgem'
gem 'foursquare2'
gem 'symmetric-encryption'

# Assets
gem 'sass-rails',   '~> 4.0.0'
gem 'compass-rails', '~> 1.1.3'
gem 'coffee-rails'
gem 'uglifier', '>= 1.0.3'
gem 'bootstrap-sass', '~> 3.1.1'
gem 'turbolinks'
gem 'jquery-turbolinks', '~> 1.0.0'
gem 'jquery-rails'
gem 'font-awesome-rails'

group :development do
  gem 'rspec-rails'
  gem 'guard',            require: false
  gem 'guard-rspec',      require: false
  gem 'guard-bundler',    require: false
  gem 'guard-livereload', require: false
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'foreman'
  gem 'quiet_assets'
  gem 'pry-rails'
  gem 'thin'
  gem 'ruby_gntp'
  gem 'rack-livereload'
  gem 'parallel_tests'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'growl'
  gem 'rb-fsevent'
  gem 'minitest' # https://github.com/thoughtbot/shoulda-matchers/issues/408
  gem 'shoulda-matchers'
  gem 'fabrication'
  gem 'database_cleaner'
  gem 'faker'
  gem 'email_spec'
  gem 'webmock'
  gem 'fuubar'
end

group :production do
  gem 'newrelic_rpm'
  gem 'rails_12factor' # Heroku requires this
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
