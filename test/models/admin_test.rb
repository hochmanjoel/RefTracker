require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  def setup
    @admin = Admin.new(name: "admin@example.com",
      password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @admin.valid?
  end

  test "name should be present" do
    @admin.name = "     "
    assert_not @admin.valid?
  end


  test "name should not be too long" do
    @admin.name = "a" * 244 + "@example.com"
    assert_not @admin.valid?
  end

  test "name validation should accept valid addresses" do
    valid_addresses = %w[admin@example.com admin@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @admin.name = valid_address
      assert @admin.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "name validation should reject invalid addresses" do
    invalid_addresses = %w[admin@example,com admin_at_foo.org admin.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @admin.name = invalid_address
      assert_not @admin.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "name addresses should be unique" do
    duplicate_admin = @admin.dup
    @admin.save
    assert_not duplicate_admin.valid?
  end

  test "password should be present (nonblank)" do
    @admin.password = @admin.password_confirmation = " " * 6
    assert_not @admin.valid?
  end

  test "password should have a minimum length" do
    @admin.password = @admin.password_confirmation = "a" * 5
    assert_not @admin.valid?
  end
end
