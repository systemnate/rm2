require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#flash_helper' do
    it 'returns the appropriate bootstrap class when level is notice' do
      expect(helper.flash_class(:notice)).to eq('alert alert-primary')
    end

    it 'returns the appropriate bootstrap class when level is success' do
      expect(helper.flash_class(:success)).to eq('alert alert-success')
    end

    it 'returns the appropriate bootstrap class when level is error' do
      expect(helper.flash_class(:error)).to eq('alert alert-danger')
    end

    it 'returns the appropriate bootstrap class when level is alert' do
      expect(helper.flash_class(:alert)).to eq('alert alert-danger')
    end
  end
end

