# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../config/environment', __dir__)
require 'rails/test_help'
require 'minitest/spec'
require 'database_cleaner'

class ActiveSupport::TestCase
  extend Minitest::Spec::DSL

  def login(user)
    post sign_in_url, params: { session: { email: user.email } }
  end
end

class MiniTest::Spec
  include ActiveSupport::Testing::TimeHelpers
  include ActiveSupport::Testing::Assertions

  before :each do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end
end
