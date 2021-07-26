require 'rails_helper'

RSpec.describe User, type: :model do
  context 'User Confirmation...' do
    let(:user) { build(:user, level: FFaker::Random.rand(100..9999)) }

    it 'is invalid if the level is not between 1 and 99' do
      expect(user).to_not be_valid
    end
    
    it 'returns the correct hero title' do
      nickname = FFaker::Name.first_name
      kind = %i[knight, wizard].sample
      level = FFaker::Random.rand(100..9999)
      
      user = User.create(nickname: nickname, level: level, kind: kind)
      expect(user.title).to eq("#{kind} #{nickname} ##{level}")
    end
  end
end
