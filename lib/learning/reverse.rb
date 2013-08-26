class Learning::Reverse
  def self.reverse(phrase)
    tokens = []
    phrase.split('').each do |token|
      tokens.unshift(token)
    end
    tokens.join
  end
end
