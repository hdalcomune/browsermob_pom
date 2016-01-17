class ProductDisplayPageVerticalPanel < BasePanel
  include PageObject

  CONTAINER_ID = 'verticalProsCarousel'
  MAX_DISPLAYED_PRODUCTS = 3

  def initialize_page
    super(CONTAINER_ID, MAX_DISPLAYED_PRODUCTS)
  end

end
