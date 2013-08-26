class Learning::Arrays
  def self.dupes(array)
    dupe = array.each do |x|
      return x if array.count(x) > 1
    end
    dupe.size > 1 ? "" : dupe
  end
end