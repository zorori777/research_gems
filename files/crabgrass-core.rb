source 'https://rubygems.org'

# ensure github urls use https rather than insecure git protocol.
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


##
#  Core components
##

# Rails is the framework we use.
# use the 4.2 series including all security fixes
gem 'rails', '~> 4.2.7'

# Rake is rubys make... performing tasks
# locking in to latest major to fix API
gem 'rake', '~> 10.0', require: false

# Application preloader for faster start time
gem 'spring', group: :development

# translating strings for the user interface
# locking in to latest major to fix API
gem 'i18n', '~> 0.7'

# improved gem to access mysql database
# locking in to latest major to fix API
gem 'mysql2', '~> 0.3.18'

# parsing and generating JSON
# locking in to latest major to fix API
gem 'json', '~> 1.8'

# Markup language that uses indent to indicate nesting
# locking in to latest major to fix API
gem 'haml', '~> 4.0'
gem 'haml-rails', '~> 0.9.0'

# Extendet scriptable CSS language
# locking in to latest major to fix API
gem 'sass'

##
# Prototype - yes. we still use it.
# these will be replaced by jquery equivalents at some point:
##

# main part of prototype
# needs special branch for rails 4.2
gem 'prototype-rails', github: 'rails/prototype-rails', branch: '4.2'

# legacy helper for form_remote_for and link_to_remote
# there's only a 0.0.0 version out there it seems
gem 'prototype_legacy_helper', '0.0.0',
  github: 'rails/prototype_legacy_helper'

##
# Upgrade pending
##

# Full text search for the database
# thinking-sphinx version 3.1.4 has dropped support for some features
# with rails 3.2 but they should not affect us
# 3.1.3 prints warnings with latest sphinx:
# https://github.com/pat/thinking-sphinx/issues/882
gem 'thinking-sphinx', '3.1.4', require: 'thinking_sphinx'

#
# Use delayed job to postpone the delta processing
# latest version available. Stick to major release
gem 'ts-delayed-delta', '~> 2.0'

# Enhanced Tagging lib. Used to tag pages
gem 'acts-as-taggable-on', '~> 3.5'

# Page Caching has been removed from rails 4.
# migrate it and drop this.
gem 'actionpack-page_caching'

##
# Single use tools
##

# Bcrypt for has_secure_password
gem 'bcrypt', '~> 3.1.7'

# ?
# locking in to latest major to fix API
gem 'http_accept_language', '~> 2.0'

# Removes invalid UTF-8 characters from requests
# use the latest. No API that could change.
gem 'utf8-cleaner'

# Pagination for lists with a lot of items
# locking in to latest major to fix API
gem 'will_paginate', '~> 3.1'

# state-machine for requests
# locking in to latest major to fix API
gem 'aasm' , '~> 3.4'

# lists used for tasks and choices in votes so far
# continuation of the old standart rails plugin
# locking in to latest major to fix API, not really maintained though
gem 'acts_as_list', '~> 0.4'

# Check the format of email addresses against RFCs
# better maintained than validates_as_email
# locking in to latest major to fix API
gem 'validates_email_format_of', '~> 1.6'

##
## GEMS required, and compilation is required to install
##

# Formatting text input
# We extend this to resolve links locally -> GreenCloth
# locking in to latest major to fix API
gem 'RedCloth', '~> 4.2'

##
## required, included with crabgrass
##

# extension of the redcloth markup lang
gem 'greencloth', require: 'greencloth',
  path: 'vendor/gems/riseuplabs-greencloth-0.1'

# media upload post processing has it's own repo
# version is rather strict for now as api may still change.
gem 'crabgrass_media', '~> 0.1.1', require: 'media'

##
## not required, but a really good idea
##

# detect mime-types of uploaded files
#
gem 'mime-types', require: 'mime/types'

# process heavy tasks asynchronously
# 4.0 is most recent right now. fix major version.
gem 'delayed_job_active_record', '~> 4.0'

# delayed job runner as a deamon
gem 'daemons'

# unpack file uploads
# needs to be at least 1.2.1 to avoid directory traversal issues
gem 'rubyzip', '~> 1.2.1', require: false

# load new rubyzip, but with the old API.
# TODO: use the new zip api and remove gem zip-zip
gem 'zip-zip', require: 'zip'

##
# Environment specific
##

group :production do
  # js runtime needed to precompile assets
  # runs independendly - so no version restriction for now
  # TODO: check if we want this or nodejs
  gem 'therubyracer'
end

group :production, :development do
  # used to install crontab
  gem 'whenever', require: false
  # used to minify javascript
  gem 'uglifier', '>= 1.3.0', require: false
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  # needed for some rake tasks, but not generally.
  gem 'sdoc', require: false
end

group :test, :development do
  gem 'byebug'
end

group :test, :ci do

  ##
  ## TESTS
  ##

  gem 'factory_girl_rails'
  gem 'faker', '~> 1.0.0'

  gem 'minitest', require: false
  gem 'mocha', '~> 1.1', require: false
  #
  # mocha note: mocha must be loaded after the things it needs to patch.
  #             so, we skip the 'require' here, and do it later.
  #

  ##
  ## INTEGRATION TESTS
  ##

  gem 'capybara', require: false

  # Capybara driver with javascript capabilities using phantomjs
  # locked to major version for stable API
  gem 'poltergeist', '~> 1.5', require: false

  # Headless webkit browser for testing, fast and with javascript
  # Version newer than 1.8 is required by current poltergeist.
  gem 'phantomjs-binaries', '~> 2.1.1', require: false

  # The castle_gates tests are based on sqlite
  gem 'sqlite3'
end

gem 'bundler-audit'

