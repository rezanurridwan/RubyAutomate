Feature: Validation form checkout step one

Background:
Given I am on the login page
When I enter the username "VALID_USERNAME" and password "PASSWORD"
When I click button login in login page
Then I am on homepage landing page and see the title "VALIDATION_TITLE_HOMEPAGE"
Given I have products as product_name for checkout
      | product_name          |
      | Sauce Labs Bike Light |
      | Sauce Labs Backpack   |
When I click the add to cart button for the product checkout name on the inventory page
When I click cart button for the product on the inventory page
Then I see the text "Your Cart" in cart page
When I click button checkout
Then I see the text "Checkout: Your Information" in checkout page


@Regression @form_checout_step_1 @tc01_input_null_all_field_in_form_checkout
Scenario: User do not enters all field in in the checkout form
When User in checkout page without entering first name "", last name "", postcal code "" in the form
And I click button continue
Then the form should be show validation error message "Error: First Name is required"

@Regression @form_checout_step_1 @tc02_input_null_firstName_in_form_checkout
Scenario:  User enters null for first name data in the checkout form
When User in checkout page without entering first name "", last name "Liandi", postcal code "44181" in the form
And I click button continue
Then the form should be show validation error message "Error: First Name is required"

@Regression @form_checout_step_1 @tc03_input_null_lastName_in_form_checkout
Scenario:  User enters null for last name data in the checkout form
When User in checkout page without entering first name "Jonathan", last name "", postcal code "44181" in the form
And I click button continue
Then the form should be show validation error message "Error: Last Name is required"

@Regression @form_checout_step_1 @tc04_input_null_lastName_in_form_checkout
Scenario:  User enters null for postcode data in the checkout form
When User in checkout page without entering first name "Jonathan", last name "Liandi", postcal code "" in the form
And I click button continue
Then the form should be show validation error message "Error: Postal Code is required"

@Regression @form_checout_step_1 @tc05_back_to_order_page
Scenario:  User don't checkout the item and wanna go back to summary order page
When I in checkout page and see the text "Checkout: Your Information" in checkout page
And  I click button back to order summary
Then I see the text "Your Cart" in cart page
