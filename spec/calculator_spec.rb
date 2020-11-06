# frozen_string_literal: true

require 'calculator'

RSpec.describe Calculator do
  describe '#solve' do
    it 'handles empty input correctly' do
      expect(Calculator.new('').solve).to eq ''
    end

    it 'ingores whitespaces' do
      expect(Calculator.new('   ').solve).to eq ''
    end

    it 'can read integers' do
      expect(Calculator.new('100644').solve).to eq '100644'
    end

    it 'can read floats'
    it 'can add two numbers' do
      expect(Calculator.new('1 + 1 ').solve).to eq '2'
    end
  end
end
