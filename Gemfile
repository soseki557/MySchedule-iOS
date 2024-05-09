source 'https://rubygems.org'

ruby '3.1.4'

gem 'fastlane'
gem 'checkstyle_filter-git'
gem 'saddler'
gem 'saddler-reporter-github'
gem 'swiftlint_translate_checkstyle_format'

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
