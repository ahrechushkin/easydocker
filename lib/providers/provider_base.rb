class ProviderBase
  require 'json'
  attr_reader :base_cmd

  def containers    
    JSON.parse`#{base_cmd} ps -a --format json`
  end

  def container(id)
    JSON.parse`#{base_cmd} inspect #{id}`
  end

  def images
    JSON.parse`#{base_cmd} images --format json`
  end

  def run(image, **options)
    cmd = "#{base_cmd} run #{options.map{|k,v| "--#{k} #{v}"}.join(' ')} #{image}"
    puts cmd
    `#{cmd}`
  end
end