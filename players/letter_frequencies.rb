class LetterFrequency

  FREQUENCIES = {
    'a' => 8.2,
    'b' => 1.5,
    'c' => 2.8,
    'd' => 4.3,
    'e' => 12.7,
    'f' => 2.2,
    'g' => 2.0,
    'h' => 6.1,
    'i' => 7.0,
    'j' => 0.2,
    'k' => 0.8,
    'l' => 4.0,
    'm' => 2.4,
    'n' => 6.7,
    'o' => 7.5,
    'p' => 1.9,
    'q' => 0.1,
    'r' => 6.0,
    's' => 6.3,
    't' => 9.0,
    'u' => 2.8,
    'v' => 1.0,
    'w' => 2.4,
    'x' => 0.2,
    'y' => 2.0,
    'z' => 0.1
  }

  def self.freq_for_letter(letter)
    FREQUENCIES[letter]
  end

  def self.by_frequency
    FREQUENCIES.sort_by {|key, value| value}.map(&:first).reverse
  end
end
