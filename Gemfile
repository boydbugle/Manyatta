source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

source 'https://rubygems.org'

  gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
  gem 'pg', '~> 0.18'
  gem 'puma', '~> 3.0'
  gem 'bootstrap-sass', '~> 3.3.6'
  gem 'sass-rails', '~> 5.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.2'
  gem 'jquery-rails'
  gem 'turbolinks', '~> 5'
  gem 'devise', '~> 4.2', '>= 4.2.1'
  # gem 'jbuilder', '~> 2.5'
  gem 'cancancan', '~> 1.16'
  gem 'paperclip', '~> 5.1'
  gem 'omniauth-oauth2', '~> 1.4.0'
  gem "omniauth-google-oauth2", '~> 0.4.1'
  gem 'omniauth-facebook', '~> 4.0.0'
  gem 'ratyrate'


  group :development, :test do
    gem 'byebug', platform: :mri
    gem 'dotenv-rails', '~> 2.2.1'
    gem 'rspec-rails'
    gem 'launchy'
    gem 'pry'
    gem 'shoulda-matchers'
    gem 'simplecov', require: false
    gem 'capybara'
  end

  group :development do
    gem 'annotate'
    gem 'web-console'
    gem 'listen', '~> 3.0.5'
    gem 'spring'
    gem 'spring-watcher-listen', '~> 2.0.0'
  end

  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
  ruby "2.2.3"
