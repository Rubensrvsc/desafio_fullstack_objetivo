require 'rails_helper'

RSpec.describe User, type: :model do
  context 'create user' do
    before(:each) do
      create(:user)
    end

    it { expect(User.count).to eq(1) }
  end
end
