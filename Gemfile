source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'

# Use Puma as the app server
gem 'puma', '~> 4.3'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'mini_racer', '= 0.2.6', platforms: :ruby
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.8'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'factory_bot_rails', '~> 4.11.1'
  #for table selectors
  gem 'capybara_table'
  gem 'sqlite3'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Access an interactive console on exception pages or by calling 'console' (<%= console %>) anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :debug do
  gem 'debase'
  
end

gem "pg"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'webpacker'
gem 'react-rails'
gem 'jquery-rails'
#TODO: Why did I need to add these manually?
gem 'minitest', '= 5.12.2'
gem 'nokogiri', '= 1.10.4'
gem 'debase-ruby_core_source', '= 0.10.6'
gem 'ffi', '= 1.11.1'
gem 'ruby-debug-ide', '= 0.6.0'
gem 'uglifier-rails', '>= 3.2.0.rc2'
