require 'learning/linked_list'

class TestLinkedList < MiniTest::Unit::TestCase
  def test_construction
    expected = "head"
    next_node = "next"
    actual = Learning::LinkedList.new(expected, next_node)
    assert_equal(expected, actual.value)
    assert_equal(next_node, actual.next_node)
  end

  def test_next
    list = Learning::LinkedList.new("head", "next")
    assert_equal(1, Learning::LinkedList.find_list_size(list))
    
    i = 0
    10.times do
      i += 1
      list = Learning::LinkedList.new(i, list)
    end

    assert_equal(11, Learning::LinkedList.find_list_size(list))
  end
end
