source 'https://rubygems.org'
# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'rails', '3.2.1'
gem 'devise'
gem 'carrierwave'
gem 'mini_magick'
gem 'jquery-rails'
gem 'json'
gem 'fog'
gem 'excon'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
#gemas para el branch de development
group :development, :test do
  gem 'sqlite3', '1.3.6'
  #gem 'rspec-rails'
  gem 'rack', '~> 1.4.1'
end

group :staging, :production do
  #gem 'thin'
  gem 'heroku'
  gem "pg"
  gem 'devise'
  #gem 'airbrake'
  gem 'uglifier', '>= 1.0.3'
  #gem 'thor'
end
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'
