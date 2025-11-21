# frozen_string_literal: true

FactoryBot.define do
  factory :recipe_ingredient do
    quantity { "MyString" }
    unit { "MyString" }
    recipe { nil }
    ingredient { nil }
  end
end
