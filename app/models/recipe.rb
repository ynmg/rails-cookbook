class Recipe < ApplicationRecord
  has_many :bookmarks

  validates :name, uniqueness: true, presence:true
  validates :description, presence: true
  validates :rating, numericality: true, inclusion: { in: 0..5, message: "must be between 0 and 5" }
end
