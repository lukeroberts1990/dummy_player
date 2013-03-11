require_relative  './letter_frequencies'
require_relative  './dictionary'

class Player
  def name
    'Llama'
  end

  def most_common_value(a)
    a.group_by do |e|
      e
    end.values.max_by(&:size).first
  end

  def take_turn(state, guesses)
    if state[0] == '_'
      (LetterFrequency.by_frequency - guesses).first
    else
      most_common_value((Dictionary.lookup(state).join('').chars.to_a - guesses))
    end
  end
end
