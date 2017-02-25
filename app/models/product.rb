class Product < ApplicationRecord
  has_many :wants
  has_many :users, through: :wants
end