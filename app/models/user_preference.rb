# frozen_string_literal: true

class UserPreference < ApplicationRecord
  belongs_to :organization
  belongs_to :pref_user, class_name: "User"

  validates :pref_user_id, uniqueness: true # A user should only have one preference set

  rhino_owner :organization
  rhino_references [ :organization, :pref_user ]
end
