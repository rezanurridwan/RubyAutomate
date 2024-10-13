Feature:
# use backgroud to start before each every login step

  Background:
    Given I am on the login page
    When I enter the username "standard_user" and password "secret_sauce"
    When I click button login in login page
    Then I am on homepage landing page and see the title "Products"
 # menggunakan single outline

  @tc02_ketiga
  Scenario: [Examples] As a user I can add product to cart
    When I click the add to cart button for the product "<product_name>" on the inventory page
    Then I can see remove button product "<product_name>" in inventory page

    Examples:
      | product_name          |
      | Sauce Labs Bike Light |
      | Sauce Labs Backpack   |
# menggunakan multple ouline

  @tc03_ketiga
  Scenario: [Data Table] As a User, I want to add to cart mutiple product
    Given I have products as follows:
      | product_name          |
      | Sauce Labs Bike Light |
      | Sauce Labs Backpack   |
    When I click the add to cart button for each products on the inventory page
    Then I can see remove button for each products on the inventory page

  @tc04_ketiga
  Scenario: [Data Table] As a User, I want to add to cart mutiple product
    Given I have products as follows:
      | product_name           |
      | <product_name_example> |
    When I click the add to cart button for each products on the inventory page
    Then I can see remove button for each products on the inventory page

    Examples:
      | product_name_example  |
      | Sauce Labs Bike Light |
      | Sauce Labs Backpack   |
