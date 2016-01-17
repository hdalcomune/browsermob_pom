require 'uri'

module ProductNavigator
  def self.navigate_to_product (page, product_id)
    host = URI(page.current_url).host
    url = "http://#{host}/shop/product/?ID=#{product_id}"
    page.navigate_to url
  end
end
