Given('I have products as product_name for checkout') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @list_product_name = table.hashes
end
When('I click the add to cart button for the product checkout name on the inventory page') do
  @list_product_name.each do |row|
    product_name = row['product_name'] # Ambil nama produk dari hash
    @page.inventory_page.add_product(product_name) # Panggil metode dengan nama produk
  end
end
When('I click cart button for the product on the inventory page') do
  @page.e2e_page.btn_cart_item
end

Then('I see the text {string} in cart page') do |string|
  expect(@page.e2e_page.title_cart_page).to have_text(string)
end

When('I click button checkout') do
  @page.e2e_page.btn_checkout
end

Then('I see the text {string} in checkout page') do |string|
  expect(@page.e2e_page.text_CheckoutYourInformation).to have_text(string)
end

When('I input the first name {string} and last name {string} and postal code {string}') do |string, string2, string3|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I click button continue') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I click button finish') do
  pending # Write code here that turns the phrase above into concrete actions
end