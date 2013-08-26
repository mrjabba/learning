require 'learning/arrays'

class TestArrays < MiniTest::Unit::TestCase
  def test_dupes
    assert_equal("oranges", Learning::Arrays.dupes(%w(apples oranges bananas oranges)))
    assert_equal("foo bar", Learning::Arrays.dupes(["this","that", "foo bar", "whatever", "foo bar"]))
    assert_equal("", Learning::Arrays.dupes(%w(bees bears cats dogs)))
  end
end
