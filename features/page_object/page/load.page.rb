class Page
  def login_page
  LoginPage.new
  end

  def inventory_page
  InventoryPage.new
  end

  def e2e_page
  CheckoutPage.new
  end
  
end