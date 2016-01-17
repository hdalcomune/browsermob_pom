Given /^I visit the web site as a guest user$/ do
  visit(HomePage)
end

When(/^I navigate to PDP page that has recommendations$/) do
  @target_id = TestData.target_ids
  product_id = @target_id['site_member_product']['target_id'].sample
  ProductNavigator.navigate_to_product(@current_page, product_id)
  on(ProductDisplayPage)
end

Then(/^I should see a "([^"]*)" recommendation panel on pdp page$/) do |panel_position|
  @recommendation_panel = nil
  case panel_position
    when 'horizontal'
      @recommendation_panel = @current_page.recommendations_horizontal_panel
    when 'vertical'
      @recommendation_panel = @current_page.recommendations_vertical_panel
  end
  @current_page.wait_until(60, 'ERROR-ENV : Recommendation panel not displayed on the page') do
    @recommendation_panel.recommendations_element.visible?
  end
end
