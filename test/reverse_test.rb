require 'learning/reverse'

class TestReverse < MiniTest::Unit::TestCase
  def test_reverse
    phrase = "something"
    actual = Learning::Reverse.reverse(phrase)
    assert_equal(phrase.reverse, actual)
  end
end
