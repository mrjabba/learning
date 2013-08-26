require 'learning/memoize'

class TestMemoize < MiniTest::Unit::TestCase
  def test_memoize_value_same_as_input
    expected = "orange"
    assert_equal(expected, Learning::Memoize.new(expected).value)
  end

  def test_memoize_original_value_does_not_change
    expected = "pear"

    subject = Learning::Memoize.new(expected)
    subject.value = "grape"
    assert_equal(expected, subject.value)
  end

  def test_memoize_original_value_does_change
    #contrived example, doesn't memoize
    expected = "kiwi"
    original = "apple"

    subject = Learning::Memoize.new(original, {:memoize => false})
    assert_equal(original, subject.value)
    subject.value = expected
    assert_equal(expected, subject.value)
  end
end
