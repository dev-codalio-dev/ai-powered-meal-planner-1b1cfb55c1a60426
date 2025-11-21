# frozen_string_literal: true

FactoryBot.define do
  factory :user_preference do
    dietary_restrictions { "MyString" }
    cuisine_preferences { "MyString" }
    organization { nil }
    pref_user { nil }
  end
end
