class Category < ApplicationRecord
  has_many :pets
  validates :name, presence: true, allow_nil: false
end
