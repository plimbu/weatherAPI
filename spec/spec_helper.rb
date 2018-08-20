require 'json'
require 'rspec'
require 'httparty'
require 'dotenv'
require_relative '../weatherAPI.rb'
Dotenv.load(".env")



RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
