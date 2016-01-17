require 'selenium-webdriver'

Before do
  @browser=Browser.setup_browser
  @browser.manage.window.maximize
end

After do |scenario|
  if scenario.failed?
		@browser.save_screenshot "./#{Time.now.strftime("log/#{scenario.name}_%Y%m%d-%H%M%S")}.png"
		embed "./#{Time.now.strftime("log/#{scenario.name}_%Y%m%d-%H%M%S")}.png", 'image/png'
	end
  Browser.close_proxy if ExecutionEnvironment.proxy_enabled?
  @browser.close
end
