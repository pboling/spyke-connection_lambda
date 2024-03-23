# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"

Minitest::TestTask.create

begin
  require "rubocop/lts"
  Rubocop::Lts.install_tasks
rescue LoadError
  puts "Linting not available"
end

task default: %i[test rubocop_gradual]
