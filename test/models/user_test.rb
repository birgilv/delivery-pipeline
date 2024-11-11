require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without email" do
    user = User.new
    assert_not user.save, "Saved the user without an email"
  end

  test "should save user with valid attributes" do
    user = User.new(email: "test@example.com", password: "password123")
    assert user.save, "Failed to save the user with valid attributes"
  end
end
