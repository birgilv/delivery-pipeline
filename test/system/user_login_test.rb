require 'application_system_test_case'

class UserLoginTest < ApplicationSystemTestCase
  test "user can log in" do
    visit login_path
    fill_in "Email", with: "existing_user@example.com"
    fill_in "Password", with: "password123"
    click_on "Log in"
    assert_text "Welcome back, existing_user@example.com"
  end
end
