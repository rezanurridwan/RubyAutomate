require_relative 'page/base_page'

class PayrollSelfServicePage < SitePrism::Page
  include BasePage
  element :title_task_request, :xpath, "//td[text()='Task Request']"
  element :btn_new_task_request, :xpath, "//td[text()=' New']" 
  element :title_dashboard_new_task_request, :xpath, "//td[text()='Submit New Request']"
  element :task_request_name, :xpath, "(//*[@class='z-bandbox-inp z-bandbox-readonly'])[2]"
  element :field_input_task_runner_name, :xpath, "(//input[@type='text' and contains(@class, 'z-textbox')])[3]"
  element :btn_find, :xpath, "//td[text()=' Find']"
  element :select_pay_dpa_peserta_baru, :xpath, "//div[text()='PAY DPA Peserta Baru Report']"
  element :title_task_parameter, :xpath, "//span[text()='PAY DPA Peserta Baru Report']"
  element :field_input_company, :xpath, "(//*[@class='z-bandbox-btn'])[5]"
  element :field_input_company_name, :xpath, "(//span[text()='Company']/ancestor::tr//input[@type='text'])[2]"
  element :btn_find_company, :xpath, "(//*[@class='z-button-cm'])[9]"
  element :select_company, :xpath, "//div[text()='FIF']"
  element :field_input_branch, :xpath, "(//*[@class='z-bandbox-btn'])[6]"
  element :field_input_branch_name, :xpath, "(//span[text()='Branch']/ancestor::tr//input[@type='text'])[2]"
  element :btn_find_branch, :xpath, "(//*[@class='z-button-cm'])[9]"
  element :select_branch, :xpath, "//div[text()='HEADOFFICE - Head Office']" 
  element :field_input_employee, :xpath, "(//*[@class='z-bandbox-btn'])[7]"
  element :field_input_employee_name, :xpath, "(//span[text()='Employee']/ancestor::tr//input[@type='text'])[2]"
  element :btn_find_employee, :xpath, "(//*[@class='z-button-cm'])[9]"
  element :select_employee_number, :xpath, "//*[text()='67665-BONITA PARDEDE']"
  element :field_input_periode_date, :xpath, "//*[@class='z-datebox-inp']"
  element :btn_ok, :xpath, "//*[text()=' OK']"
  element :btn_schedule, :xpath, "//*[text()='Schedule']"
  element :radio_button_schedule, :xpath, "(//label[text()='Immediately']/ancestor::span//input[@type='radio'])[1]"
  element :btn_OK_schedule, :xpath, "//*[text()=' OK']"
  element :btn_submit, :xpath, "//*[text()=' Submit']"
  element :btn_yes_confirmed_submit, :xpath, "//*[text()='Yes']"
  element :btn_yes_submited, :xpath, "//*[text()='Yes']"
  element :field_input_submited_date, :xpath, "//*[@class='z-datebox-inp']"
  element :btn_find_report, :xpath, "//*[text()=' Find']"
def click_task_request
  el = find(:xpath, "//div[text()=' Task Request']", visible: :all).click
end
def scroll_to_task_request
  page.execute_script('arguments[0].scrollIntoView(true);', scroll_to_task_request.native)
end
def get_title_task_request
  title_task_request.text
end
def click_btn_new_task_request
  btn_new_task_request.click
end
def get_title_dashboard_new_task_request
  title_dashboard_new_task_request.text
end
def click_task_request_name
  task_request_name.click
end
def input_task_runner_name 
  field_input_task_runner_name.click
end
def click_btn_find
  btn_find.click
end
def choose_pay_dpa_peserta_baru
  select_pay_dpa_peserta_baru.click
end
def get_title_task_parameter
  title_task_parameter.text
end
def click_field_input_company
  field_input_company.click
end
def enter_field_input_company_name
  field_input_company_name.click
end
def click_btn_find_company
  btn_find_company.click
end
def select_company_name
  select_company.click
end
def click_field_input_branch
  field_input_branch.click
end
def enter_field_input_branch_name
  field_input_branch_name.click
end
def click_btn_find_branch
btn_find_branch.click
end
def get_select_branch_name
  select_branch.click
end
def enter_field_input_employee_name
  field_input_employee_name.click
end
def click_btn_find_employee
  btn_find_employee.click
end
def click_field_input_employee
  field_input_employee.click
end
def get_select_employee_name
  select_employee_number.click
end
def enter_field_input_periode_date
  field_input_periode_date.click
end
def click_btn_OK
  btn_ok.click
end
def click_btn_schedule
  btn_schedule.click
end
def click_radio_button_schedule
  radio_button_schedule.click 
end
def click_btn_ok_schedule
  btn_OK_schedule.click
end
def click_btn_submit
  btn_submit.click
end
def click_btn_yes_confirmed_submit
  btn_yes_confirmed_submit.click
end
def click_btn_yes_submited
  btn_yes_submited.click
end
def entering_submited_date_to_find_report
  field_input_submited_date.click
end
def click_btn_find_report
  btn_find_report.click
end
def get_status_task_request
  xpath = "//tbody[@id='jVWFwn-rows']/tr[1]/td[7]//div"
  find(:xpath, xpath).text
end

end