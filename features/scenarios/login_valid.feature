Feature: Valid Login

@Valid_login @tc01_login_valid
Scenario: As user I can login into website
Given I am on the login page
When I enter the username "VALID_USERNAME" and password "PASSWORD"
# When I enter from data test for the username "VALID_USERNAME" and password "VALID_PASSWORD" //data test
When I click button login in login page
Then I am on homepage landing page and see the title "VALIDASI_TITLE_HOMEPAGE"