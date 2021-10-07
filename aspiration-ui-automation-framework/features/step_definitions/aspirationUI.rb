Before('@TC_Aspiration_UI') do
  $filter_run_once ||= false  # have to define a variable before we can reference its value
  if !$filter_run_once
    @@aspiration_home_page = Pages::AspirationUIHomePage.new
  end
  $filter_run_once = true
end

Before('@TC_Aspiration_UI') do
  @@driver = Driver.new()
end

After('@TC_Aspiration_UI') do
  @@driver.quit
end

Given("The web page aspiration.com to the user") do
  # binding.pry
    @@driver.get($param["aspirationURL"])
end

When("The User goes to Spend & Save link at the top of the home page") do
    @@aspiration_home_page.click_on_spend_save
end

Then("Verify that the user finds two card products, Aspiration and Aspiration Plus") do
    expect(@@aspiration_home_page.is_aspriration_card_displayed).to eql true
    expect(@@aspiration_home_page.is_aspiration_plus_card_displayed).to eql true
end


Given(/^The aspiration.com products page to the user$/) do
  @@driver.get($param["aspirationURL"]+'/our-products')
end

When(/^The User clicks on Aspiration product$/) do
  @@aspiration_home_page.click_get_aspiration_btn
  #@@driver.find_element(:xpath, "//button[text()='Get Aspiration']").click
  sleep(5)
end

Then(/^Verify that when you click Get Aspiration - A modal containing an input field for an email address to sign up appears$/) do
  @@aspiration_home_page.check_email_field($param["email"])
  sleep(5)
end

Given(/^The Aspiration Plus Prodcuts Page to the user$/) do
  @@driver.get($param["aspirationURL"]+'/our-products')
end

When(/^The User clicks on Aspiration Plus product$/) do
  @@aspiration_home_page.click_get_aspiration_plus_btn
  sleep(5)
end

Then(/^Verify that when you click Get Aspiration Plus - A modal containing an input field for an email address to sign up appears$/) do
  
  expect(@@aspiration_home_page.check_yearly_text('$71.88')).to eql true
  expect(@@aspiration_home_page.check_monthly_text('$7.99')).to eql true
end