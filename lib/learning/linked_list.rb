#naive implementation of LinkedList
# could also be done with Struct
class Learning::LinkedList
  attr_accessor :value, :next_node
  def initialize(value, next_node) 
    @value = value
    @next_node = next_node
  end

  def self.find_list_size(list, i=1)
    if list.next_node == nil || list.next_node.class != Learning::LinkedList
      i
    else
      find_list_size(list.next_node, i += 1) 
    end
  end

  def self.recursive_print(list)
    p list.value
    recursive_print(list.next_node) unless list.next_node == nil
  end
end

#Sample
# create the head of the list
# list = LinkedList.new("imma head", nil)

# i = 0
# 10.times do
#   i += 1
#   list = LinkedList.new(i, list)
# end

# LinkedList.recursive_print(list) 

