require 'simplecov'
SimpleCov.start 'rails'
SimpleCov.command_name 'Unit Tests'

ENV['RAILS_ENV'] ||= 'test'
require_relative "../config/environment"
require "rails/test_help"

# Simple test coverage
SimpleCov.start do
  add_filter '/test/'
  add_filter '/vendor/'

  add_group 'Models', 'app/models'
  add_group 'Controllers', 'app/controllers'
  add_group 'Mailers', 'app/mailers'
  add_group 'Helpers', 'app/helper'
end

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: 1)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end