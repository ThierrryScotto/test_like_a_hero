require 'rails_helper'
RSpec.describe User do
  context 'User Confirmation...' do
    it 'is invalid if the level is not between 1 and 99' do
      let(:nickname) {FFaker::Name.first_name}
      kind = %i[knight, wizard].sample
      level = FFaker::Random.rand(100..9999)
      user = User.new(nickname: nickname, level: level, kind: kind)
      expect(user).to_not be_valid
    end
    
    it 'returns the correct hero title' do
      nickname = FFaker::Name.first_name
      kind = %i[knight, wizard].sample
      level = FFaker::Random.rand(100..9999)
      
      ser = User.create(nickname: nickname, level: level, kind: kind)
      expect(user.title).to eq("#{kind} #{nickname} ##{level}")
    end
  end
end