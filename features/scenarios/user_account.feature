Feature: User Account For Login To Website

Background:
Given I am on the login page

@user_account @tc01_standard_user
Scenario: As user I can login into website with valid username and password
When I enter the username "VALID_USERNAME" and password "PASSWORD"
When I click button login in login page
Then I am on homepage landing page and see the title "VALIDATION_TITLE_HOMEPAGE"

@user_account @tc02_locked_user
Scenario: As user I cannot login into website
When I enter the username "LOCKED_USERNAME" and password "PASSWORD"
When I click button login in login page
Then I am on homepage landing page and see error validation "VALIDATION_LOCKED_USER"

@user_account @tc03_problem_user
Scenario: Account has already added product into cart
When I enter the username "PROBLEM_USERNAME" and password "PASSWORD"
When I click button login in login page

@user_account @tc04_error_user
Scenario: User cannot add or remove product
When I enter the username "ERROR_USERNAME" and password "PASSWORD"
When I click button login in login page

@user_account @tc05_visual_user
Scenario: As user I can login into website with visual_user
When I enter the username "VISUAL_USERNAME" and password "PASSWORD"
When I click button login in login page