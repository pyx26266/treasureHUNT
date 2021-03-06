class User < ApplicationRecord
  before_save { self.email = email.downcase }
	validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :college,  presence: true, length: { maximum: 50 }
  validates :phone,  presence: true, length: { maximum: 10 }
  has_secure_password
end
