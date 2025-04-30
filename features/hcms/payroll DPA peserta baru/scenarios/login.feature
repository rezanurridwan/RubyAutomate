Feature: Login


    As a user
    I want to log in to the application
    So that I can access my account
    @loginhcms
    Scenario: Successful login
        Given I am on the login page hcms
        When I enter username "hcms_username" and password "hcms_password"
        Then I should be redirected to the dashboard
    
    Scenario: Unsuccessful login with invalid credentials
        Given I am on the login page
        When I enter invalid credentials
        Then I should see an error message
    
    Scenario: Unsuccessful login with empty fields
        Given I am on the login page
        When I leave the fields empty and submit
        Then I should see a validation error message