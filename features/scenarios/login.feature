Feature:
@Valid_login @tc01_login_valid
Scenario: As user I can login into website
Given I am on the login page
When I enter the "username" and "password"
When I click button login
Then I am on homepage landing page and see the title "Products"

@Invalid_login @tc02_login_invalid_with_username_null
Scenario: As user I can login into website
Given I am on the login page
When I enter the null "username" and valid "password"
When I click button login
Then I am see the error validation "Epic sadface: Username is required"
