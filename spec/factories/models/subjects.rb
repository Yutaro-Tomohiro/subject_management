FactoryBot.define do
  factory :subject do
    name { '機械工学1' }
    required { true }
    semester { 'the_first' }
    year { 1 }

    trait :other do
      name { '機械工学2' }
      semester { 'the_second' }
      year { 2 }
    end

    trait :other2 do
      name { '自然科学論' }
      required { false }
    end
  end
end
