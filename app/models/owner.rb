class Owner < ApplicationRecord
  def self.from_omniauth(auth)
    # Creates a new owner only if it doesn't exist
    where(email: auth.info.email).first_or_initialize do |owner|
      owner.name = auth.info.name
      owner.email = auth.info.email
    end
  end
end
