class Admin < ApplicationRecord
  before_save { self.name = email.downcase }
  VALID_NAME_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: { maximum: 255 },
    format: { with: VALID_NAME_REGEX },
    uniqueness: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
