# frozen_string_literal: true

FactoryBot.define do
  factory :manager do
    first_name
    last_name
    password { generate :string }
    email
  end
end
