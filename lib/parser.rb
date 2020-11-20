class Parser
  def self.parse(expression)
    tokens = []
    current_token = ''
    expression.split('').each_with_index do |character, index|
      if '01'.include?(character)
        current_token += character
      else
        tokens.append(character)
      end

      if index + 1 >= expression.length && !current_token.empty?
        tokens.append(current_token)
      end
    end

    tokens
  end
end
