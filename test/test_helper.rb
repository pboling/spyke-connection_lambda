# frozen_string_literal: true

require "simplecov"
require "simplecov-lcov"
SimpleCov::Formatter::LcovFormatter.config do |c|
  c.report_with_single_file = true
  c.single_report_path = "coverage/lcov.info"
end
SimpleCov.formatter = SimpleCov::Formatter::LcovFormatter
SimpleCov.start do
  add_filter "test"
end

require "spyke"
require "minitest/autorun"
require "minitest/reporters"
require "mocha/minitest"
require "pry"

# Pretty colors
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "spyke/connection_lambda"

# Require support files
Dir[File.expand_path("support/**/*.rb", __dir__)].each { |f| require f }

require "minitest/autorun"
