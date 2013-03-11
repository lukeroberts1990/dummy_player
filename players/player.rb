class Player
  def name
    "Llama"
  end

  def take_turn(state, guesses)
    return available_vowels(guesses).shuffle.pop if (new_game?(state) || vowel_count(state).eql?(0))
    return available_consonants(guesses).shuffle.pop if consonant_count(state) < vowel_count(state)
    return available_vowels(guesses).shuffle.pop if consonant_count(state) > vowel_count(state)
  end

  def available_vowels(guesses)
    vowels - guesses
  end

  def available_consonants(guesses)
    consonants - guesses
  end

  def new_game?(state)
    state.gsub('_', '').empty?
  end

  def vowel_count(state)
    state.gsub(/[^"#{vowels.join('')}"]/, '').length
  end

  def consonant_count(state)
    state.gsub(/[\_#{vowels.join('')}]/, '').length
  end

  def letters
    (vowels + consonants)
  end

  def vowels
    %w[a e i o u y]
  end

  def consonants
    %w[b c d f g h j k l m n p q r s t u v w x z]
  end
end
