ENV['RAILS_ENV'] ||= 'test'
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  setup do
    Note.destroy_all
    load "#{Rails.root}/db/seeds.rb"
  end

  teardown do
    ApplicationRecord.subclasses.each(&:destroy_all)
  end

  # Add more helper methods to be used by all tests here...
end
