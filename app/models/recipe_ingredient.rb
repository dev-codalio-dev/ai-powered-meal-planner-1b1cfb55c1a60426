# frozen_string_literal: true

class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  validates :quantity, presence: true
  validates :recipe_id, uniqueness: { scope: :ingredient_id, message: "This ingredient is already added to the recipe." }

  rhino_owner :recipe
  rhino_references [ :recipe, :ingredient ]
end
