require 'test_helper'

class AdminsSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'Admin.count' do
      post admins_path, params: { admin: { name:  "",
                                         email: "user@invalid",
                                         password: "foo",
                                         password_confirmation: "bar" } }
    end
    assert_template 'admins/new'
    assert_select 'div#error_explanation>'
    assert_select 'div.field_with_errors>'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'Admin.count', 1 do
      post admins_path, params: { user: { name: "Example Admin",
        email: "user@example.com",
        password:              "password",
        password_confirmation: "password"
        }
      }
    end
    follow_redirect!
    assert_template 'admins/show'
  end
end
