source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'carrierwave', '~> 1.0'
gem 'carrierwave-aws', '~> 1.1'
gem 'cocoon', '~> 1.2', '>= 1.2.9'
gem 'coffee-rails', '~> 4.2'
gem 'devise', '~> 4.2', '>= 4.2.1'
gem 'dotenv-rails', '~> 2.2'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'
gem 'friendly_id', '~> 5.1.0'
gem 'gritter', '~> 1.2'
gem 'hmaster0_view_tool', '~> 0.1.1'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'kaminari', '~> 1.0', '>= 1.0.1'
gem 'mini_magick', '~> 4.7'
gem 'petergate', '~> 1.7'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.2'
gem 'redis', '~> 3.3', '>= 3.3.3'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'twitter', '~> 6.1'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-byebug'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'rubocop', '~> 0.47.1', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
