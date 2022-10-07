class Docker < ProviderBase
  def initialize
    @base_cmd = 'docker'
  end
end