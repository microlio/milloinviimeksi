Given /^a user named "(.*)" with password "(.*)" exists$/ do |name, password|
  @current_user = User.create!(
    :name => name,
    :password => password
  )
end

Given /^I am logged in as "(.*)"$/ do |name|
  @current_user = User.create!(
    :name => name,
    :password => 'generic'
  )

  # :create syntax for restful_authentication w/ aasm. Tweak as needed.
  # @current_user.activate! 

  visit "/session" 
  fill_in("name", :with => name) 
  fill_in("password", :with => 'generic') 
  click_button("Login")
  response.body.should =~ /You are logged in/m  
end