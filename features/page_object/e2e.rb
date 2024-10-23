require_relative "page/base_page"

class CheckoutPage < SitePrism::Page
  include BasePage

  # Element Btn Cart
element :btn_cart, :xpath, "//a[@class='shopping_cart_link']"
element :loc_title_cart_page, :xpath, "//span[@class='title']"
element :loc_btn_checkout, :xpath, "//button[@id='checkout']"
element :loc_text_CheckoutYourInformation, :xpath, "//span[@class='title']"
element :loc_firstName, :xpath, "//*[@placeholder='First Name']"
element :loc_lastName, :xpath, "//*[@placeholder='Last Name']"
element :loc_postCode, :xpath, "//*[@id='postal-code']"
element :loc_btn_submit, :xpath, "//input[@type='submit']"
element :loc_title_order, :xpath, "//span[@class='title']"
element :loc_btn_finish, :xpath, "//*[@id='finish']"
element :loc_title_thankyou_order, :xpath, "//*[@class='complete-header']"
element :loc_val_error_checkout_form_step_1, :xpath, "//h3[@data-test='error']"

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
def field_firstName(firstName)
  loc_firstName.set(firstName)
end
def field_lastName(lastName)
  loc_lastName.set(lastName)
end
def field_postCode(postCode)
  loc_postCode.set(postCode)
end
def btn_submit
  loc_btn_submit.click
end
def title_order
  loc_title_order.text
end
def btn_finish
loc_btn_finish.click
end
def title_thankyou_order
loc_title_thankyou_order.text
end
def val_error_checkout_form_step_1
  loc_val_error_checkout_form_step_1.text
end



end

    