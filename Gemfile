source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'pg'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.1'
gem 'rails-patterns', '>= 0.5.0'
gem 'sass-rails', '~> 5.0'
gem 'sidekiq'
gem 'uglifier', '>= 1.3.0'
gem 'wisper', '~> 2.0.0'
gem 'wisper-sidekiq'

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry-rails'
  gem 'pry-remote'
  gem 'rubocop', '0.54', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper'
  gem 'database_cleaner'
  gem 'rspec-rails', '~> 3.7'
  gem 'rspec-tapas', '~> 0.1.0'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'webmock'
  gem 'wisper-rspec', require: false
end
