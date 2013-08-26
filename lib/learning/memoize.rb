class Learning::Memoize
  def initialize(value, options = {})
    @options = options
    memoize(value)
  end
  
  def value
    @value
  end

  def value=(value)
    memoize(value)
  end

  private

  def memoize(value)
    if @options && @options[:memoize] == false
      @value = value
    else
      @value ||= value
    end
  end
end
