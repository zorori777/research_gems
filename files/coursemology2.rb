source 'https://rubygems.org'

# For Windows devs
gem 'tzinfo-data', platforms: [:mswin, :mswin64]

# Lock down Bundle version as new versions will cause noisy
# changes in the Gemfile.lock file
gem 'bundler', '>= 1.10.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.0'

# Use PostgreSQL for the backend
gem 'pg', '>= 0.18.2'

# Schema Plus for some higher level database abstractions
gem 'schema_plus_columns'
gem 'schema_plus_indexes'
gem 'schema_plus_pg_indexes'
gem 'schema_plus_association_inverses', '>= 0.1.0'
gem 'schema_validations'
gem 'schema_monkey'
# Instance/Course settings
gem 'settings_on_rails'
# Manage read/unread status
gem 'unread'
# Extension for validating hostnames and domain names
gem 'validates_hostname'
# A Ruby state machine library
gem 'workflow'
# Add creator_id and updater_id attributes to models
gem 'activerecord-userstamp', github: 'lowjoel/activerecord-userstamp'
# Allow actions to be deferred until after a record is committed.
gem 'after_commit_action'
# Allow declaring the calculated attributes of a record
gem 'calculated_attributes', '>= 0.1.3'
# Baby Squeel as an SQL-like DSL
gem 'baby_squeel'
# For multiple table inheritance
#   TODO: Figure out breaking changes in v2 as polymorphism is not working correctly.
gem 'active_record-acts_as', github: 'jeremyyap/active_record-acts_as', branch: 'coursemology'
# Organise ActiveRecord model into a tree structure
gem 'edge'
# Create pretty URLs and work with human-friendly strings
gem 'friendly_id'

# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

gem 'webpacker'
# Internationalisation for JavaScript.
gem 'i18n-js', '>= 3.0.0.rc1'

# Routes from JavaScript
gem 'js-routes'

# Use jQuery as the JavaScript library
gem 'jquery-rails'
# Our Coursemology will be themed using Bootstrap
gem 'bootstrap-sass'
gem 'bootstrap-sass-extras', '>= 0.0.7', github: 'doabit/bootstrap-sass-extras'
gem 'autoprefixer-rails'
# Use font-awesome for icons
gem 'font-awesome-rails'
# HTML Pipeline and dependencies
gem 'html-pipeline'
gem 'sanitize'
gem 'rinku'
gem 'html-pipeline-rouge_filter'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Slim as the templating language
gem 'slim-rails'
# ejs for client-side templates
gem 'ejs'
# High Voltage for static pages
gem 'high_voltage'
# Paginator for Rails
gem 'kaminari'
# Work with Docker
gem 'docker-api'

# Spring speeds up development by keeping your application running in the background.
# Read more: https://github.com/rails/spring
gem 'spring', platforms: [:ruby]
gem 'listen', '~> 1.3.1'

# Gems to make development mode faster and less painful
gem 'rails-flog', require: 'flog'
gem 'wdm', '>= 0.0.3', platforms: [:mswin, :mswin64]

# Helps to prevent database slowdowns
gem 'lol_dba', require: false

# General cleanliness
gem 'traceroute', require: false

# bundle exec yardoc generates the API under doc/.
# Use yard stats --list-undoc to find what needs documenting.
gem 'yard', group: :doc
gem 'email_spec'
gem 'rspec-html-matchers'
gem 'should_not'
gem 'simplecov'
gem 'shoulda-matchers'

# Capybara for feature testing
gem 'capybara'
gem 'capybara-selenium'
gem 'chromedriver-helper'

# Make screen shots in tests, helps with the debugging of JavaScript tests.
gem 'capybara-screenshot'
# Use RSpec for Behaviour testing
gem 'rspec-rails'

# Factory Bot for factories
gem 'factory_bot_rails'

# Checks that all translations are used and defined
gem 'i18n-tasks', require: false

# Helps to prevent database consistency mistakes
gem 'consistency_fail', require: false

# Prevent N+1 queries.
gem 'bullet', '>= 4.14.9'

gem 'parallel_tests'

# Call 'byebug' anywhere in the code to stop execution and get a debugger console
gem 'byebug', platform: :mri
# Code Coverage reporters
gem 'codeclimate-test-reporter'
gem 'codecov', :require => false
gem 'rspec-retry'
# This is used only when producing Production assets. Deals with things like minifying JavaScript
# source files/image assets.
# Compress image assets
gem 'image_optim_rails'
# Puma will be our app server
gem 'puma'
# Multitenancy
gem 'acts_as_tenant'

# Internationalization
gem 'http_accept_language'

# User authentication
gem 'devise'
gem 'devise_masquerade'
gem 'devise-multi_email'

gem 'omniauth'
gem 'omniauth-facebook'

# Use cancancan for authorization
gem 'cancancan'
gem 'cancancan-baby_squeel', github: 'jeremyyap/cancancan-baby_squeel'

# Some helpers for structuring CSS/JavaScript
gem 'rails_utils', '>= 3.3.3'

# Themes for instances
gem 'themes_on_rails', '>= 0.3.1', github: 'Coursemology/themes_on_rails',
branch: 'cache-theme-templates'

# Forms made easy for Rails
gem 'simple_form'
gem 'simple_form-bootstrap', github: 'jeremyyap/simple_form-bootstrap'
# Dynamic nested forms
gem 'cocoon'
gem 'bootstrap3-datetimepicker-rails'
gem 'bootstrap-select-rails'
gem 'bootstrap_tokenfield_rails'
gem 'twitter-typeahead-rails'
gem 'summernote-rails'

# Using CarrierWave for file uploads
gem 'carrierwave'
# Generate sequential filenames
gem 'filename'
# Required by CarrierWave, for image resizing
gem 'mini_magick'
# Library for reading and writing zip files
gem 'rubyzip', require: 'zip'
# Manipulating XML files, needed for programming evaluation test report parsing.
gem 'nokogiri', '>= 1.8.1'

# Polyglot support
gem 'coursemology-polyglot', github: 'jeremyyap/polyglot'

# To assist with bulk inserts into database
gem 'activerecord-import', '>= 0.2.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'record_tag_helper'
gem 'rails-controller-testing'
