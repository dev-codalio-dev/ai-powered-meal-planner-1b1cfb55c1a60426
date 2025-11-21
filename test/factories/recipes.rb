# frozen_string_literal: true

FactoryBot.define do
  factory :recipe do
    name { "MyString" }
    instructions { "MyText" }
    prep_time_minutes { 1 }
    cook_time_minutes { 1 }
    cuisine_type { "MyString" }
    dietary_restrictions { "MyString" }
    organization { nil }
    creator { nil }
  end
end
