require 'rails_helper'

RSpec.describe Student, type: :model do
  context 'create student' do
    before(:each) do
      create(:student)
    end

    it { expect(Student.count).to eq(1) }
  end
end
