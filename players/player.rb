require './letter_frequencies'

class Player
  def name
    'Llama'
  end

  def take_turn(state, guesses)
    (LetterFrequency.by_frequency - guesses).first
  end
end
