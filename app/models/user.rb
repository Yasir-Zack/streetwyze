# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: { minimum: 3, maximum: 30 }
  validates :password, length: { in: Devise.password_length }, format: { with: /\A
    (?=.*\d)
    (?=.*[a-z])
    (?=.*[A-Z])
    (?=.*[[:^alnum:]]) /x }, confirmation: true, on: :create
end
