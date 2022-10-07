# frozen_string_literal: true

require "test_helper"

class TestEasyDocker < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::EasyDocker::VERSION
  end

  def test_default_provider_name
    assert_equal 'docker', EasyDocker.provider
  end

  def test_containers
    refute_empty EasyDocker.containers
  end

end
