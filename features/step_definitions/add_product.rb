Given('I have products as product_name:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @list_product_name = table.hashes
end

When('I click the add to cart button for the product name on the inventory page') do
  @list_product_name.each do |row|
    product_name = row['product_name'] # Ambil nama produk dari hash
    @page.inventory_page.add_product(product_name) # Panggil metode dengan nama produk
  end
end


# # masih gagal ketika ingin menggunakan data ymal.
# Given('I have products as product_name:') do |table|
#   @list_product_name = table.hashes.map { |row| row['product_name'] }
# end

# When('I click the add to cart button for the product name on the inventory page') do
#   @list_product_name.each do |product_name_key|
#     product_name = get_data_test_single_env(product_name_key).first # Ambil nama produk dari array
#     @page.inventory_page.add_product_2(product_name) # Panggil metode dengan nama produk
#   end
# end
