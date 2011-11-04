require "rubygems"

require "database_cleaner"
require "mongoid"
require "rspec"

Mongoid.configure do |config|
  name = "mongoid-message_test"
  config.master = Mongo::Connection.new.db(name)
end

require File.expand_path("../../lib/mongoid-message", __FILE__)
require File.expand_path("../models/user", __FILE__)

RSpec.configure do |c|
  c.before(:all) { DatabaseCleaner.strategy = :truncation }
  c.before(:each) { DatabaseCleaner.clean }
end
