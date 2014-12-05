require './fake_enumerable'

class Nums
  #include Enumerable
  include FakeEnumerable


  def initialize
    @data = [1, 3, 6]
  end

  def each
    #@data.each { |e| yield(e) }
    i = 0
    while i < @data.size
      yield @data[i]
      i += 1
    end
  end
end
