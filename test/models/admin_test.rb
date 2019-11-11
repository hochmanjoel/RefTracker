require 'test_helper'

class AdminTest < ActiveSupport::TestCase

  def setup
    @admin = Admin.new(name: "Example Admin", email: "user@example.com")
  end

  test "should be valid" do assert @adin.valid?
  end
end
