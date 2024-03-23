# frozen_string_literal: true

# External Libraries
require "version_gem"

# This Library
require_relative "connection_lambda/version"

module Spyke
  module ConnectionLambda
    class Error < StandardError; end
    # Your code goes here...
  end
end

Spyke::ConnectionLambda::Version.class_eval do
  extend VersionGem::Basic
end
