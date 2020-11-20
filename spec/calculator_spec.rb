# frozen_string_literal: true

require 'calculator'

RSpec.describe Calculator do
  describe '#solve' do
    it 'handles empty input correctly' do
      expect(Calculator.solve('')).to eq ''
    end

    it 'ingores whitespaces' do
      expect(Calculator.solve('   ')).to eq ''
    end

    it 'can read integers' do
      expect(Calculator.solve('  100644  ')).to eq '100644'
    end

    it 'can read floats'
    it 'can add two numbers' do
      expect(Calculator.solve('  1 + 1  ')).to eq '2'
    end

    it 'can add multiple numbers' do
      expect(Calculator.solve('1 + 1 + 1')).to eq '3'
    end
  end
end
