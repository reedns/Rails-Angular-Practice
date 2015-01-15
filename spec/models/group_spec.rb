require 'rails_helper'

RSpec.describe Group, :type => :model do
  describe 'when name is not present' do
    group = Group.new(name: ' ')
    it { should_not be_valid }
  end
end
