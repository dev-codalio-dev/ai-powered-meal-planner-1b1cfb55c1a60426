# frozen_string_literal: true

class MealPlan < ApplicationRecord
  belongs_to :organization
  belongs_to :creator, class_name: "User"

  has_many :meal_plan_recipes, dependent: :destroy
  has_many :recipes, through: :meal_plan_recipes

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :end_date, comparison: { greater_than_or_equal_to: :start_date }

  rhino_owner :organization
  rhino_references [ :organization, :creator ]
end
