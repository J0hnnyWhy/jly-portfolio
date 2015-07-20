require 'rails_helper'

describe Experience do
  it {should validate_presence_of :description}
  it {should belong_to :skill}
end
it 'is private by default' do
  task = FactoryGirl.create(:task)
  task.public?.should eq false
end
