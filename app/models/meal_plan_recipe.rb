# frozen_string_literal: true

class MealPlanRecipe < ApplicationRecord
  belongs_to :meal_plan
  belongs_to :recipe

  validates :meal_plan_id, uniqueness: { scope: :recipe_id, message: "This recipe is already part of the meal plan." }

  rhino_owner :meal_plan
  rhino_references [ :meal_plan, :recipe ]
end
