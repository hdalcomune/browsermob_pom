class ProductDisplayPageHorizontalPanel < BasePanel
  include PageObject

  CONTAINER_ID = 'horizontalProsCarousel'
  MAX_DISPLAYED_PRODUCTS = 5

  def initialize_page
    super(CONTAINER_ID, MAX_DISPLAYED_PRODUCTS)
  end

end
