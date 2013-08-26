require 'learning/palindrome'

class TestPalindrome < MiniTest::Unit::TestCase
  def test_palindrome
    assert_equal(false, Learning::Palindrome.is_palindrome?(nil))
    assert_equal(false, Learning::Palindrome.is_palindrome?(""))
    assert_equal(false, Learning::Palindrome.is_palindrome?("notapalindrome"))
    assert_equal(false, Learning::Palindrome.is_palindrome?("zxyz"))
    assert_equal(true, Learning::Palindrome.is_palindrome?("zzz"))
    assert_equal(true, Learning::Palindrome.is_palindrome?("wow"))
    assert_equal(true, Learning::Palindrome.is_palindrome?("civic"))
    assert_equal(true, Learning::Palindrome.is_palindrome?("bird rib"))
  end
end
