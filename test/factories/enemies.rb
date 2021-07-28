FactoryBot.define do
  factory :enemy do
    name { FFfaker::Lorem.word }
    power_base { FFaker::Random.rand(1..9999) }
    power_step { FFaker::Random.rand(1..9999) }
    level { FFaker::Random.rand(1..99) }
    kind { %q[goblin orc demon dragon].sample }
  end
end
