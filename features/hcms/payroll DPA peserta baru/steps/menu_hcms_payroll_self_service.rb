When('I navigate to the HCMS Payroll Self Service menu') do
    @page.login_page_hcms.btn_menu_HC_payroll.click
    sleep 5
    expect(page).to have_no_css('.z-modal-mask', wait: 5) 
end
  Then('I should see the title {string}') do |string|
    expect(@page.login_page_hcms.title_dashboard_payroll_self_service).to have_content(string)
end

