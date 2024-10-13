Feature: 
@tc01_standard_user
Scenario: As user I can login into website with standard_user
Given I am on the login page
When I enter from data test for the username "VALID_USERNAME" and password "VALID_PASSWORD"
When I click button login in login page
Then I am on homepage landing page and see the title "Products"

@tc02_locked_user
Scenario: As user I can login into website with locked_user
Given I am on the login page
When I enter from data test for the username "LOCKED_USERNAME" and password "VALID_PASSWORD"
When I click button login in login page
Then I am on homepage page and see error validation "VALIDATION_LOCKED_USER"