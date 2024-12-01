class User < ApplicationRecord
  normalizes :email, with: ->(attribute) { attribute.strip.downcase }
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be in a valid email format"  }
end
