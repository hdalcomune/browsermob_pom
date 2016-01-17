class ProductDisplayPage
  include PageObject

  div :long_description, :id => 'longDescription'

  expected_element :long_description

  def recommendations_horizontal_panel
      @recommendations_horizontal_panel ||= ProductDisplayPageHorizontalPanel.new(@browser)
  end

  def recommendations_vertical_panel
      @recommendations_horizontal_panel ||= ProductDisplayPageVerticalPanel.new(@browser)
  end

end
