class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, uniqueness: true, presence: { case_sensitive: false }       
  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: { minimum: 3, maximum: 30  }
  validates :password, presence: true, length: { in: Devise.password_length }, format: { with: /\A
    (?=.{8,})      
    (?=.*\d)         
    (?=.*[a-z])      
    (?=.*[A-Z])  
    (?=.*[[:^alnum:]]) /x }, confirmation: true, on: :create 
end
