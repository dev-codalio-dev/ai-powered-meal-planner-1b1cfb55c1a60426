# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :organization
  belongs_to :creator, class_name: "User"

  has_many :meal_plan_recipes, dependent: :destroy
  has_many :meal_plans, through: :meal_plan_recipes
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients

  has_one_attached :image

  validates :name, presence: true
  validates :prep_time_minutes, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :cook_time_minutes, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true

  rhino_owner :organization
  rhino_references [ :organization, :creator ]
end
