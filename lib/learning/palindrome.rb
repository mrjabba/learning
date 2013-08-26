class Learning::Palindrome
  def self.is_palindrome?(phrase)
    return false if phrase.nil? || phrase.empty?
    tokens = phrase.gsub(' ','').split('')
    tokens.each_with_index do |token, index|
      return false unless token == tokens[tokens.length-index-1]
    end
    true
  end
end
