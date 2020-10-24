source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/CraftAcademy/api_el_gaucho_nyheter.git" }

ruby "2.5.1"

gem "rails", "~> 6.0.3", ">= 6.0.3.3"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "webpacker", "~> 4.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"
gem "rack-cors", require: "rack/cors"
gem "bootsnap", ">= 1.4.2", require: false
gem 'active_model_serializers'
gem 'devise_token_auth'
gem 'aws-sdk-s3'
gem 'stripe-rails'
gem 'geocoder'
gem 'rufo'

group :development, :test do
  gem "rspec-rails"
  gem "shoulda-matchers"
  gem "factory_bot_rails"
  gem "pry-rails"
  gem "pry-byebug"
  gem 'coveralls',  require:  false
  gem 'stripe-ruby-mock'
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end
