require_relative "page/base_page"

class CheckoutPage < SitePrism::Page
  include BasePage

  # Element Btn Cart
  element :btn_cart, :xpath, "//a[@class='shopping_cart_link']"
element :loc_title_cart_page, :xpath, "//span[@class='title']"
element :loc_btn_checkout, :xpath, "//button[@id='checkout']"
element :loc_text_CheckoutYourInformation, :xpath, "//span[@class='title']"

  def btn_cart_item
    btn_cart.click
  end
def title_cart_page
  loc_title_cart_page.text
end
def btn_checkout
  loc_btn_checkout.click
end
def text_CheckoutYourInformation
  loc_text_CheckoutYourInformation.text
end


end

    