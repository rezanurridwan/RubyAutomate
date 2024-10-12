Feature:


Background:
# Scenario: As a user I can add product to cart
Given I am on the login page
When I enter the username  "standard_user" and password "secret_sauce"
When I click button login
Then I am on homepage landing page and see the title "Products"
When I click the add to cart button for the product "Sauce Labs Bike Light" on the inventory page
Then I can see remove button product in inventory page "Sauce Labs Bike Light"

@tc02_ketiga
Scenario: [Data Table] As a User, I want to add to cart mutiple product
Given I have products as follows:
      | product_name             |
      | Sauce Labs Bike Light    |
      | Sauce Labs Fleece Jacket |
When I click the add to cart button for each products on the inventory page
Then I can see remove button for each products on the inventory page