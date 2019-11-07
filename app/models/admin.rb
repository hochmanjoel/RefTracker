class Admin < ApplicationRecord
  def setup
    @admin = Admin.new(email: "user@example.com")
  has_secure_password
end
