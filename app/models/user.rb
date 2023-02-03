class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :email, :format => /@/
  validates :password_digest, presence: true
end
