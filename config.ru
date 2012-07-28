$:.unshift File.expand_path('../lib', __FILE__)
require 'bundler'
Bundler.require
require 'formatter'
Formatter::App.set :root, File.expand_path('../', __FILE__)
run Formatter::App
