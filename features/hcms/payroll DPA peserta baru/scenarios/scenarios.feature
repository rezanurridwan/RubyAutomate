Feature: Payroll DPA Peserta Baru
  As a user of the HCMS Payroll DPA Peserta Baru
  I want to be able to access the payroll DPA peserta baru features
  So that I can manage my payroll information efficiently

  Background:
    Given I am on the login page hcms
    When I enter username "hcms_username" and password "hcms_password"
    Then I click button login
    Then I should be redirected to the dashboard
    Then I click button close popup
    Then I click button close popup2
    When I navigate to the HCMS Payroll Self Service menu
    Then I should see the title "HC Payroll Self Service Menus"

  @tc01_open_task_request @payroll_dpa_peserta_baru
  Scenario: Open Task Request
    When I click on the button Task Request
    Then I should see the title of Task Request "Task Request"
    When I click the button New
    Then I should see the title of Submit New Task Request "Submit New Request"
    @tc_002
    @M01_S06_T10_01_Cek_Penambahan_Task_Request_PAY_DPA_Perserta_Baru_Report_pada_Responsibility_HC_Payroll_Self_Service @payroll_dpa_peserta_baru
    Scenario: Check Addition of Task Request PAY DPA Peserta Baru Report on HC Payroll Self Service Responsibility
      When I click on the button Task Request
      Then I should see the title of Task Request "Task Request"
      When I click the button New
      Then I should see the title of Submit New Task Request "Submit New Request"
      When I click task request name
      When I click the button Find
      When I choose PAY DPA Peserta Baru
      Then I see the title of pop up "PAY DPA Peserta Baru Report" Task Parameter

      @tc_003
      @M01_S06_T10_02_Cek_Parameter_Company_pada_Task_Request_PAY_DPA_Perserta_Baru_Report
      @payroll_dpa_peserta_baru
    Scenario: Check Addition of Task Request PAY DPA Peserta Baru Report on HC Payroll Self Service Responsibility
      When I click on the button Task Request
      Then I should see the title of Task Request "Task Request"
      When I click the button New
      Then I should see the title of Submit New Task Request "Submit New Request"
      When I click task request name
      When I entering task request name
      When I click the button Find
      When I choose PAY DPA Peserta Baru
      Then I see the title of pop up "PAY DPA Peserta Baru Report" Task Parameter
      When I click field input company
      When I entering company name
      When I click button find company
      When I select company name FIF
      When I click field input branch 
      When I entering branch name
      When I click button find branch
      When I select branch name HEADOFFICE - Head Office
      When I click field employee number
      When I entering employee number 
      When I click button find employee number
      When I select employee number 67665
      When I entering periode date '01-Apr-2024'
      And I click button OK
      And I click button Schedule 
      And I choose Immediately 
      And I click button OK Schedule
      And I click button Submit
      And I click button Yes Confirmed 
      And I click button Yes Submited
      And I check the status of task request when I input date saubmited
      And I click button find 
      # Then I should see the status of task request "Completed"