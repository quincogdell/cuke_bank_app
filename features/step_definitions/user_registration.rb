Given(/^an unregistered user name "(.*?)"$/) do |user_name|
  visit('/')
  @user_name = user_name
  click_on "Sign up"
end

When(/^Judy signs up for the site$/) do
  fill_in(:user_name, with: @user_name)
  click_on "Create Account"
end

Then(/^she should should have an account$/) do
  user = User.where(name: @user_name).first
  expect(user).to be_valid
end

Then(/^it should say "(.*?)"$/) do |welcome_message|
  expect(page).to have_content(welcome_message)
end


Given(/^an unregistered User name who has not provided a name$/) do
  visit('/')
  click_on "Sign up"
end

When(/^User signs up for the site$/) do
  click_on "Create Account"
end

Then(/^she should not have an account$/) do

end

# Then(/^she should not have an account$/) do |error_message|
Then(/^it has the error "(.*?)"$/) do |error_message|
  expect(page).to have_content(error_message)
end
