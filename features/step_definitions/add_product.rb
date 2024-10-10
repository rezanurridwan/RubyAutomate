When('I click the add to cart button for the product {string} on the inventory page') do |string|
  find(:xpath, "//div[div/a/div[text()='#{string}']]//button[contains(text(),'Add to cart')]").click
end

Then('I can see remove button product {string}') do|string|
  find(:xpath, "//div[contains(@class, 'inventory_item')]//div[text()='#{string}']/ancestor::div[contains(@class, 'inventory_item')]//button[contains(text(), 'Remove')]").should be_visible
  sleep 4
end