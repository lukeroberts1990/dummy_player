class Dictionary
  def self.word(char)
    File.read(File.join(File.dirname(__FILE__), 'dictionary', "#{$1.upcase} Words.csv")).split("\n")
  end

  def self.lookup(state)
    if state =~ /^([^_])/
      warn_level = $VERBOSE
      $VERBOSE = nil
      words($1).find do |word|
        Regexp.new('^'+state.gsub(/_/,'?')+'$').match(word)
      end
      $VERBOSE = warn_level
    end
  end
end
