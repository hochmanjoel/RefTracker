class Admin < ApplicationRecord
  before_save { self.email = email.downcase }
  VALID_NAME_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_NAME_REGEX },
    uniqueness: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
