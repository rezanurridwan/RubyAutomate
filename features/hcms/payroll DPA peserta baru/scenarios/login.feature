Feature: Login
    As a user
    I want to log in to the application
    So that I can access my account
    
    @loginhcms
    Scenario: Successful login
        Given I am on the login page hcms
        When I enter username "hcms_username" and password "hcms_password"
        Then I click button login
        Then I should be redirected to the dashboard
        Then I click button close popup
        Then I click button close popup2