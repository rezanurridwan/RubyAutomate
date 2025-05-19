Feature: 
HCMS Payroll Self Service
As a user of the HCMS Payroll Self Service
I want to be able to access the payroll self-service features
So that I can manage my payroll information efficiently

Background:
    Given I am on the login page hcms
    When I enter username "hcms_username" and password "hcms_password"
    Then I click button login
    Then I should be redirected to the dashboard
    Then I click button close popup
    Then I click button close popup2

    @menu_hcms_payroll_self_service
    Scenario: Accessing Payroll Self Service Menu
    When I navigate to the HCMS Payroll Self Service menu
    Then I should see the title "HC Payroll Self Service Menus"

    @tc01_open_task_request
    Scenario: Open Task Request
    When I click on the button Task Request
    Then I should see the title "Task Request"
   