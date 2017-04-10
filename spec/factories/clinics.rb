require "factory_girl"

FactoryGirl.define do
  factory :clinic do
    sequence :title { |n| "Clinic #{n}" }
    description "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    offered_at { 7.days.from_now }
  end
end
