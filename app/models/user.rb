class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validate :username, presence: true, uniqueness: true
  validate :email, presence: true, uniqueness: true
  validate :encrypted_password, presence: true
  has_many :posts, dependent: :destroy
end
