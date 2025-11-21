# frozen_string_literal: true

FactoryBot.define do
  factory :meal_plan do
    start_date { "2025-11-21" }
    end_date { "2025-11-21" }
    plan_details { "MyText" }
    organization { nil }
    creator { nil }
  end
end
