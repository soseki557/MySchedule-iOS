source 'https://rubygems.org'

ruby '3.1.4'

gem 'fastlane'
gem 'linterbot'

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
