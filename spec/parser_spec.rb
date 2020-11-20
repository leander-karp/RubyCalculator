require 'parser'

RSpec.describe Parser do
  describe '#parse' do
    it 'produces tokens' do
      expected_tokens = [' ']

      expect(Parser.parse(' ')).to eq expected_tokens
    end
  end
end
