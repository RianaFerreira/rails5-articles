source 'https://rubygems.org'

ruby '2.3.3'

# Load the environment variables
gem 'dotenv-rails', :groups => [:development, :test]

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster.
# Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Exception reporting for application https://github.com/bugsnag/bugsnag-ruby
# See dashboard: https://app.bugsnag.com/private-22/rails/errors?openModal=project-access
gem 'bugsnag'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  # Identify problematic DB queries https://github.com/flyerhzm/bullet
  gem 'bullet'
  # Find unused routes https://github.com/amatsuda/traceroute
  gem 'traceroute', '~> 0.5.0'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %>
  # anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Check for security vulnerabilities https://github.com/presidentbeef/brakeman
  gem 'brakeman', require: false
end

group :test do
  # Testing framework https://github.com/rspec/rspec-rails
  gem 'rspec-rails'
  # Report on test coverage https://github.com/colszowka/simplecov
  gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
