source 'https://rubygems.org'
# ruby '2.0.0'

gem 'rails', '~> 4.1.14'

gem 'devise'
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'rack-canonical-host'

# Gems used only for assets and not required
# in production environments by default.
gem 'sass-rails', '~> 4.0.3'
gem 'coffee-rails', '~> 4.0.1'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'uglifier', '>= 1.0.3'
gem 'jquery-rails'
gem 'angularjs-rails'
gem 'haml-rails'

gem 'simple_form', git: 'https://github.com/plataformatec/simple_form.git'
gem 'gravtastic'
gem 'font-awesome-sass'
gem 'sinatra', '>= 1.3.0', :require => nil
gem 'pundit'
gem 'kaminari'
gem 'bootstrap-kaminari-views'
gem 'rabl'
gem 'friendly_id', '~> 5.0.0'
gem 'obscenity'
gem 'workflow'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'paper_trail', '~> 3.0.3'
gem 'paperclip', '~> 4.1'
gem 'aws-sdk'
gem 'fog'

gem 'sitemap_generator'

gem 'jbuilder'
gem 'draper'
gem 'dalli'
gem 'pg_search'
gem 'thin'
gem 'quiet_assets'
gem 'guard-rspec'
gem 'guard-cucumber'
gem 'guard-livereload', require: false
gem 'annotate'
gem "better_errors"
gem "binding_of_caller"
gem 'spring'
gem "spring-commands-rspec"
gem "spring-commands-cucumber"
gem 'rspec-rails', '~> 3.0'
gem 'capybara'
gem 'capybara-email'
gem 'poltergeist'
gem 'faker'
gem 'factory_girl_rails', '~> 4.4.0'
gem 'launchy'
gem 'pry-rails'
gem 'debugger', :platforms => [:mingw_19, :ruby_19]
gem 'byebug', :platforms => [:mingw_20, :mingw_21, :ruby_20, :ruby_21]
gem 'pry-byebug', :platforms => [:mingw_20, :mingw_21, :ruby_20, :ruby_21]
gem 'database_cleaner'
gem 'cucumber-rails', :require => false
gem 'shoulda-matchers', require: false
gem 'timecop'
gem 'raygun4ruby'
gem 'newrelic_rpm'
gem 'unicorn'
gem 'pg'
gem 'rack-timeout'
gem 'rails_12factor'
