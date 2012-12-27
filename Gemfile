source :rubygems

# Allows easy switching between locally developed gems, and gems installed from rubygems.org
# See README for more info at: https://github.com/ndbroadbent/bundler_local_development
gem 'bundler_local_development', :group => :development, :require => false
begin
  require 'bundler_local_development'
  Bundler.development_gems = [/^ffcrm_/, /ransack/, 'fat_free_crm', 'crossroads_capistrano']
rescue LoadError
end

gem 'fat_free_crm', :github => 'fatfreecrm/fat_free_crm', :branch => :master

# Allow textile markup in emails and comments
gem 'RedCloth'

# Uncomment the database that you have configured in config/database.yml
# ----------------------------------------------------------------------
# gem 'mysql2', '0.3.10'
# gem 'sqlite3'
gem 'pg', '~> 0.13.2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platform => :ruby  # C Ruby (MRI) or Rubinius, but NOT Windows
  gem 'uglifier',     '>= 1.0.3'
end

gem 'turbo-sprockets-rails3'

group :development, :test do
  gem 'ruby-debug', :platform => :mri_18
  gem 'debugger',   :platform => :mri_19
end

group :development do
  gem 'thin'
  gem 'quiet_assets'
  gem "better_errors"
  gem "binding_of_caller"
end

# Gems used by Crossroads
#------------------------

# gem 'mingle4r',            :github => 'crossroads/mingle4r'
# gem 'ffcrm_mingle',        :github => 'fatfreecrm/ffcrm_mingle'

gem 'ffcrm_merge',         :github => 'fatfreecrm/ffcrm_merge'
gem 'ffcrm_service_hooks', :github => 'fatfreecrm/ffcrm_service_hooks'

gem 'formstack', '0.0.1'
gem 'ffcrm_crossroads',    :git => 'git@bitbucket.org:crossroadsIT/ffcrm_crossroads.git'

gem 'ffcrm_crossroads_formstack', :github => 'crossroads/ffcrm_crossroads_formstack'

gem 'ffcrm_meta_search',   :github => 'crossroads/ffcrm_meta_search'

gem 'ffcrm_authlogic_api', :github => 'crossroads/ffcrm_authlogic_api'

gem 'ffcrm_calendar', :git => 'git@bitbucket.org:crossroadsIT/ffcrm_calendar.git'

gem 'ffcrm_lookup_field', :github => 'fatfreecrm/ffcrm_lookup_field'


gem 'hoptoad_notifier'
gem 'whenever', '~> 0.7.0'
gem 'crossroads_capistrano', :github => 'crossroads/crossroads_capistrano', :group => :development
gem 'rails-erd', :group => :development

gem 'newrelic_rpm'
gem 'cache_digests'

group :production, :staging do
  gem 'soap4r',            :github => 'tribalvibes/soap4r-spox'
  gem 'crowd-crossroads',  :github => 'crossroads/crowd'
  gem 'crowd_rails',       :github => 'crossroads/crowd_rails'
  gem 'ffcrm_crowd',       :github => 'fatfreecrm/ffcrm_crowd'
end
