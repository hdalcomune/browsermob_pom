# Available environment variables
# URL - Page to be tested
# PROXY - Set as true to start proxy
# PROXY_PATH - Inform the path were browsermob is installed
# MAC - "/opt/browsermob/bin/browsermob-proxy"
# WINDOWS - "c:\\browsermob-proxy\\bin\\browsermob-proxy.bat"

module ExecutionEnvironment
  extend self

  def url
  		raise "The environment variable URL was not defined in command line" if ENV['URL'].nil?
  		ENV['URL']
  end

  def proxy_enabled?
    ENV['PROXY'] == 'true' ? true : false
  end

  def proxy_path
    if ENV['PROXY_PATH']
      ENV['PROXY_PATH']
    else
      raise "Undefined path for Browsermob proxy"
    end
  end
end
