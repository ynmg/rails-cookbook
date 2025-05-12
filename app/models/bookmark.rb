class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :recipe_id, presence: true, uniqueness: { scope: :category_id, message: "is already in the category" }
  validates :comment, length: { minimum: 6 }
end
