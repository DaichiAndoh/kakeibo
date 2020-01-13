class Income < ApplicationRecord
  belongs_to :user
  
  validates :price, presence: true
  validates :category, presence: true
  validates :memo, length: { maximum: 255 }
end
