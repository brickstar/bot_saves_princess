require 'spec_helper'

describe 'navigator' do
  before(:each) do
    @navigator = Navigator.new
  end

  context 'initializer' do
    it 'exists' do
      expect(@navigator).to be_a(Navigator)
    end
  end
end
