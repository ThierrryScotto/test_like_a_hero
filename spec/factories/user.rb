FactoryBot.define do
  factory :user do
    nickname { FFfaker::Lorem.word }
    level { FFfaker::Random.rand(1..99) }
    kind { %i[knight wizard].sample }
  end
end