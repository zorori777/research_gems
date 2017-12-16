source "https://rubygems.org"

ruby IO.read(File.expand_path("#{File.dirname(__FILE__)}/.ruby-version")).strip

gem "devise"
gem "devise-i18n"
gem "failbot_rails"
gem "faraday-http-cache"
gem "figaro"
gem "jquery-rails"
gem "octicons_helper"
gem "octokit"
gem "omniauth-github"
gem "pg"
gem "puma"
gem "rails"
gem "sassc-rails"
gem "sitemap_generator"
gem "turbolinks"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem "uglifier"

gem "byebug", platform: :mri
gem "awesome_print"
gem "listen"
gem "rubocop"
gem "spring"
gem "spring-watcher-listen"
gem "web-console"
gem "connection_pool"
gem "dalli"
gem "heroku-deflater"
gem "kgio"
gem "memcachier"
gem "rack-cache"
gem "codecov", require: false
gem "vcr", require: false
