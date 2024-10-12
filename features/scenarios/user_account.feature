Feature: 
@tc01_standard_user
Scenario: As user I can login into website with standard_user
Given I am on the login page
When I enter the username  "standard_user" and password "secret_sauce"
When I click button login
Then I am on homepage landing page and see the title "Products"

@tc02_locked_user
Scenario: As user I can login into website with locked_user
Given I am on the login page
When I enter the username locked "locked_out_user" and password "secret_sauce"
When I click button login
Then I am on homepage landing page and see error validation  "Epic sadface: Sorry, this user has been locked out."