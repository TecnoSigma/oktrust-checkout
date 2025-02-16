# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.2.2'

gem 'bootsnap', require: false
gem 'importmap-rails'
gem 'jbuilder'
gem 'puma', '>= 5.0'
gem 'rails', '~> 7.1.3', '>= 7.1.3.2'
gem 'rails-healthcheck'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mswin mswin64 mingw x64_mingw jruby]

gem 'rest-client'

group :development, :test do
  gem 'debug', platforms: %i[mri mswin mswin64 mingw x64_mingw]

  gem 'dotenv'
  gem 'faker'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 6.0.0'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'selenium-webdriver'
  gem 'webdrivers'

  gem 'brakeman'
  gem 'rails-controller-testing'
  gem 'rubocop', require: false
  gem 'rubycritic'
end
