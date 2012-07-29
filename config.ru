$:.unshift File.expand_path('../lib', __FILE__)
require 'bundler'
Bundler.require
require 'formatter'
Formatter::App.set :root, File.expand_path('../', __FILE__)
Formatter::App.set :scss, load_paths: [
  File.join(Bundler.load.specs.find { |s| s.name == 'bourbon' }.full_gem_path, 'app', 'assets', 'stylesheets')
]
run Formatter::App
