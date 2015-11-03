class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :spaces
  has_many :reservations

  # validates :first_name, :last_name, :user_name, :password, presence: true
  # validates :username, :email, uniqueness: true
  # validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/, message: "invalid email" }
  # validates :password, length: { minimum: 8}, unless: "password.nil?"
  # validates :password, presence: true, if: "id.nil?"
end

