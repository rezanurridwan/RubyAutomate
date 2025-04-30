require_relative 'page/base_page'

class InventoryPage < SitePrism::Page
  include BasePage

  def add_product(product_name)
    loc_btn_add_product = "//div[div/a/div[text()='#{product_name}']]//button[contains(text(),'Add to cart')]"
    find(:xpath, loc_btn_add_product).click
    sleep 5
  end
  def remove_product(product_name)
    loc_remove_product = "//div[contains(@class, 'inventory_item')]//div[text()='#{product_name}']/ancestor::div[contains(@class, 'inventory_item')]//button[contains(text(), 'Remove')]"
    find(:xpath, loc_remove_product).should be_visible
  end



end