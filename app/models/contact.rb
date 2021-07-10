class Contact < ApplicationRecord
  # Validations
  validates :first_name, presence: true, format: { with: /\A[a-zA-z ]+\z/i }
  validates :last_name, presence: true, format: { with: /\A[a-zA-z ]+\z/i }
  validates :email, presence: true, format: { with: /\A\S+@\S+\z/, message: :email_format }, uniqueness: true
  validates :message, presence: true
  validates :phone_number, length: { minimum: 10, maximum: 15 }, format: { with: /\A\+?\d+$\z/ }
end