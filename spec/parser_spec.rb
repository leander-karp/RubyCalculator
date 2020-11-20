require 'parser'

RSpec.describe Parser do
  describe '#parse' do
    it 'generates whitespace tokens' do
      expected_tokens = [' ']

      expect(Parser.parse(' ')).to eq expected_tokens
    end

    it 'generates integers' do
      expected_tokens = [' ', ' ', '1000']

      expect(Parser.parse('  1000')).to eq expected_tokens
    end
  end
end
