class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :email, :format => /@/
  validates :password_digest, presence: true

  # Adds the following validation
  # 1.Password must be present when creating.
  # 2.Password length must be or equal to 72 bytes
  # 3.confirmation of password using password_confirmation
  has_secure_password
end
