class Pet < ApplicationRecord
  enum status: [:available, :pending, :sold]

  belongs_to :category
  validates :status, inclusion: { in: Pet.statuses.keys }
end
