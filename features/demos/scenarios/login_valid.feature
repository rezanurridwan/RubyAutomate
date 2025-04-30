Feature: Valid Login

Background:
Given I am on the login page
When I enter the username "VALID_USERNAME" and password "PASSWORD"
When I click button login in login page

@Regression @Valid_login @tc01_login_valid
Scenario: As user I can login into website
# When I enter from data test for the username "VALID_USERNAME" and password "VALID_PASSWORD"
Then I am on homepage landing page and see the title "VALIDASI_TITLE_HOMEPAGE"

@Regression @Logout_user
Scenario: As user I can logout from website
When I click the strip bar in the left side
And I click logout menu
Then I am on the login page
And I am homepage login page see the url login