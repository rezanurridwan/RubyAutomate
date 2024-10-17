Feature:

Background:
Given I am on the login page
When I enter the username "VALID_USERNAME" and password "PASSWORD"
When I click button login in login page
Then I am on homepage landing page and see the title "VALIDATION_TITLE_HOMEPAGE"

@Regression @AddProduct @tc01_add_product
Scenario: As a user I can add product to cart
Given I have products as product_name:
      | product_name          |
      | Sauce Labs Bike Light |
      | Sauce Labs Backpack   |
When I click the add to cart button for the product name on the inventory page
# Then I can see remove button product name in inventory page
# Examples:
# | product_name |
# |  Sauce Labs Backpack|
# |  Sauce Labs Bike Light |
