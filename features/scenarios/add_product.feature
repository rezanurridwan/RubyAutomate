Feature:

@AddProduct @tc01_add_product
Scenario: As a user I can add product to cart
Given I am on the login page
When I enter the username  "standard_user" and password "secret_sauce"
When I click button login
Then I am on homepage landing page and see the title "Products"
When I click the add to cart button for the product "Sauce Labs Backpack" on the inventory page
Then I can see remove button product "Sauce Labs Backpack"
