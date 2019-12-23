# frozen_string_literal: true

if ENV['CI']
  require 'coveralls'
  Coveralls.wear!
else
  require 'simplecov'
  SimpleCov.start
end

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'factory_bot_rails'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include FactoryBot::Syntax::Methods
  include AuthHelper
  # Add more helper methods to be used by all tests here...
end

module SignInHelper
  def sign_in_as(admin)
    post session_path,
         params: { session: { password: admin.password, email: admin.email } }
  end
end

class ActionDispatch::IntegrationTest
  include SignInHelper
end
