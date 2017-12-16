source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'turbolinks'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bcrypt', '~> 3.1.7'
gem 'activeadmin'
gem 'devise', ' ~> 3.2'
gem 'bonsai-elasticsearch-rails'
gem "paperclip", "~> 5.0.0"
gem 'whenever', :require => false

gem 'rails_12factor'
gem 'rspec'
gem 'rspec-rails'
gem 'shoulda-matchers'
gem 'factory_girl_rails'
gem 'database_cleaner'
gem 'faker', branch: 'master' , git: 'https://github.com/stympy/faker.git'

# Access an IRB console on exception pages or by using <%= console %> in views
gem 'web-console', '~> 2.0'
gem "better_errors"
# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring'
ruby "2.3.1"
