Feature:
@checkout @tc01_checkout_with_valid_data
Scenario: As user I can checkout the product
Given I am on the login page
When I enter the username "standard_user" and password "secret_sauce"
When I click button login in login page
Then I am on homepage landing page and see the title "Products"
When I click the add to cart button for the product "Sauce Labs Backpack" on the inventory page
Then I can see remove button product "Sauce Labs Backpack" in inventory page
When I click cart button for the product "Sauce Labs Backpack" on the inventory page
Then I see the text "Your Cart" in cart page
When I click button checkout
Then I see the text "Checkout: Your Information" in checkout page
When I input the first name "John" and last name "Doe" and postal code "12345"
Then I click button continue
Then I see the text "Checkout: Overview" in checkout page
Then I click button finish
Then  I see the text "Thank you for your order" in checkout page


