When('I click on the button Task Request') do
    # @page.payroll_self_service_page.scroll_to_task_request
    @page.payroll_self_service_page.click_task_request
end

Then('I should see the title of Task Request {string}') do |string|
    expect(@page.payroll_self_service_page.get_title_task_request).to have_content(string)
end

When('I click the button New') do
    @page.payroll_self_service_page.click_btn_new_task_request
end

Then('I should see the title of Submit New Task Request {string}') do |string|
    expect(@page.payroll_self_service_page.get_title_dashboard_new_task_request).to have_content(string)
end

When('I click task request name') do 
    @page.payroll_self_service_page.click_task_request_name
    sleep 3
end
When('I entering task request name') do
    @page.payroll_self_service_page.input_task_runner_name.set('PAY DPA Peserta Baru')
end

When('I click the button Find') do
    @page.payroll_self_service_page.click_btn_find
end

When('I choose PAY DPA Peserta Baru') do
    @page.payroll_self_service_page.choose_pay_dpa_peserta_baru
    sleep 3
end

Then('I see the title of pop up {string} Task Parameter') do |string|
  expect(@page.payroll_self_service_page.get_title_task_parameter).to have_content(string)
end

When('I click field input company') do
  @page.payroll_self_service_page.click_field_input_company
end
When('I entering company name') do
    @page.payroll_self_service_page.enter_field_input_company_name.set('FIF')
end
When('I click button find company') do
  @page.payroll_self_service_page.click_btn_find
  sleep 3
end

When('I select company name FIF') do
    @page.payroll_self_service_page.select_company_name.click
end

When('I click field input branch') do
  @page.payroll_self_service_page.click_field_input_branch
end
When('I entering branch name') do
@page.payroll_self_service_page.enter_field_input_branch_name.set('Head Office')
end
When('I click button find branch') do
    @page.payroll_self_service_page.click_btn_find_branch
    sleep 3
end
When('I select branch name HEADOFFICE - Head Office') do
    @page.payroll_self_service_page.get_select_branch_name.click
  end
When('I click field employee number') do
  @page.payroll_self_service_page.click_field_input_employee
end
When('I entering employee number') do
@page.payroll_self_service_page.enter_field_input_employee_name.set('67665')
end
When('I click button find employee number') do
  @page.payroll_self_service_page.click_btn_find_employee
    sleep 3
end
When('I select employee number {int}') do |int|
    @page.payroll_self_service_page.get_select_employee_name.click
end

When('I entering periode date {string}') do |string|
  @page.payroll_self_service_page.enter_field_input_periode_date.set(string)
end

When('I click button OK') do
    @page.payroll_self_service_page.click_btn_OK
    sleep 3
end
When('I click button Schedule') do 
    @page.payroll_self_service_page.click_btn_schedule
end
When('I choose Immediately') do 
    @page.payroll_self_service_page.click_radio_button_schedule
    sleep 3
end
When('I click button OK Schedule') do
@page.payroll_self_service_page.click_btn_ok_schedule
end

When('I click button Submit') do
@page.payroll_self_service_page.click_btn_submit
end
When('I click button Yes Confirmed') do
  @page.payroll_self_service_page.click_btn_yes_confirmed_submit
  sleep 3
end
When('I click button Yes Submited') do
  @page.payroll_self_service_page.click_btn_yes_submited
  sleep 3
end

When('I check the status of task request when I input date saubmited') do
  @page.payroll_self_service_page.entering_submited_date_to_find_report.set('01-May-2024')
  sleep 3
end
When('I click button find') do
@page.payroll_self_service_page.click_btn_find
end

Then('I should see the status of task request {string}') do |string|
  expect(@page.payroll_self_service_page.get_status_task_request).to have_content(string)
end













  