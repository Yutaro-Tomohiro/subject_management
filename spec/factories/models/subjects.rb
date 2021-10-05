FactoryBot.define do
  factory :subject do
    name { '機械工学1' }
    required { true }
    semester { :the_first }
    yaer { 1 }
  end
end
