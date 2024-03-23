# frozen_string_literal: true

require "test_helper"

class Spyke::TestConnectionLambda < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Spyke::ConnectionLambda::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
