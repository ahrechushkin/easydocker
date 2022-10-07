class Podman < ProviderBase
  def initialize
    @base_cmd = 'podman'
  end
end