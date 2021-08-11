class Restaurant < ApplicationRecord
  AUTHORIZED_CATEGORIES = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: AUTHORIZED_CATEGORIES }
end
