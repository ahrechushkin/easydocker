# frozen_string_literal: true

require_relative "easydocker/version"
require_relative "providers/provider_base"
require_relative "providers/docker"
require_relative "providers/podman"

module EasyDocker
  class Error < StandardError; end

  @@provider = ENV['EASYDOCKER_PROVIDER'] || 'docker'

  def self.provider
    @@provider
  end

  def self.containers
    Object.const_get(@@provider.capitalize).new.containers
  end

  def self.images
    Object.const_get(@@provider.capitalize).new.images
  end

  def self.run(image, **options)
    Object.const_get(@@provider.capitalize).new.run(image, **options)
  end

end
