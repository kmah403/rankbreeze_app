source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 6.0.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'sidekiq'
gem 'r_creds'
gem 'redis'
gem 'slim-rails'
gem 'xlog'
gem 'image_processing', '~> 1.2'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise'
gem 'devise_invitable'

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop'
  gem 'rubycritic'
  gem 'brakeman'
  gem 'bullet'
end

group :development, :test do
  gem 'dotenv'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
  gem 'pry-rails'
end

group :test do
  gem 'rspec-rails', '~> 4.0', '>= 4.0.1'
  gem 'rspec-sidekiq'
  gem 'vcr'
  gem 'fakeredis'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'database_cleaner'
  gem 'webmock'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
