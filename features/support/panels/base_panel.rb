class BasePanel
  include PageObject

  def initialize_page(container_element_id, max_displayed_products)
    @container_element_id = container_element_id
    @max_displayed_products = max_displayed_products
  end

  label :recommendation_panel_header    do |page| page.container.label_element(:class => 'headerLabel') end
  unordered_list :recommendations       do |page| page.container.unordered_list_element(:id => 'carousel') end
  button :scroll_next                   do |page| page.container.span_element(:class => 'next').button_element end
  button :scroll_previous               do |page| page.container.span_element(:class => 'prev').button_element end
  label :header_title                   do |page| page.container.label_element(:class => 'headerLabel') end
  div :show_more                        do |page| page.container.div_element(:class => 'drp-link').link_element end

  def container
    if @container_element_id == 'prosPanel'
      @container ||= div_element(:class => @container_element_id)
    else
      @container ||= div_element(:id => @container_element_id)
    end
  end
end
