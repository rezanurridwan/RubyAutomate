Feature:

@pertemuansatu
Scenario: As user I can login into website
Given I am on the login page
When I enter the "username" and "password"
When I click button login
Then I am on homepage landing page and see the title "Products"
