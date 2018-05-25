source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'autoprefixer-rails'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
gem 'bcrypt4', '~> 4.1.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password

gem 'bootstrap-sass'
gem 'haml-rails', '~> 1.0.0'
gem 'sass-rails', '~> 5.0'
gem 'simple_form', '~> 3.1'
gem 'uglifier', '>= 1.3.0'
gem 'font-awesome-rails'
gem 'draper', '3.0.0'
gem 'bower-rails', '~> 0.10.0'
gem 'ckeditor'
gem 'liquid'
gem 'osom-tables', git: 'https://github.com/jobready/osom-tables'
gem 'record_tag_helper', '~> 1.0'
gem 'bootstrap-datepicker-rails'
gem 'bootstrap-datetimepicker-rails'
gem 'select2-rails'
gem 'rabl-rails'
gem 'rails-html-sanitizer'

gem 'will_paginate', '~> 3.1.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'dotenv-rails'
gem 'coffee-rails'
gem 'clipboard-rails'
# gem 'paperclip'
#
gem 'carrierwave'
# gem 'mini_magick'

gem 'react-rails'
gem 'responders'
gem "jquery-slick-rails"
gem "breadcrumbs_on_rails"

group :development, :test, :staging do
  gem 'safety_mailer'
  gem 'simplecov'
  gem 'rspec-activemodel-mocks'
  gem 'factory_girl_rails'
  gem 'faker'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.0'
  gem 'rails-controller-testing'
  gem 'shoulda'
  gem 'better_errors'
  gem 'spring'
  gem 'timecop'
  gem 'webmock'
  gem 'gemsurance'
  gem 'climate_control'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
