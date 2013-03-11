class Dictionary
  def self.words(char)
    File.read(File.join(File.dirname(__FILE__), 'dictionary', "#{char.upcase} Words.csv")).split("\n")
  end

  def self.lookup(state)
    if state[0] != '_'
      warn_level = $VERBOSE
      $VERBOSE = nil
      matches = words(state[0]).reject do |word|
        !Regexp.new('^'+state.gsub(/_/,'[a-z]')+'$').match(word)
      end
      $VERBOSE = warn_level
      matches
    end
  end
end
