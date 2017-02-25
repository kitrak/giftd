class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, stretches: 20
  has_many :wants
  has_many :products, through: :wants

  validates :first_name, presence: true
end