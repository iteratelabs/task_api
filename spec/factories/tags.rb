FactoryBot.define do
  factory :tag do
    sequence :description do |n|
      "tag#{n}"
    end
  end
end
