class Proxy
  require 'browsermob/proxy'

  def self.start_proxy
      server = BrowserMob::Proxy::Server.new(ExecutionEnvironment.proxy_path, log: true, timeout: 30)
      server.start
      @proxy = server.create_proxy
      blacklist_rto
      @proxy
  end

  def self.blacklist_rto
    @proxy.blacklist(%r!http://.*/sdp/rto/request/recommendations!, 404)
  end

  def self.close_proxy
    raise "The proxy was not started." if @proxy.nil?
    @proxy.close
    @proxy = nil
  end
end
