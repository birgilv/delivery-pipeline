require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
  test "sign up a new user" do
    get signup_path
    assert_response :success

    post users_path, params: { user: { email: "new_user@example.com", password: "password123" } }
    follow_redirect!
    assert_response :success
    assert_select "p", "Welcome, new_user@example.com"
  end
end