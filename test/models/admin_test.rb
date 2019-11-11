require 'test_helper'

class AdminTest < ActiveSupport::TestCase

  def setup
    @admin = Admin.new(name: "Example Admin", email: "user@example.com")
  end

  test "should be valid" do
    assert @admin.valid?
  end

  test "name should be present" do
    @admin.name = "     "
    assert_not @admin.valid?
  end
end
