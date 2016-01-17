module Browser

	def self.setup_browser
		ENV['BROWSER'] = 'firefox' if ENV['BROWSER'].nil?
		browser_name = ENV['BROWSER'].downcase.to_sym

    if(browser_name == :chrome)
			browser = Selenium::WebDriver.for :chrome, proxy: proxy
    elsif(browser_name == :firefox)
			browser=Selenium::WebDriver.for :firefox, proxy: proxy
			#browser=Selenium::WebDriver.for :firefox, profile: proxy
		else
			browser=Selenium::WebDriver.for browser_name
		end
	end

	def self.proxy
		ExecutionEnvironment.proxy_enabled? ? Proxy.start_proxy.selenium_proxy(:http, :ssl) : false
	end

	def self.close_proxy
		Proxy.close_proxy
	end
end
