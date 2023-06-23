# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

gem 'bootsnap', require: false
gem 'carrierwave', '~> 2.2.4'
gem 'carrierwave-base64', '~> 2.10.0'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.5'
gem 'sqlite3', '~> 1.4'

group :development, :test do
  gem 'byebug'
  gem 'factory_bot_rails', '~> 6.2.0'
  gem 'rspec-rails', '~> 6.0.1'
end

group :development do
  gem 'listen', '~> 3.8.0'
  gem 'rubocop-rails', '~> 2.20.0'
  gem 'rubocop-rspec', '~> 2.22.0'
  gem 'spring', '~> 4.1.1'
  gem 'spring-watcher-listen', '~> 2.1.0'
end

group :test do
  gem 'database_cleaner', '~> 2.0.2'
  gem 'shoulda-matchers', '~> 5.3.0'
  gem 'webmock', '~> 3.18.1'
end
