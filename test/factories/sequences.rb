# frozen_string_literal: true
FactoryBot.define do
  sequence :first_name do |n|
  	"first_name#{n}"
  end
  sequence :last_name do |n|
  	"last_name#{n}"
  end
  sequence :email do |n|
    "email#{n}@example.com"
  end

  sequence :name do |n|
  	"task#{n}"
  end

  sequence :description do |n|
  	"description#{n}"
  end

  sequence :string do |n|
    "string#{n}"
  end
end
